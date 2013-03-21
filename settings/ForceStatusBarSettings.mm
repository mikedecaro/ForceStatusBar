#import <sys/sysctl.h> 
#import <Preferences/Preferences.h>

@interface ForceStatusBarSettingsListController: PSListController <UINavigationControllerDelegate> {}

@end

@implementation ForceStatusBarSettingsListController

- (id)specifiers
{
    if (_specifiers == nil)
    {
        _specifiers = [[self loadSpecifiersFromPlistName:@"ForceStatusBarSettings" target:self] retain];
    }
    return _specifiers;
}

@end

// vim:ft=objc

