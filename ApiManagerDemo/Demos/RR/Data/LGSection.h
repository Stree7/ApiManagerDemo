#import <UIKit/UIKit.h>
#import "LGTopVideo.h"
#import "LGAdvertise.h"
@interface LGSection : NSObject

@property (nonatomic, strong) NSArray * content;
@property (nonatomic, strong) NSString * display;
@property (nonatomic, assign) NSInteger idField;
@property (nonatomic, strong) NSObject * moreTarget;
@property (nonatomic, strong) NSString * moreText;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * sectionType;
@property (nonatomic, assign) NSInteger sequence;
@property (nonatomic, strong) NSObject * titleImg;
@property (nonatomic, assign) NSInteger videoCount;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end
