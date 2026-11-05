# find the cow

A first-person night game for **05. It feels like Bubbles**. Somewhere in a dark meadow stands one cow. You have a phone flashlight and exactly one song of battery. Find her before the music stops.

**[Check the full album on Spotify](https://open.spotify.com/album/0kKQTn7KT5Bqjs0mutVxDv?si=2d006645b2314beb)**

## Play

- Desktop: WASD or arrows to walk, mouse to look, shift to run
- Phone: drag left to walk, drag right to look
- You get faster as the song runs out. Her eyes light up green in your beam.

## Files

- `index.html`: the whole game (three.js from a CDN)
- `song.mp3`: the track
- `supabase.sql`: the highscore table

## Highscores

The top 10 is stored in Supabase. Fill in `SUPABASE_URL` and `SUPABASE_KEY` (the public anon key) near the "highscores" section in `index.html`. Without them, the game keeps scores in the player's own browser.
