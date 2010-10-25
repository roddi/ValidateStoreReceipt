# ValidateStoreReceipt
Matthew Stevens, Ruotger Skupin, Apple, Dave Carlton.<br/>

End of october 2010 Apple announced the App Store for Mac. The App Store will put a receipt into your app bundle, but 
wouldn't implement any copy protection scheme. for details see https://developer.apple.com/devcenter/mac/documents/validating.html

Unfortunately they don't tell you how to process this receipt in detail, quote:

    The payload of the PKCS7 container is encoded using ASN.1, as described by ITU-T X.690.

This validator parses and validates the payload not the PKCS7 container itself (well, not yet. Any help appreciated) 


Missing from this project: 

- Apples example receipt. (I WONT ADD IT HERE, APPLE WONT LIKE THAT, SO DON'T ASK!)
- Code that verifies the receipt itself as a PKCS7 certificate (TODO)

## Installation

If you have an app that is more or less ready for the app store, I think you will be able figure it out.

## Using It

Be aware that there will be people trying to crack your app. So cover your tracks. I wont go into details but Blocks and Grand Central Dispatch seem to be good tools for that.
