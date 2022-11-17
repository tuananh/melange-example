devops-tools
============

Just an example of building base images, used for DevOps pipelines.

## Usage

- Start the dev container using `chainguard-images/sdk`.
- Generate keygen for `melange` to sign the packages. This will generate `melange.rsa` and `melange.rsa.pub`.
- Build the package(s).
- Build the image with `apko`.

```sh
make dev-container
melange keygen
melange build --arch x86_64 --signing-key melange.rsa cosign.yaml
melange build --arch x86_64 --signing-key melange.rsa buildctl.yaml
apko build --keyring-append melange.rsa.pub --debug apko.yaml devops-tools:latest devops-tools.tar
```

## License

Copyright 2022 Tuan Anh Tran <me@tuananh.org>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
