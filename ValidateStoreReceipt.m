#import <Foundation/Foundation.h>

#import "validatereceipt.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	// put the example receipt on the desktop (or change that path)
	NSString * pathToReceipt = @"~/Desktop/receipt";
	
	// in your own code you have to do:
	// NSString * pathToReceipt = [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"Contents/_MASReceipt/receipt"];
	// this example is not a bundle so it wont work here.
	
	if (!validateReceiptAtPath(pathToReceipt))
		exit(173);
	
    NSLog(@"Hello, correctly validated World!");
    [pool drain];
    return 0;
}
