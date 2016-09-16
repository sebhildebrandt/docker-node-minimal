# docker-node-minimal

Tiny [Docker][docker-url] - [node.js][nodejs-url] image

This image is based on Michael Hart's [(mhart)][mhart-url] great [mhart/alpine-node][alpine-node-url] Image

## Main Purpose

The official [Docker][docker-url] [node][nodejs-url] image is about 650MB - which is quite huge. 
Michael Hart did a really great job to minimize the overhead of an node image down to 50 MB. 
His image is based on [Alpine Linux][alpine-url]. I just added a few things, i needed for my base images 
(git for some npm dependencies) and here is the result:

```
REPOSITORY                     TAG         SIZE
plusinnovations/node_minimal   latest      66.99 MB
mhart/alpine-node              latest      49.41 MB
node                           latest      652.8 MB
```


## Usage

In the [Dockerfile][dockerfile-url] and [package.json][package-url], you find code to improve the image build process: 
 
### Your app

Place your source code in the ./app directory. Starting point is ./app/index.js. If you have a different starting point, just modify it in your [package.json][package-url] ("start" script and "main")

### Dockerfile

Please feel free to modify the [Dockerfile][dockerfile-url]: here you can enable/disable installation of additional built tools in case that you have native dependencies (line 5 and 6).

### Building Your Image

Start building your image with

```
npm run built
```

If you want your own image name, just modify the [package.json][package-url] built script (line 9) like so:

```
  "scripts": {
  	...
  	"build": "docker build -t YOUR_IMAGE_NAME .",
    ...
  },
```

### Running Your New Container

As soon as your image is created, just run it:

```
docker run plusinnovations/node_minimal
```

## Comments

If you have ideas or comments, please do not hesitate to contact me.

Sincerely,

Sebastian Hildebrandt, [+innovations](http://www.plus-innovations.com)

## Credits

Written by Sebastian Hildebrandt [sebhildebrandt](https://github.com/sebhildebrandt)


## Copyright Information

Linux is a registered trademark of Linus Torvalds, Node.js is a trademark of Joyent Inc.,
Docker is a trademark of Docker, Inc., Alpine Linux is a trademark of Alpine Linux Development Team.
All other trademarks are the property of their respective owners.

## License [![MIT license][license-img]][license-url]

>The [`MIT`][license-url] License (MIT)
>
>Copyright &copy; 2016 Sebastian Hildebrandt, [+innovations](http://www.plus-innovations.com).
>
>Permission is hereby granted, free of charge, to any person obtaining a copy
>of this software and associated documentation files (the "Software"), to deal
>in the Software without restriction, including without limitation the rights
>to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
>copies of the Software, and to permit persons to whom the Software is
>furnished to do so, subject to the following conditions:
>
>The above copyright notice and this permission notice shall be included in
>all copies or substantial portions of the Software.
>
>THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
>IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
>FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
>AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
>LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
>OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
>THE SOFTWARE.
>
>Further details see [LICENSE](LICENSE) file.



[nodejs-url]: https://nodejs.org/en/
[docker-url]: https://www.docker.com/
[alpine-node-url]: https://github.com/mhart/alpine-node
[mhart-url]: https://github.com/mhart
[alpine-url]: https://alpinelinux.org

[license-url]: https://github.com/sebhildebrandt/docker-node-minimal/blob/master/LICENSE
[license-img]: https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square
[dockerfile-url]: https://github.com/sebhildebrandt/docker-node-minimal/blob/master/Dockerfile
[package-url]: https://github.com/sebhildebrandt/docker-node-minimal/blob/master/package.json
