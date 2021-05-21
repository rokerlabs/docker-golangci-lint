# docker-golangci-lint

[![Build status](https://badge.buildkite.com/ca0ae83d1b8c600fb19b5c64dc6cd325cbcb7c883dd75bf0e1.svg)](https://buildkite.com/rokerlabs/golangci-lint)

Docker image for <a href="https://github.com/golangci/golangci-lint"><code>golangci-lint</code></a>.

---

## Usage in CI

Example usage is various CI platforms.

### Buildkite
```yaml
  - label: ":golangci-lint: Code quality"
    command: golangci-lint run -v ./... --enable="gosec" --enable="golint" --enable="gofmt" --enable="goimports"
    plugins:
      - docker#v3.8.0:
          image: rokerlabs/golangqa:<version>
          propagate-environment: true
```

## Copyright

Copyright (c) 2021 Roker Labs. See [LICENSE](./LICENSE) for details.