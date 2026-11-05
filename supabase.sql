-- find the cow: highscore table
-- Run this once in Supabase: SQL Editor -> New query -> paste -> Run

create table if not exists public.scores (
  id         bigint generated always as identity primary key,
  name       text   not null check (char_length(btrim(name)) between 1 and 15),
  time       real   not null check (time >= 2 and time <= 90),
  created_at timestamptz not null default now()
);

alter table public.scores enable row level security;

-- everyone may read the list
create policy "scores are public"
  on public.scores for select
  to anon
  using (true);

-- everyone may add a score, within the game's limits; nobody may edit or delete via the website
create policy "anyone can add a score"
  on public.scores for insert
  to anon
  with check (char_length(btrim(name)) between 1 and 15 and time >= 2 and time <= 90);

create index if not exists scores_time_idx on public.scores (time);
