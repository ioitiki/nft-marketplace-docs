# 🔐 Authentication

In order to authenticate to the Chainstarters API you will need to pass a token in the Authorization header. There are three main types of tokens each distinguished by their prefix. There is an owner token, an admin token, and several user tokens. This section will not cover user tokens.

### Owner

***

Owner tokens give the caller more or less complete access to all queries and mutations.

> Owner tokens are prefixed with `owner:`

Below is an example construction of an owner token:

```typescript
const ownerToken = `owner:${OWNER_TOKEN}`
```

{% hint style="info" %}
If you are a current Chainstarters user and do not have an owner token reach out to an administrator.
{% endhint %}

***

### Admin

***

Currently admin tokens are used internally by the Chainstarters Dashboard.

> Admin tokens are prefixed with `admin:`

{% hint style="info" %}
We are currently working on an more permanent admin token solution that would allow dashboard users to generate long lasting tokens. If you have need for a custom admin token in the mean time please reach out to a Chainstarters administrator.
{% endhint %}

***

### Example Usage

{% code title="auth-request.ts" fullWidth="false" %}
```typescript
import axios, { type AxiosInstance, type AxiosRequestConfig } from 'axios';
import { print, type DocumentNode } from 'graphql';

export default class AuthQuery {
  private axios: AxiosInstance;

  constructor() {
    const config: AxiosRequestConfig = {
      baseURL: `https://cs-${Bun.env.PROJECT_ID}.prime-jackpot-expanse.chainstarters.io`,
      headers: {
        'Authorization': `owner:${Bun.env.OWNER_API_KEY}`,
        'Content-Type': 'application/json'
      }
    };

    this.axios = axios.create(config);
  }

  async send(query: DocumentNode, variables?: Record<string, unknown>) {
    try {
      const response = await this.axios.post('/prod', {
        query: print(query),
        variables
      });

      return response.data.data;
    } catch (error) {
      console.error('Error fetching data: ', error);
      throw error;
    }
  }
}

```
{% endcode %}
