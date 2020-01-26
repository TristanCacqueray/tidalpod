# tidalpod

`tidalpod` runs [SuperCollider][supercollider] and [TidalCycles][tidal] in a container.
This is using the SuperCollider fedora [packages][sc-distgit] and [podenv][podenv]

## Usage

Start the environement by running:

```console
$ podenv
[emacs window appears]
```

Start `qjackctl` by presing `f1` and clicking the `start` green button.

Start `scide` super collider editor by pressing `f2`, and start super dirt by running:

```sclang
s.options.numBuffers = 1024 * 256;
s.options.memSize = 8192 * 32;
s.options.maxNodes = 1024 * 32;
s.options.numOutputBusChannels = 2;
s.options.numInputBusChannels = 2;
s.boot
SuperDirt.start

// Logs contains:
// SuperDirt: listening to Tidal on port 57120
```

Start tidal-haskell in emacs by pressing `M-x` `tidal-start-haskell`

Then play sounds by pressing `C-Return` on a channel.


[supercollider]: https://supercollider.github.io/
[tidal]: https://tidalcycles.org
[sc-distgit]: https://github.com/TristanCacqueray/supercollider-distgit
[podenv]: https://github.com/podenv/podenv
