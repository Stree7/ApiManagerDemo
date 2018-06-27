#import <UIKit/UIKit.h>

@interface LGAdvertise : NSObject

@property (nonatomic, strong) NSString * advid;
@property (nonatomic, strong) NSObject * cover;
@property (nonatomic, strong) NSString * imageUrl;
@property (nonatomic, strong) NSString * monitorUrl;
@property (nonatomic, assign) NSInteger objId;
@property (nonatomic, strong) NSString * objSource;
@property (nonatomic, strong) NSString * objType;
@property (nonatomic, assign) NSInteger positionId;
@property (nonatomic, strong) NSString * redirectUrl;
@property (nonatomic, strong) NSString * sdktype;
@property (nonatomic, assign) NSInteger sequence;
@property (nonatomic, strong) NSString * targetType;
@property (nonatomic, strong) NSString * targetUrl;
@property (nonatomic, strong) NSString * title;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end