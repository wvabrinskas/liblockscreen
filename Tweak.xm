#import "libLockScreen.h"

@interface SBLockScreenScrollView : UIScrollView

@end

@interface SBLockScreenView
-(void)didMoveToWindow;
@end


%hook SBLockScreenView 

-(void)didMoveToWindow {

	SBLockScreenScrollView *scroll = MSHookIvar <SBLockScreenScrollView *>(self , "_foregroundScrollView");

	[[%c(LLClass) alloc] addToLockScreenView:scroll];

	%orig;

}


%end