# Secret Scan for GitHub Actions

Scan your repo for secrets. AWS tokens, keys, this has you covered.

## Example

```yaml
on: push
name: Find Secrets
jobs:
  main:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: max/secret-scan@master
```

## Example with path filters

```yaml
on: push
name: Find Secrets
jobs:
  main:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: max/secret-scan@master
        with:
          include_path: 'configuration/include_paths.txt'
          exclude_path: 'configuration/exclude_paths.txt'
```

For more information about the format of the configuration files for include or exclude paths, please refer to [TruffleHog](https://github.com/dxa4481/truffleHog).