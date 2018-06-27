#import <UIKit/UIKit.h>

@interface LGBannerTop : NSObject

@property (nonatomic, assign) NSInteger idField;
@property (nonatomic, strong) NSString * imgUrl;
@property (nonatomic, strong) NSString * redirectUrl;
@property (nonatomic, assign) NSInteger sequence;
@property (nonatomic, strong) NSString * targetUrl;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) NSString * type;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end