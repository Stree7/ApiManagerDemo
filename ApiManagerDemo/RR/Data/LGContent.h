#import <UIKit/UIKit.h>
#import "LGTopVideo.h"

@interface LGContent : NSObject

@property (nonatomic, strong) NSString * cover;
@property (nonatomic, strong) NSString * duration;
@property (nonatomic, assign) NSInteger idField;
@property (nonatomic, strong) NSString * playLink;
@property (nonatomic, strong) NSArray * title;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end
