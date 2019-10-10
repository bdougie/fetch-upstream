# Fetch Upstream

This GitHub Action was inspired by the Dev.to post on [How to keep your forked repository current](https://dev.to/ranewallin/how-to-keep-your-forked-repository-current-38mn?utm_source=digest_mailer&utm_medium=email&utm_campaign=digest_email).

## Usage

```yaml|
name: Fetch Upstream

on: pull_request

jobs:
  fetch-upstream:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: Fetch Upstream
      uses: bdougie/fetch-upstream@master
      with:
        upstream: babel/babel
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}      
```

## What it does

This GitHub Action will fetch the upstream base on the event you choose. You set up filters to using the [GitHub Actions help documentation](https://help.github.com/en/articles/workflow-syntax-for-github-actions) as a guide. 
