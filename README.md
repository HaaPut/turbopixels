## About 

This version of turbopixels code is almost exactly same as the original [implementation from Alex Levinshtein](http://www.cs.toronto.edu/~babalex/research.html) based on [[1]](#1).
All the minor modifications in the code were mostly done to get the code to compile on 64-bit linux (ubuntu 18.04 with Matlab 2019b). 
I haven't tested it on any other systems.


  #### Part of disclaimer from original readme: 
  The affinity function that is used in the code is simple and 
  is not sufficient to provide good results on all possible images. 
  The domain of the images affects the choice of the affinity function.


## Installation:

- clone this repository and move in the root directory
```bash
$ cd turbopixel
```
- The subdirectory 'lsmlib' needs to be added to matlab's path. This is done
in demo_superpixels.m, or you can do it manually by typing the following command into 
matlab command window
```matlab
>>> addpath('lsmlib');
````
- Run `make` to compile c implementations. To work, MEX needs to be properly configured. Ignore the warnings.
```matlab
>>> make;
```
- Run demo_superpixels.m to run turbopixels on sample `lizard.jpg` image provided.
``` matlab
>>> demo_superpixels;
```

## Examples:
In additions to `demo_superpixels` following superpixels may also be run as follows
> Getting `1500` superpixels without intermediate display

```matlab
img = im2double(imread('lizard.jpg'));
[phi,boundary,disp_img] = superpixels(img, 1500);
imshow(disp_img);
```
> Getting superpixels with an intermediate display every 5 timesteps

```matlab
img = im2double(imread('lizard.jpg'));
[phi,boundary,disp_img] = superpixels(img, 1500, 5);
imshow(disp_img);
```

## References
<a id="1">[1]</a> 
Levinshtein, Alex, et al. "Turbopixels: Fast superpixels using geometric flows." IEEE transactions on pattern analysis and machine intelligence 31.12 (2009): 2290-2297.

