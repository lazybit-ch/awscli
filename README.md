# awscli

[AWS Command Line Interface](https://aws.amazon.com/cli/) `docker` image build.

## Build

This image is built, packaged and released using [GitHub Actions](https://github.com/features/actions).

Images are tagged using the version of the AWS CLI release packaged in the image.

The version of the AWS CLI is also set in the containers `AWSCLI_VERSION` environment variable.

## Usage

AWS CLI usage is documented in the [reference](https://docs.aws.amazon.com/cli/latest/reference/).

Example: `docker run --rm -it docker.pkg.github.com/lazybit-ch/awscli/awscli:v1.18.21 --version`
