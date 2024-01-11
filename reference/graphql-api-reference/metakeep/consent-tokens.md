---
description: >-
  Consent tokens are used to perform send as functions. This will allow your
  users to send blockchain transactions without paying gas fees.
---

# Consent Tokens

## Understanding Consent Tokens

Chainstarters enables gasless transactions for non-custodial end-user wallets through the innovative use of consent tokens. This process begins with Chainstarters' API, which is instrumental in generating a consent token tailored to a specific blockchain transaction for each user. Subsequently, this consent token is utilized in conjunction with the MetaKeep SDK. Here, the end user is prompted to complete the transaction by signing the consent token. Once the consent token is signed, MetaKeep takes the initiative to execute the transaction, absorbing the gas fees on behalf of the end users and charging you (the develop) later. This integration between Chainstarters and MetaKeep SDK streamlines the transaction process, ensuring a user-friendly and cost-efficient experience.

### MetaKeep SDK

{% code title="index.html" %}
```html
<head>
  <script src="https://cdn.jsdelivr.net/npm/metakeep@2.2.0/lib/index.js"
          integrity="sha256-UltvzcmNwwzMu7ysygtbTzor7D2CSHN5iutj75kOYN4="
          crossorigin="anonymous">
  </script>
</head>
```
{% endcode %}

{% code title="getUserWallet.ts" %}
```typescript
const consent = await sdk.getConsent(consentToken);
```
{% endcode %}
***

<!--  -->
<!--  -->
<!--  -->
## spendERC20

Generate a consent token that a user can sign to spend their ERC20 tokens.

#### Parameters

<details>

<summary>amount_in_pennies&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;<em><mark style="color:blue;">string</mark></em>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;<mark style="color:orange;">Required</mark></summary>

The amount_in_pennies address of the user.

Example $1:

```100```

</details>

#### Return

<details>

<summary>consent token&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;<em><mark style="color:blue;">string</mark></em></summary>

The consent token used in the frontend to complete the transaction.

Example:

```TG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQsIGNvbnNlY3RldHVyIGFkaXBpc2NpbmcgZWxpdC4gQ3VyYWJpdHVyIHR1cnBpcyBlcmF0LCBibGFuZGl0IHNlZCBtYWduYSB2aXRhZSwgdmFyaXVzIHBvcnR0aXRvciBtaS4gTnVuYyB1dCB2b2x1dHBhdCBhbnRlLiBJbnRlZ2VyIGV1IGVuaW0gYXJjdS4gVXQgYXQgZWxpdCBsaWJlcm8u```

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