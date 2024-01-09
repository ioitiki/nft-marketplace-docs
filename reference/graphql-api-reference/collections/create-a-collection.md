---
description: Creates a Collection and supporting smart contracts.
---

# Create a Collection

## Basic Usage

***

{% code title="mutation.gql" lineNumbers="true" %}
```graphql
mutation createCollection($createCollectionInput: CreateCollectionInput) {
  createCollection(createCollectionInput: $createCollectionInput)
}
```
{% endcode %}

***

## Parameters

***

<details>

<summary>name    -    <em><mark style="color:blue;">string</mark></em>    -    <mark style="color:orange;">Required</mark></summary>

The name of the collection.

Example: `My first Collection`

</details>

<details>

<summary>symbol    -    <em><mark style="color:blue;">string</mark></em>    -    <mark style="color:red;">Deprecated</mark></summary>

A short symbol or abbreviation for the collection.

Example: `MFC`

</details>

<details>

<summary>description    -    <em><mark style="color:blue;">string</mark></em>    -    Optional</summary>

A brief description of the collection.

Example: `A unique collection of digital artworks.`

</details>

<details>

<summary>logo_image    -    <em><mark style="color:blue;">string</mark></em>    -    <span data-gb-custom-inline data-tag="emoji" data-code="1f7e0">🟠</span> Required</summary>

URL or path to the logo image for the collection.

Example: `https://example.com/logo.png`

</details>

<details>

<summary>cover_image    -    <em><mark style="color:blue;">string</mark></em>    -    Optional</summary>

URL or path to the cover image for the collection.

Example: `https://example.com/cover.jpg`

</details>

<details>

<summary>seller_fee_basis_points    -    <em><mark style="color:blue;">number</mark></em>    -    Optional</summary>

The seller fee in basis points.

Example: `250` (representing 2.5%)

</details>

<details>

<summary>minting_payer    -    <em><mark style="color:blue;">string</mark></em>    -    <span data-gb-custom-inline data-tag="emoji" data-code="1f7e0">🟠</span> Required</summary>

Wallet address responsible for paying minting fees.

Example: `0x123abc...`

</details>

<details>

<summary>blockchain    -    <em><mark style="color:blue;">string</mark></em>    -    <span data-gb-custom-inline data-tag="emoji" data-code="1f7e0">🟠</span> Required</summary>

The blockchain on which the collection is based, restricted to 'ethereum' or 'polygon'.

Example: `ethereum`

</details>

<details>

<summary>network    -    <em><mark style="color:blue;">string</mark></em>    -    <span data-gb-custom-inline data-tag="emoji" data-code="1f7e0">🟠</span> Required</summary>

The network name.

Example: `mainnet`

</details>

<details>

<summary>is_mainnet    -    <em><mark style="color:blue;">boolean</mark></em>    -    <span data-gb-custom-inline data-tag="emoji" data-code="1f7e0">🟠</span> Required</summary>

Flag to indicate if the collection is on the main network.

Example: `true`

</details>

<details>

<summary>is_public    -    <em><mark style="color:blue;">boolean</mark></em>    -    <span data-gb-custom-inline data-tag="emoji" data-code="1f7e0">🟠</span> Required</summary>

Flag to indicate if the collection is public.

Example: `true`

</details>

<details>

<summary>external_link    -    <em><mark style="color:blue;">string</mark></em>    -    Optional</summary>

External link to the collection website or page.

Example: `https://example.com/collection`

</details>

<details>

<summary>[social_media_links]    -    <em><mark style="color:blue;">string</mark></em>    -    Optional</summary>

Links to various social media profiles associated with the collection (telegram\_link, discord\_link, tiktok\_link, whatsapp\_link, facebook\_link, instagram\_link, twitter\_link, youtube\_link, linkedin\_link).

Example:

* telegram\_link: `https://t.me/example`
* discord\_link: `https://discord.gg/example`
* tiktok\_link: `https://www.tiktok.com/@example`
* whatsapp\_link: `https://wa.me/1234567890`
* facebook\_link: `https://www.facebook.com/example`
* instagram\_link: `https://www.instagram.com/example`
* twitter\_link: `https://twitter.com/example`
* youtube\_link: `https://www.youtube.com/c/example`
* linkedin\_link: `https://www.linkedin.com/company/example`

</details>

<details>

<summary>payout_program_id    -    <em><mark style="color:blue;">number</mark></em>    -    Optional</summary>

ID for the payout program associated with the collection.

Example: `101`

</details>

<details>

<summary>version    -    <em><mark style="color:blue;">ContractVersion</mark></em>    -    Optional</summary>

The version of the contract used for the collection.

Example: `v1.0.0`

</details>

<details>

<summary>type    -    <em><mark style="color:blue;">string</mark></em>    -    Optional</summary>

The type or category of the collection.

Example: `art`

</details>

<details>

<summary>is_custom_event    -    <em><mark style="color:blue;">boolean</mark></em>    -    Optional</summary>

Flag to indicate if the collection uses custom events.

Example: `false`

</details>

<details>

<summary>show_on_home_page    -    <em><mark style="color:blue;">boolean</mark></em>    -    Optional</summary>

Flag to indicate if the collection should be displayed on the home page.

Example: `true`

</details>

<details>

<summary>show_on_collection_page    -    <em><mark style="color:blue;">boolean</mark></em>    -    Optional</summary>

Flag to indicate if the collection should be displayed on the collection page.

Example: `true`

</details>

***

## Example Usage

```json
{
  "createCollectionInput": {
    "blockchain": null,
    "chain_id": null,
    "cover_image": null,
    "description": null,
    "discord_link": null,
    "external_link": null,
    "facebook_link": null,
    "instagram_link": null,
    "is_custom_event": null,
    "is_mainnet": null,
    "is_public": null,
    "linkedin_link": null,
    "logo_image": null,
    "minting_payer": null,
    "name": null,
    "network": null,
    "payout_program_id": null,
    "seller_fee_basis_points": null,
    "show_on_collection_page": null,
    "show_on_home_page": null,
    "symbol": null,
    "telegram_link": null,
    "tiktok_link": null,
    "twitter_link": null,
    "type": null,
    "version": null,
    "whatsapp_link": null,
    "youtube_link": null
  }
}
```

## Response
