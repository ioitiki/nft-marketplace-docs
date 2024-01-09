# Authentication

In order to authenticate to the Chainstarters API you will need to pass a token in the Authorization header. There are three main types of tokens each distinguished by their prefix. There is an owner token, an admin token, and several user tokens. This section will not cover user tokens.

### Owner

***

Owner tokens give the caller more or less complete access to all queries and mutations.

> Owner tokens are prefixed with `owner:`

```typescript
const ownerToken = `owner:${OWNER_TOKEN}`
```

***

### Admin

***

### Custom

***

### Example Usage

{% code title="auth-request.ts" fullWidth="false" %}
```typescript

import { GraphQLResponse } from '@apollo/server';
import axios, { AxiosInstance, AxiosResponse } from 'axios'
import { DocumentNode, print } from 'graphql';

class ExampleSend {
  private axios: AxiosInstance;

  constructor() {
    this.axios = axios.create()
    this.axios.defaults.baseURL = 'https://cs-<PROJECT_ID>.prime-jackpot-expanse.chainstarters.io'
    this.axios.defaults.headers.common['Authorization'] = 'owner:super-secret-token'
    this.axios.defaults.headers.common['Content-Type'] = 'application/json'
  }

  async send(query: DocumentNode) {
    try {
      const response: AxiosResponse<GraphQLResponse<boolean>> = await axios.post('/prod', {
        query: print(query)
      });

      return response.data;
    } catch (error) {
      console.error('Error fetching data: ', error);
      throw error;
    }
  }
}

```
{% endcode %}
