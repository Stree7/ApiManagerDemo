#import <UIKit/UIKit.h>

@interface LGTopVideo : NSObject

@property (nonatomic, strong) NSString * cover;
@property (nonatomic, strong) NSString * duration;
@property (nonatomic, assign) NSInteger idField;
@property (nonatomic, strong) NSString * playLink;
@property (nonatomic, strong) NSString * title;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end