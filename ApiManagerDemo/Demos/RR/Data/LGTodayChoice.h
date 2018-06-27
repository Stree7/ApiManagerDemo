#import <UIKit/UIKit.h>
#import "LGBannerTop.h"
#import "LGBannerTop.h"
#import "LGBannerTop.h"
#import "LGSection.h"

@interface LGTodayChoice : NSObject

@property (nonatomic, strong) NSArray * bannerTop;
@property (nonatomic, strong) NSArray * littleBean;
@property (nonatomic, strong) NSArray * notice;
@property (nonatomic, strong) NSArray * sections;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end
