---
description: Creates a Collection and supporting smart contracts.
---

# Create a Collection

## Parameters

**name** | _string_ | :orange_circle: Required

> #### The name of the collection.
>
> Example: `My first Collection`

**symbol** | _string_ | :red_circle: Deprecated

> #### A short symbol or abbreviation for the collection.
>
> Example: `MFC`

**description** | _string_ | Optional

> #### A brief description of the collection.
>
> Example: `A unique collection of digital artworks.`

**logo_image** | _string_ | :orange_circle: Required

> #### URL or path to the logo image for the collection.
>
> Example: `https://example.com/logo.png`

**cover_image** | _string_ | Optional

> #### URL or path to the cover image for the collection.
>
> Example: `https://example.com/cover.jpg`

**seller_fee_basis_points** | _number_ | Optional

> #### The seller fee in basis points.
>
> Example: `250` (representing 2.5%)

**minting_payer** | _string_ | :orange_circle: Required

> #### Wallet address responsible for paying minting fees.
>
> Example: `0x123abc...`

**blockchain** | _string_ | :orange_circle: Required

> #### The blockchain on which the collection is based, restricted to "ethereum" or "polygon".
>
> Example: `ethereum`

**network** | _string_ | :orange_circle: Required

> #### The network name.
>
> Example: `mainnet`

**is_mainnet** | _boolean_ | :orange_circle: Required

> #### Flag to indicate if the collection is on the main network.
>
> Example: `true`

**is_public** | _boolean_ | :orange_circle: Required

> #### Flag to indicate if the collection is public.
>
> Example: `true`

**external_link** | _string_ | Optional

> #### External link to the collection website or page.
>
> Example: `https://example.com/collection`

**[social_media_links]** | _string_ | Optional

> #### Links to various social media profiles associated with the collection (Telegram, Discord, TikTok, WhatsApp, Facebook, Instagram, Twitter, YouTube, LinkedIn).
>
> Example: 
> - Telegram: `https://t.me/example`
> - Discord: `https://discord.gg/example`
> - TikTok: `https://www.tiktok.com/@example`
> - WhatsApp: `https://wa.me/1234567890`
> - Facebook: `https://www.facebook.com/example`
> - Instagram: `https://www.instagram.com/example`
> - Twitter: `https://twitter.com/example`
> - YouTube: `https://www.youtube.com/c/example`
> - LinkedIn: `https://www.linkedin.com/company/example`

**payout_program_id** | _number_ | Optional

> #### ID for the payout program associated with the collection.
>
> Example: `101`

**version** | _ContractVersion_ | Optional

> #### The version of the contract used for the collection.
>
> Example: `v1.0.0`

**type** | _string_ | Optional

> #### The type or category of the collection.
>
> Example: `art`

**is_custom_event** | _boolean_ | Optional

> #### Flag to indicate if the collection uses custom events.
>
> Example: `false`

**show_on_home_page** | _boolean_ | Optional

> #### Flag to indicate if the collection should be displayed on the home page.
>
> Example: `true`

**show_on_collection_page** | _boolean_ | Optional

> #### Flag to indicate if the collection should be displayed on the collection page.
>
> Example: `true`

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

```graphql
mutation createCollection($createCollectionInput: CreateCollectionInput) {
  createCollection(createCollectionInput: $createCollectionInput)
}
```

## Response