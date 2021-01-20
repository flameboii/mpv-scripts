# mpv-scripts
Scripts to solve problems mostly specific to my setup, setup on git for practice.
### ytdl2http
[ff2mpv](https://github.com/eastmarch/ff2mpv) this extension sends any URL to mpv from your web browser, after modifying its protocol to ytdl://.

This is handy for most usecases which would be handled by either `ytdl_hook.lua` or youtube-dl itself. But for any other direct media URLs like the ones found here https://jell.yfish.us, neither seem to be able to handle them through the appended ytdl:// protocol.

This script checks for the event `on_load_fail`, which is self-explanatory, tests if it's triggered by the relevant error, and feeds the URL back to mpv for playback after reverting the protocol back to http://.

Works fine for now, will try to improve the script for better error detection etc. if necessary.
