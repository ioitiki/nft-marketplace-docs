---
description: Creates a Collection and supporting smart contracts.
---

# Create a Collection

## Parameters

<details>

<summary>name&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:blue;"><mark style="color:blue;"><em>string</em></mark></mark>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:orange;">Required</mark></summary>

The name of the collection.

Example: `My first Collection`

</details>

<details>

<summary>symbol&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:blue;"><em>string</em></mark>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:red;">Deprecated</mark></summary>

A short symbol or abbreviation for the collection.

Example: `MFC`

</details>

<details>

<summary>description&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:blue;"><em>string</em></mark>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;Optional</summary>

A brief description of the collection.

Example: `A unique collection of digital artworks.`

</details>

<details>

<summary>logo_image&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:blue;"><em>string</em></mark>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<span data-gb-custom-inline data-tag="emoji" data-code="1f7e0">🟠</span> Required</summary>

URL or path to the logo image for the collection.

Example: `https://example.com/logo.png`

</details>

<details>

<summary>cover_image&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:blue;"><em>string</em></mark>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;Optional</summary>

URL or path to the cover image for the collection.

Example: `https://example.com/cover.jpg`

</details>

<details>

<summary>seller_fee_basis_points&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:blue;"><mark style="color:blue;"><em>number</em></mark></mark>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;Optional</summary>

The seller fee in basis points.

Example: `250` (representing 2.5%)

</details>

<details>

<summary>minting_payer&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:blue;"><em>string</em></mark>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<span data-gb-custom-inline data-tag="emoji" data-code="1f7e0">🟠</span> Required</summary>

Wallet address responsible for paying minting fees.

Example: `0x123abc...`

</details>

<details>

<summary>blockchain&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:blue;"><em>string</em></mark>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<span data-gb-custom-inline data-tag="emoji" data-code="1f7e0">🟠</span> Required</summary>

The blockchain on which the collection is based, restricted to 'ethereum' or 'polygon'.

Example: `ethereum`

</details>

<details>

<summary>network&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:blue;"><em>string</em></mark>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<span data-gb-custom-inline data-tag="emoji" data-code="1f7e0">🟠</span> Required</summary>

The network name.

Example: `mainnet`

</details>

<details>

<summary>is_mainnet&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:blue;"><em>boolean</em></mark>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<span data-gb-custom-inline data-tag="emoji" data-code="1f7e0">🟠</span> Required</summary>

Flag to indicate if the collection is on the main network.

Example: `true`

</details>

<details>

<summary>is_public&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:blue;"><em>boolean</em></mark>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<span data-gb-custom-inline data-tag="emoji" data-code="1f7e0">🟠</span> Required</summary>

Flag to indicate if the collection is public.

Example: `true`

</details>

<details>

<summary>external_link&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:blue;"><em>string</em></mark>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;Optional</summary>

External link to the collection website or page.

Example: `https://example.com/collection`

</details>

<details>

<summary>[social_media_links]&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:blue;"><em>string</em></mark>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;Optional</summary>

Links to various social media profiles associated with the collection (telegram_link, discord_link, tiktok_link, whatsapp_link, facebook_link, instagram_link, twitter_link, youtube_link, linkedin_link).

Example:

* telegram_link: `https://t.me/example`
* discord_link: `https://discord.gg/example`
* tiktok_link: `https://www.tiktok.com/@example`
* whatsapp_link: `https://wa.me/1234567890`
* facebook_link: `https://www.facebook.com/example`
* instagram_link: `https://www.instagram.com/example`
* twitter_link: `https://twitter.com/example`
* youtube_link: `https://www.youtube.com/c/example`
* linkedin_link: `https://www.linkedin.com/company/example`

</details>

<details>

<summary>payout_program_id&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:blue;"><em>number</em></mark>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;Optional</summary>

ID for the payout program associated with the collection.

Example: `101`

</details>

<details>

<summary>version&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:blue;"><em>ContractVersion</em></mark>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;Optional</summary>

The version of the contract used for the collection.

Example: `v1.0.0`

</details>

<details>

<summary>type&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:blue;"><em>string</em></mark>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;Optional</summary>

The type or category of the collection.

Example: `art`

</details>

<details>

<summary>is_custom_event&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:blue;"><em>boolean</em></mark>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;Optional</summary>

Flag to indicate if the collection uses custom events.

Example: `false`

</details>

<details>

<summary>show_on_home_page&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:blue;"><em>boolean</em></mark>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;Optional</summary>

Flag to indicate if the collection should be displayed on the home page.

Example: `true`

</details>

<details>

<summary>show_on_collection_page&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<mark style="color:blue;"><em>boolean</em></mark>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;Optional</summary>

Flag to indicate if the collection should be displayed on the collection page.

Example: `true`

</details>

*

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

{% code title="index.js" overflow="wrap" lineNumbers="true" %}
```graphql
mutation createCollection($createCollectionInput: CreateCollectionInput) {
  createCollection(createCollectionInput: $createCollectionInput)
}
```
{% endcode %}

## Response
