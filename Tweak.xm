
#import <UIKit/UIKit.h>
#import <SpringBoard/SpringBoard.h>

static BOOL checkForcedApp(NSString* currentBundleId)
{
    BOOL found = NO;

    NSDictionary *appDict = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.decaro.forcestatusbar_apps.plist"];
    for(NSString* key in appDict) {

        BOOL value = [[appDict objectForKey:key] boolValue];
        if(value) {

            NSString *search = @"FSB-";
            NSString *forcedBundleId = [key substringFromIndex:NSMaxRange([key rangeOfString:search])];

            if ([forcedBundleId isEqualToString:currentBundleId]) {
                found = YES;
                break;
            }

        }

    }

    return found;
}

%hook UIApplication

-(void)_reportAppLaunchFinished {

    %orig;
    
    NSString *ident = [[NSBundle mainBundle] bundleIdentifier];
    if (checkForcedApp(ident)) {
        [self setStatusBarHidden:NO withAnimation:UIStatusBarAnimationNone];
        
        UIWindow *win = [self.windows objectAtIndex:0];
        [win.rootViewController.view setFrame:[win.screen applicationFrame]];
    }
    
}

%end
