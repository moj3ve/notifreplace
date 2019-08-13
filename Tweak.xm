#import <Foundation/NSUserDefaults.h>
#include "Preferences/PSSpecifier.h"
#include "Tweak.h"

%hook NCNotificationContentView

-(void)setPrimaryText:(NSString *)arg1 {
    if([title_mode isEqualToString:@"replacestr"]){
        %orig([arg1 stringByReplacingOccurrencesOfString:title_searchstr withString:title_replacewith]);
    } else if([title_mode isEqualToString:@"replaceall"]){
        %orig(title_replacewith);
    } else {
        %orig();
    }
}

-(void)setSecondaryText:(NSString *)arg1 {
    if([body_mode isEqualToString:@"replacestr"]){
        %orig([arg1 stringByReplacingOccurrencesOfString:body_searchstr withString:body_replacewith]);
    } else if([body_mode isEqualToString:@"replaceall"]){
        %orig(body_replacewith);
    } else {
        %orig();
    }
}

%end

%ctor {
    title_mode = [[NSUserDefaults standardUserDefaults] objectForKey:@"title_mode" inDomain:domainStr];
    title_searchstr = [[NSUserDefaults standardUserDefaults] objectForKey:@"title_searchstr" inDomain:domainStr];
    title_replacewith = [[NSUserDefaults standardUserDefaults] objectForKey:@"title_replacewith" inDomain:domainStr];

    body_mode = [[NSUserDefaults standardUserDefaults] objectForKey:@"body_mode" inDomain:domainStr];
    body_searchstr = [[NSUserDefaults standardUserDefaults] objectForKey:@"body_searchstr" inDomain:domainStr];
    body_replacewith = [[NSUserDefaults standardUserDefaults] objectForKey:@"body_replacewith" inDomain:domainStr];
}