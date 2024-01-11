---
description: Methods for interacting with MetaKeep wallet API.
---

# Wallet

{% hint style="info" %}
All parameters will be passed as properties of an object called input.

> `const variables = { input: { ...params } }`
{% endhint %}

## Queries

***

<!--  -->
<!--  -->
<!--  -->
### getUserWallet

Retrieve a user's wallet address given their email address.

#### Parameters

<details>

<summary>email&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;<em><mark style="color:blue;">string</mark></em>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;<mark style="color:orange;">Required</mark></summary>

The email address of the user.

Example:

```joe.smith123@example.com```

</details>

#### Return

<details>

<summary>wallet address&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;<em><mark style="color:blue;">string</mark></em></summary>

The wallet address for the given email address.

Example:

```0x123abc456def789ghi012jkl345mno678pqrs90t```

</details>

#### Basic Usage

{% code title="getUserWallet.ts" %}
```typescript
import gql from 'graphql-tag'
import AuthQuery from './';

const getUserWalletQuery = gql`
  query getUserWallet($input: GetUserWalletInput!) {
    getUserWallet(input: $input)
  }
`;

async function getUserWallet(email: string) {
  const authQuery = new AuthQuery();

  try {
  
    const variables = { input: { email } }

    const response = await authQuery.send(
      getUserWalletQuery,
      variables
    );

    return response.getUserWallet;

  } catch (error) {
    console.error('Error fetching user wallet address:', error);
    return null;
  }
}

// Example usage
const ret = await getUserWallet('joe.smith123@example.com')

console.log('wallet address: ', ret)
// Output
// wallet address:  0xAC55C8f86e9eDf9A1520f39158926Bd8c6A29dF7

```
{% endcode %}

***

<!--  -->
<!--  -->
<!--  -->
### getUserWalletsBatch

Retrieve a list of user wallets.

{% hint style="info" %}
From the MetaKeep docs:
> For user privacy and security, and to prevent abuse, you can only query wallets for users that have been queried previouslT using the User Wallet API. The API response will be missing wallets for users that have not been queried previously.
{% endhint %}

#### Parameters

<details>

<summary>emails&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;<em><mark style="color:blue;">string[]</mark></em>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;<mark style="color:orange;">Required</mark></summary>

An array of email addresses.

Example:
```
['joe.smith123@example.com']
```

</details>

#### Return

<details>

<summary>wallet address&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;<em><mark style="color:blue;">string</mark></em></summary>

The wallet address for the given email address.

Example:
```
wallet addresses:  {
  "bob.smith123@example.com": "0x9a425b93E13E6D451360445A5eA86C2e52d35C75",
  "joe.smith123@example.com": "0xAC55C8f86e9eDf9A1520f39158926Bd8c6A29dF7",
}
```
</details>

#### Basic Usage

{% code title="getUserWallet.ts" %}
```typescript
import gql from 'graphql-tag'
import AuthQuery from '.';

const getUserWalletsBatchQuery = gql`
  query getUserWalletsBatch($input: GetUserWalletsBatchInput!) {
    getUserWalletsBatch(input: $input)
  }
`;

async function getUserWalletsBatch(emails: string[]) {
  const authQuery = new AuthQuery();

  try {
  
    const variables = { input: { emails } }

    const response = await authQuery.send(
      getUserWalletsBatchQuery,
      variables
    );

    return response.getUserWalletsBatch;

  } catch (error) {
    console.error('Error fetching user wallet address:', error);
    return null;
  }
}

// Example usage
const ret = await getUserWalletsBatch(['joe.smith123@example.com', 'bob.smith123@example.com'])

console.log('wallet addresses: ', ret)
// Output
// wallet addresses:  {
//   "joe.smith123@example.com": "0xAC55C8f86e9eDf9A1520f39158926Bd8c6A29dF7",
//   "bob.smith123@example.com": "0x9a425b93E13E6D451360445A5eA86C2e52d35C75",
// }

```
{% endcode %}

***

<!--  -->
<!--  -->
<!--  -->
### Balance Of ERC-1155

Retrieve a user's wallet address given their email address.

#### Basic Usage

{% code title="getUserWallet.ts" %}
```typescript
// Some code
```
{% endcode %}

#### Parameters

#### Return

***

<!--  -->
<!--  -->
<!--  -->
### Balance Of ERC-20

Retrieve a user's wallet address given their email address.

#### Basic Usage

{% code title="getUserWallet.ts" %}
```typescript
// Some code
```
{% endcode %}

#### Parameters

#### Return

***
