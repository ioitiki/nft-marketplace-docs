# Authentication

In order to authenticate to the Chainstarters API you will need to pass a token in the Authorization header.

### Owner

***

{% code title="auth-request.ts" fullWidth="true" %}
```typescript
import axios, { AxiosInstance, AxiosResponse } from 'axios'
import { DocumentNode, print } from 'graphql';

class ExampleSend {
  private axios: AxiosInstance;

  constructor() {
    this.axios = axios.create()
    this.axios.defaults.baseURL = 'https://cs-<PROJECT_ID>.prime-jackpot-expanse.chainstarters.io'
    // '<TOKEN_PREFIX>:<<TOKEN>>'
    this.axios.defaults.headers.common['Authorization'] = 'owner:super-secret-token'
    this.axios.defaults.headers.common['Content-Type'] = 'application/json'
  }

  send(query: DocumentNode) {
    // all projects currently have one prod environment
    // if you need more environments reach out to a
    // Chainstarters administrator. :D
    try {
    const response: AxiosResponse<GraphQLResponse<YourResponseType>> = await axios.post('/prod', {
      query: query
    }, {
      headers: {
        'Content-Type': 'application/json',
        // Add any other headers like authorization if needed
      }
    });

    return response.data.data;
  } catch (error) {
    // Handle error appropriately
    console.error('Error fetching data: ', error);
    throw error;
  }
  }
}

```
{% endcode %}

### Admin

***

### Custom
