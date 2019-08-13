#include "CNRRootListController.h"
#include "spawn.h"
#include "signal.h"

@implementation CNRRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

-(void)respring{
    pid_t respringID;
    char *argv[] = {"/usr/bin/killall", "backboardd", NULL};
    posix_spawn(&respringID, argv[0], NULL, NULL, argv, NULL);
	waitpid(respringID, NULL, WEXITED);
}


-(void)discord{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://discord.gg/3Xqqn4a"]];
}

-(void)twitter{
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/castyte"]];
}

@end

@implementation PageTitle
- (id)specifiers {
    if (_specifiers == nil) {
        _specifiers = [self loadSpecifiersFromPlistName:@"page-title" target:self];
    }
    return _specifiers;
}
@end

@implementation PageBody
- (id)specifiers {
    if (_specifiers == nil) {
        _specifiers = [self loadSpecifiersFromPlistName:@"page-body" target:self];
    }
    return _specifiers;
}
@end