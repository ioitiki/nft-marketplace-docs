---
description: >-
  Create a security token by providing necessary information. The token will
  only be launched on blockchain after calling `launchSecurityToken`
---

# Create Security Token

## Basic Usage

```graphql
mutation createSecurityToken($input: CreateSecurityTokenInput!) {
  createSecurityToken(input: $input) {
    id
  }
}
```

## Parameters
