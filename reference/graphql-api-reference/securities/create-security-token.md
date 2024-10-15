---
description: >-
  Create a security token by providing necessary information. The token will
  only be launched on blockchain after calling `launchSecurityToken`
---

# Create Security Token

## Basic Usage

{% code title="mutation.gql" %}
```graphql
mutation createSecurityToken($input: CreateSecurityTokenInput!) {
  createSecurityToken(input: $input) {
    id
  }
}
```
{% endcode %}

***

## Parameters

***

<details>

<summary>company_id - <em><mark style="color:blue;">integer</mark></em> - <mark style="color:orange;">Required</mark></summary>

The ID of the company associated with the raise.

Example: `123`

</details>

<details>

<summary>name - <em><mark style="color:blue;">string</mark></em> - <mark style="color:orange;">Required</mark></summary>

The name of the raise.

Example: `Series A`

</details>

<details>

<summary>description - <em><mark style="color:blue;">string</mark></em> - Optional</summary>

A brief description of the raise.

Example: `Raising capital for expansion`

</details>

<details>

<summary>amount - <em><mark style="color:blue;">string</mark></em> - <mark style="color:orange;">Required</mark></summary>

The target amount to be raised.

Example: `$10,000,000`

</details>

<details>

<summary>security_type - <em><mark style="color:blue;">string</mark></em> - Optional</summary>

The type of security offered in this raise.

Example: `Equity`

</details>

<details>

<summary>offering_type - <em><mark style="color:blue;">string</mark></em> - <mark style="color:orange;">Required</mark></summary>

The type of offering.

Example: `Private`

</details>

<details>

<summary>status - <em><mark style="color:blue;">string</mark></em> - Optional</summary>

The status of the raise.

Example: `Active`

</details>

<details>

<summary>general_information - <em><mark style="color:blue;">JSON</mark></em> - Optional</summary>

General information about the raise.

Example: `{ "overview": "Raising capital for market expansion" }`

</details>

<details>

<summary>my_team - <em><mark style="color:blue;">JSON</mark></em> - Optional</summary>

Details about the team involved in the raise.

Example: `{ "team": ["John Doe", "Jane Smith"] }`

</details>

<details>

<summary>capital_raise - <em><mark style="color:blue;">JSON</mark></em> - Optional</summary>

Details about the capital raising strategy.

Example: `{ "goal": "$10M by Q4" }`

</details>

<details>

<summary>business_details - <em><mark style="color:blue;">JSON</mark></em> - Optional</summary>

Detailed business information.

Example: `{ "industry": "Technology", "market": "Global" }`

</details>

<details>

<summary>past_raises - <em><mark style="color:blue;">JSON</mark></em> - Optional</summary>

Information about past raises.

Example: `{ "rounds": [{ "amount": "$5M", "date": "2022-01-01" }] }`

</details>

<details>

<summary>financials - <em><mark style="color:blue;">JSON</mark></em> - Optional</summary>

Financial details of the company.

Example: `{ "revenue": "$20M", "net_income": "$2M" }`

</details>

<details>

<summary>use_of_funds - <em><mark style="color:blue;">JSON</mark></em> - Optional</summary>

Breakdown of how the raised funds will be used.

Example: `{ "marketing": "$2M", "R&D": "$3M" }`

</details>

<details>

<summary>my_documents - <em><mark style="color:blue;">JSON</mark></em> - Optional</summary>

Documents related to the raise.

Example: `{ "document_links": ["https://example.com/doc1.pdf"] }`

</details>

<details>

<summary>broker_dealer - <em><mark style="color:blue;">JSON</mark></em> - Optional</summary>

Details about the broker-dealer.

Example: `{ "name": "XYZ Brokerage" }`

</details>

<details>

<summary>transfer_agent - <em><mark style="color:blue;">JSON</mark></em> - Optional</summary>

Information about the transfer agent.

Example: `{ "name": "ABC Transfer" }`

</details>

<details>

