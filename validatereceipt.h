//
//  validatereceipt.h
//
//  Created by Ruotger Skupin on 23.10.10.
//  Copyright 2010 Matthew Stevens, Ruotger Skupin, Apple. All rights reserved.
//

#import <Foundation/Foundation.h>


extern NSString *kReceiptBundleIdentifer;
extern NSString *kReceiptBundleIdentiferData;
extern NSString *kReceiptVersion;
extern NSString *kReceiptOpaqueValue;
extern NSString *kReceiptHash;

CFDataRef copy_mac_address(void);

NSDictionary * dictionaryWithAppStoreReceipt(NSString * path);
BOOL validateReceiptAtPath(NSString * path);

