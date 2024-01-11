---
description: >-
  Consent tokens are used to perform send as functions. This will allow your
  users to send blockchain transactions without paying gas fees.
---

# Consent Tokens

## Understanding Consent Tokens

Chainstarters enables gasless transactions for non-custodial end-user wallets through the innovative use of consent tokens. This process begins with Chainstarters' API, which--using MetaKeep--generates a consent token tailored to a specific blockchain transaction for each user. Subsequently, this consent token is utilized in conjunction with the MetaKeep SDK. Here, the end user is prompted to complete the transaction by signing the consent token. Once the consent token is signed, MetaKeep takes the initiative to execute the transaction, absorbing the gas fees on behalf of the end users and charging you (the develop) later. This integration between Chainstarters and MetaKeep SDK streamlines the transaction process, ensuring a user-friendly and cost-efficient experience.

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

{% code %}
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

The amount_in_pennies the user wishes to spend.

Example $1:

```100```

</details>

<details>

<summary>email&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;<em><mark style="color:blue;">string</mark></em>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;<mark style="color:orange;">Required</mark></summary>

The email address of the user.

Example:

```joe.smith123@example.com```

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

const spendERC20Mutation = gql`
  mutation spendERC20($input: SpendERC20Input!) {
    spendERC20(input: $input)
  }
`;

async function spendERC20(email: string) {
  const authQuery = new AuthQuery();

  try {
  
    const variables = {
      input: {
        amount_in_pennies: '100',
        email
      }
    }

    const response = await authQuery.send(
      spendERC20Mutation,
      variables
    );

    return response.spendERC20;

  } catch (error) {
    console.error('Error fetching user wallet address:', error);
    return null;
  }
}

// Example usage
const ret = await spendERC20('joe.smith123@example.com')

console.log('consent token: ', ret)
// Output
// consent token:  CrgBAQIDAHjiEKFH6nAKPy0nQgxx5fOl3UqPIQ8gSEt0j-xA9g811QGv7Cnbp4Gxr54OcZ6Hc5T7AAAAfjB8BgkqhkiG9w0BBwagbzBtAgEAMGgGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQM-4nsTNCxsBNG7-agAgEQgDsEBSWm7hvlr7xBbEmAz3KYGQfhMK-Vtj0NDBeuRnygvtEJJ8ycE8PlC0pmnMC620gXHOwoVOhxUAwkxBK1AwoM47tEhjavdMEcaFsrEqQDKBZvG1ujU3EutYNA-ZwiqmrnZkrJyYPIj5cyFUj34XsAEkCJ3OvLj3z17RUjweGieRcOHnssB5OG7CaD068VR50O-gJGMnnRoNalJo5y4_GFc5JAlvWc01zZKgYLrjlMrgKzRdn5TocjRX97--8YFB-1X2hxuGwHAP9XmOEzjtNkgFMVtIht1f5BiOkKv5LRN0OxWZXVk23VVmxCBNOUoBooXElj8mt5URhRxlWJytHPztpy5UqaqkGQh0J4e4bXEZxpNdb73LiGSCfJllcdpC-LP1iAf_Ssngqq_X1xCq7KzddvXGI52lSPM99eSOM2AhP24pb1LGBEFojIBF5-xS2AOyXIJiX9vhkWayXeNS1gnrQoQjVcnTp2X_Ngj_M4EzWRtej5EroAo5WYGxeDmWgx1PHMmPIYLr_-ZQ_PsqXbfX_dcLlS2_ivVgrv8sPsWDFsXbPoOf4EnO0oAtEXmztHKz5H1EgNNu1pkBxr-Tnxk4NN4f4ZPDnhGIegqy7uK6EfLyuejQVYTQpQwDM1xtdE6DBQ0SywjTrFcSyegMT9sY_4IAE=



/* On the front end: **/
const consentToken = await spendERC20('joe.smith123@example.com')
const consent = await sdk.getConsent(consentToken);

```
{% endcode %}

***