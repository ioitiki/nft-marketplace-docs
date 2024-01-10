# Wallet

{% hint style="info" %}
All parameters will be passed as properties of an object called input; ie:
{% code %}
```typescript
const variables = { input: { ...params } }
```
{% endcode %}
{% endhint %}

<!--  -->
### Get User Wallet

Retrieve a user's wallet address given their email address.

#### Parameters

<details>

<summary>email&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;<em><mark style="color:blue;">string</mark></em>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;<mark style="color:orange;">Required</mark></summary>

The email address of the user.

Example: `joe.smith123@example.com`

</details>

#### Return

<details>

<summary>wallet address&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;<em><mark style="color:blue;">string</mark></em></summary>

The wallet address for the given email address.

Example: `0x123abc456def789ghi012jkl345mno678pqrs90t`

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

    const response = await authQuery.send(
      getUserWalletQuery,
      { input: { email } }
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
### Get User Wallet Batch

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
### Balance Of ERC-20

### Get User Wallet

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
