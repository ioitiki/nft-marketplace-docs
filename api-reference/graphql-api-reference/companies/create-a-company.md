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

<details>

<summary>legal_name    -    <em><mark style="color:blue;">string</mark></em>    -    <mark style="color:orange;">Required</mark></summary>

The legal name of the company.

Example: `Morar - Brekke`

</details>

<details>

<summary>legal_status    -    <em><mark style="color:blue;">string</mark></em>    -    <mark style="color:orange;">Required</mark></summary>

The legal status of the company.

Example: `Corporation`

</details>

<details>

<summary>ceo_officer_id    -    <em><mark style="color:blue;">string</mark></em>    -    <mark style="color:orange;">Required</mark></summary>

The ID of the company's CEO or officer.

Example: `51`

</details>

<details>

<summary>state_of_organization    -    <em><mark style="color:blue;">string</mark></em>    -    <mark style="color:orange;">Required</mark></summary>

The state where the company is organized.

Example: `FL`

</details>

<details>

<summary>address    -    <em><mark style="color:blue;">string</mark></em>    -    <mark style="color:orange;">Required</mark></summary>

The address of the company.

Example: `Salem, Oregon, USA`

</details>

<details>

<summary>date_of_organization    -    <em><mark style="color:blue;">string (timestamp)</mark></em>    -    <mark style="color:orange;">Required</mark></summary>

The date the company was organized (as a timestamp).

Example: `1722902400000`

</details>

<details>

<summary>tax_id    -    <em><mark style="color:blue;">string</mark></em>    -    <mark style="color:orange;">Required</mark></summary>

The tax identification number for the company.

Example: `98723405982347509234785`

</details>

<details>

<summary>website    -    <em><mark style="color:blue;">string</mark></em>    -    Optional</summary>

The website of the company.

Example: `https://delicious-fit.net/`

</details>

<details>

<summary>phone    -    <em><mark style="color:blue;">string</mark></em>    -    Optional</summary>

The phone number of the company.

Example: `null`

</details>

<details>

<summary>logo    -    <em><mark style="color:blue;">string</mark></em>    -    Optional</summary>

URL or path to the company's logo.

Example: `https://imagedelivery.net/VXSUG--97rEGVHj8SzZmow/5d28e1f0-26a1-4a79-02be-e07a01161900/public`

</details>

<details>

<summary>facebook    -    <em><mark style="color:blue;">string</mark></em>    -    Optional</summary>

The Facebook profile link for the company.

Example: `null`

</details>

<details>

<summary>instagram    -    <em><mark style="color:blue;">string</mark></em>    -    Optional</summary>

The Instagram profile link for the company.

Example: `null`

</details>

<details>

<summary>whatsapp    -    <em><mark style="color:blue;">string</mark></em>    -    Optional</summary>

The WhatsApp link for the company.

Example: `null`

</details>

<details>

<summary>twitter    -    <em><mark style="color:blue;">string</mark></em>    -    Optional</summary>

The Twitter profile link for the company.

Example: `null`

</details>

<details>

<summary>linkedin    -    <em><mark style="color:blue;">string</mark></em>    -    Optional</summary>

The LinkedIn profile link for the company.

Example: `null`

</details>

<details>

<summary>youtube    -    <em><mark style="color:blue;">string</mark></em>    -    Optional</summary>

The YouTube channel link for the company.

Example: `null`

</details>

<details>

<summary>active    -    <em><mark style="color:blue;">boolean</mark></em>    -    <mark style="color:orange;">Required</mark></summary>

Flag to indicate if the company is active.

Example: `true`

</details>

<details>

<summary>officers    -    <em><mark style="color:blue;">JSON</mark></em>    -    Optional</summary>

A list of officers associated with the company.

Example: `null`

</details>


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