<summary>site_builder - <em><mark style="color:blue;">JSON</mark></em> - Optional</summary>

Details for building the raise's website.

Example: `{ "template": "Default" }`

</details>

<details>

<summary>closing_date - <em><mark style="color:blue;">Date</mark></em> - <mark style="color:orange;">Required</mark></summary>

The expected closing date of the raise.

Example: `2025-12-31`

</details>

<details>

<summary>accreditation_process - <em><mark style="color:blue;">string</mark></em> - Optional</summary>

The process for accrediting investors.

Example: `Standard`

</details>

<details>

<summary>min_investment_usd - <em><mark style="color:blue;">string</mark></em> - Optional</summary>

The minimum investment allowed in USD.

Example: `$50,000`

</details>

<details>

<summary>max_investment_usd - <em><mark style="color:blue;">string</mark></em> - Optional</summary>

The maximum investment allowed in USD.

Example: `$5,000,000`

</details>

<details>

<summary>max_investors_worldwide - <em><mark style="color:blue;">string</mark></em> - Optional</summary>

The maximum number of investors worldwide.

Example: `500`

</details>

<details>

<summary>max_accredited_investors - <em><mark style="color:blue;">string</mark></em> - Optional</summary>

The maximum number of accredited investors allowed.

Example: `400`

</details>

<details>

<summary>max_non_accredited_investors - <em><mark style="color:blue;">string</mark></em> - Optional</summary>

The maximum number of non-accredited investors allowed.

Example: `100`

</details>

<details>

<summary>max_us_investors - <em><mark style="color:blue;">string</mark></em> - Optional</summary>

The maximum number of US investors allowed.

Example: `300`

</details>

<details>

<summary>max_us_investor_percentage - <em><mark style="color:blue;">string</mark></em> - Optional</summary>

The maximum percentage of US investors allowed.

Example: `60%`

</details>

<details>

<summary>holding_period_days_us - <em><mark style="color:blue;">integer</mark></em> - Optional</summary>

The holding period in days for US investors.

Example: `365`

</details>

<details>

<summary>holding_period_days_non_us - <em><mark style="color:blue;">integer</mark></em> - Optional</summary>

The holding period in days for non-US investors.

Example: `180`

</details>

<details>

<summary>start_date - <em><mark style="color:blue;">Date</mark></em> - Optional</summary>

The start date of the raise.

Example: `2024-01-01`

</details>

<details>

<summary>icon_url - <em><mark style="color:blue;">string</mark></em> - Optional</summary>

URL or path to the icon image for the raise.

Example: `https://example.com/icon.png`

</details>

<details>

<summary>image_url - <em><mark style="color:blue;">string</mark></em> - Optional</summary>

URL or path to the cover image for the raise.

Example: `https://example.com/cover.jpg`

</details>

***

## Example Usage

```json
{
  "input": {
    "company_id": 123,
    "name": "My Raise",
    "description": "My description",
    "amount": "1000000", // 1 million dollars
    "security_type": "Reg D",
    "offering_type": "Reg D",
    "status": "SOME_STATUS",
    "general_information": {},
    "my_team": {},
    "capital_raise": {},
    "business_details": {},
    "past_raises": {},
    "financials": {},
    "use_of_funds": {},
    "my_documents": {},
    "broker_dealer": {},
    "transfer_agent": {},
    "site_builder": {},
    "closing_date": "2025-10-15",
    "accreditation_process": "",
    "min_investment_usd": "100",
    "max_investment_usd": "10000",
    "max_investors_worldwide": "90000",
    "max_accredited_investors": "90000",
    "max_non_accredited_investors": "10000",
    "max_us_investors": "45000",
    "max_us_investor_percentage": "50.00",
    "holding_period_days_us": 60,
    "holding_period_days_non_us": 60,
    "start_date": "2024-10-15",
    "icon_url": "https://icon-url.png",
    "image_url": "https://image-url.png",
  }
}
```

## Response

```json
{
  
}
```
