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

Use path filters to manage the set of objects that will be scanned.

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

## Example with allowed patterns

Use a JSON file to allow secrets that shouldn't trigger a warning.

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
          allowed_patterns: 'configuration/allowed_patterns.json'
```

For more information about the format of the configuration files for each additional parameter, please refer to [truffleHog](https://github.com/trufflesecurity/truffleHog) documentation.
