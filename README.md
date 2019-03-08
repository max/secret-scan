# Secret Scan for GitHub Actions

Scan your repo for secrets. AWS tokens, keys, this has you covered.

## Example

```
workflow "Find Secrets" {
  on = "push"
  resolves = ["max/secret-scan"]
}

action "max/secret-scan" {
  uses = "max/secret-scan@master"
}
```
