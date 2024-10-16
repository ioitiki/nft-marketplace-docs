---
description: Create a company.
---

# Create a company

Create a company in the Chainstarters dashboard. This company will serve as the foundation for issuing Security Tokens. Security tokens are created under a specific company, and you can invite other users to your company's dashboard. These users can help manage and create security tokens, as well as perform other key roles.

## Basic Usage

```graphql
mutation createCompany($input: CompanyInput!) {
  createCompany(input: $input) {
    id
  }
}
```

***

## Parameters

***

## Example Usage

```json
{
  "input": {
     "legal_name": "Morar - Brekke",
     "legal_status": "Corporation",
     "ceo_officer_id": "51",
     "state_of_organization": "FL",
     "address": "Salem, Oregon, USA",
     "date_of_organization": "1722902400000",
     "tax_id": "98723405982347509234785",
     "website": "https://delicious-fit.net/",
     "phone": null,
     "logo": "https://imagedelivery.net/VXSUG--97rEGVHj8SzZmow/5d28e1f0-26a1-4a79-02be-e07a01161900/public",
     "facebook": null,
     "instagram": null,
     "whatsapp": null,
     "twitter": null,
     "linkedin": null,
     "youtube": null,
     "active": true,
     "officers": null
  }
}
```

***

## Response

***

```json
{
 "id": 51,
 "legal_name": "Morar - Brekke",
 "legal_status": "Corporation",
 "ceo_officer_id": "51",
 "state_of_organization": "FL",
 "address": "Salem, Oregon, USA",
 "date_of_organization": "1722902400000",
 "tax_id": "98723405982347509234785",
 "website": "https://delicious-fit.net/",
 "phone": null,
 "logo": "https://imagedelivery.net/VXSUG--97rEGVHj8SzZmow/5d28e1f0-26a1-4a79-02be-e07a01161900/public",
 "facebook": null,
 "instagram": null,
 "whatsapp": null,
 "twitter": null,
 "linkedin": null,
 "youtube": null,
 "active": true,
 "officers": null
}
```
