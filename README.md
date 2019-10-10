# Fetch Upstream

## Usage

```yaml|
name: Fetch Upstream

on: pull_request

jobs:
  fetch-upstream:
    name: fetch
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: Fetch Upstream
      uses: bdougie/fetch-upstream@master
      with:
        upstream: babel/babel
    - name: fetch and push
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}      
```
