# Graphql API Reference

## General Information

{% hint style="info" %}
All time values need to be in ISO format, such as

`hasPointInTime: "2022-06-09T18:51:57.105Z"`
{% endhint %}

{% hint style="info" %}
There are a number of queries and mutations that appear in the specification, but are not yet implemented. Avoid those ones by checking that their "status" is "Implemented" in the relevant module section that mentions it. You can put the method in the search box in these docs to find it. Those methods will also throw a 'not yet implemented' error if they are called.
{% endhint %}

## Modules

Each of the items listed below is what is known as a Valueflows Module. They can be individually enabled, and so looking at each one specifically will tell you which Graphql queries and mutations are accessible.

{% content-ref url="collections/" %}
[collections](collections/)
{% endcontent-ref %}
