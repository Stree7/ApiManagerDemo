//
//	LGData.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "LGTodayChoice.h"

NSString *const kLGDataBannerTop = @"bannerTop";
NSString *const kLGDataLittleBean = @"littleBean";
NSString *const kLGDataNotice = @"notice";
NSString *const kLGDataSections = @"sections";

@interface LGTodayChoice ()
@end
@implementation LGTodayChoice




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(dictionary[kLGDataBannerTop] != nil && [dictionary[kLGDataBannerTop] isKindOfClass:[NSArray class]]){
		NSArray * bannerTopDictionaries = dictionary[kLGDataBannerTop];
		NSMutableArray * bannerTopItems = [NSMutableArray array];
		for(NSDictionary * bannerTopDictionary in bannerTopDictionaries){
			LGBannerTop * bannerTopItem = [[LGBannerTop alloc] initWithDictionary:bannerTopDictionary];
			[bannerTopItems addObject:bannerTopItem];
		}
		self.bannerTop = bannerTopItems;
	}
	if(dictionary[kLGDataLittleBean] != nil && [dictionary[kLGDataLittleBean] isKindOfClass:[NSArray class]]){
		NSArray * littleBeanDictionaries = dictionary[kLGDataLittleBean];
		NSMutableArray * littleBeanItems = [NSMutableArray array];
		for(NSDictionary * littleBeanDictionary in littleBeanDictionaries){
			LGBannerTop * littleBeanItem = [[LGBannerTop alloc] initWithDictionary:littleBeanDictionary];
			[littleBeanItems addObject:littleBeanItem];
		}
		self.littleBean = littleBeanItems;
	}
	if(dictionary[kLGDataNotice] != nil && [dictionary[kLGDataNotice] isKindOfClass:[NSArray class]]){
		NSArray * noticeDictionaries = dictionary[kLGDataNotice];
		NSMutableArray * noticeItems = [NSMutableArray array];
		for(NSDictionary * noticeDictionary in noticeDictionaries){
			LGBannerTop * noticeItem = [[LGBannerTop alloc] initWithDictionary:noticeDictionary];
			[noticeItems addObject:noticeItem];
		}
		self.notice = noticeItems;
	}
	if(dictionary[kLGDataSections] != nil && [dictionary[kLGDataSections] isKindOfClass:[NSArray class]]){
		NSArray * sectionsDictionaries = dictionary[kLGDataSections];
		NSMutableArray * sectionsItems = [NSMutableArray array];
		for(NSDictionary * sectionsDictionary in sectionsDictionaries){
			LGSection * sectionsItem = [[LGSection alloc] initWithDictionary:sectionsDictionary];
			[sectionsItems addObject:sectionsItem];
		}
		self.sections = sectionsItems;
	}
	return self;
}
@end
