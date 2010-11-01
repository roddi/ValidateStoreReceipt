# ValidateStoreReceipt
Matthew Stevens, Ruotger Skupin, Apple, Dave Carlton, Fraser Hess.

At the end of October 2010 Apple announced the App Store for Mac. The App Store will put a receipt into your app bundle, but 
won't implement any copy protection scheme. For details see [Validating App Store Receipts](https://developer.apple.com/devcenter/mac/documents/validating.html) (Developer membership needed)

Unfortunately this document doesn't tell you how to process this receipt in detail, quote:

    The payload of the PKCS7 container is encoded using ASN.1, as described by ITU-T X.690.

This validator parses and validates the payload not the PKCS7 container itself (well, not yet. Any help appreciated) 

Thanks to Matthew Stevens for coming up with the parser code. Thanks to Dave Carlton for polishing it a bit.

Missing from this project: 

- Apple's example receipt. (I WON'T ADD IT HERE, APPLE WON'T LIKE THAT, SO DON'T ASK!)
- Code that verifies the receipt itself as a PKCS7 certificate (TODO)
- Any measures to make your app cracker proof.

## Installation

If you have an app that is more or less ready for the App Store, I think you will be able figure it out. Important is that you link with libcrypto and IOKit.framework when only using the core files.

## Using It

Be aware that there will be people trying to crack your app. So cover your tracks. I won't go into details but Blocks and Grand Central Dispatch seem to be good tools for that.
