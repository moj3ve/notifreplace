@interface NSUserDefaults (UFS_Category)
- (id)objectForKey:(NSString *)key inDomain:(NSString *)domain;
- (void)setObject:(id)value forKey:(NSString *)key inDomain:(NSString *)domain;
@end

static NSString *domainStr = @"com.castyte.notifreplace";
NSString *title_mode;
NSString *title_searchstr;
NSString *title_replacewith;
NSString *body_mode;
NSString *body_searchstr;
NSString *body_replacewith;