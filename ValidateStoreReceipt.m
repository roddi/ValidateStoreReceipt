#import <Foundation/Foundation.h>

#import "validatereceipt.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	// put the example receipt on the desktop (or change that path)
	if (!validateReceiptAtPath(@"~/Desktop/Receipt"))
		exit(173);
	
    // insert code here...
    NSLog(@"Hello, World!");
    [pool drain];
    return 0;
}
