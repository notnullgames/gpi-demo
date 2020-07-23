# gpi demo

I wanted to make love2d games with a pi-zero inisde a [gameboy case](http://retroflag.com/GPi-CASE.html).

I still need to update the code to properly use joystick. I enabled keys for testing.


## setup


I followed the instructions [here](http://wagnerstechtalk.com/gpi-quick-setup/) to install [retropie](https://retropie.org.uk/) and the [gpi patches](http://download.retroflag.com/Products/GPi_Case/GPi_Case_patch.zip).

After that I went into the menu and installed the optional "love package" then put a test love-file in `/home/pi/RetroPie/roms/love`.


## usage

Run `make` then one of these targets:

```
help                           show this help
run                            run the current project
clean                          delete all output files
build                          build ready-made distributables for .love, windows, and OSX
```

You will need `love` in your path.

On OSX, put this in your `~/.bashrc`:

```
alias love="open -a love"
```