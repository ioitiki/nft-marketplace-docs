---
description: >-
  Deploy your previously created security token onto the blockchain. This function deploys a TREX contract suite for the token.
---

# Launch Security Token

## Basic Usage

{% code title="mutation.gql" %}
```graphql
mutation launchSecurityToken($input: LaunchSecurityTokenInput!) {
  launchSecurityToken(input: $input) {
    id
  }
}
```
{% endcode %}

***

## Parameters

***

<details>

<summary>id - <em><mark style="color:blue;">integer</mark></em> - <mark style="color:orange;">Required</mark></summary>

The ID of the security that you want to launch on the blockchain.

Example: 123

</details>

***

## Example Usage

```json
{
  "input": {
    "id": 123
  }
}
```

## Response

```json
{
  
}
```
