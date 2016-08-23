#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#include <substrate.h>

%hook SBAppSwitcherPeopleScrollView

- (void)layoutSubviews
{
	%orig;
	[self setHidden: true];
}

%end
