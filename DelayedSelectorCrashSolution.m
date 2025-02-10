To fix this, you need to ensure that the object receiving the delayed message remains in memory until after the message is executed.  One common approach is to use a weak reference to the object:

```objectivec
@interface MyObject : NSObject
@property (weak) MyObject *selfWeakRef;
@end

@implementation MyObject
- (void)myMethodWithArg:(NSString *)arg {
    NSLog(@