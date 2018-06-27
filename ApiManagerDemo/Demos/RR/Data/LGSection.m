//
//	LGSection.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "LGSection.h"

NSString *const kLGSectionContent = @"content";
NSString *const kLGSectionDisplay = @"display";
NSString *const kLGSectionIdField = @"id";
NSString *const kLGSectionMoreTarget = @"moreTarget";
NSString *const kLGSectionMoreText = @"moreText";
NSString *const kLGSectionName = @"name";
NSString *const kLGSectionSectionType = @"sectionType";
NSString *const kLGSectionSequence = @"sequence";
NSString *const kLGSectionTitleImg = @"titleImg";
NSString *const kLGSectionVideoCount = @"videoCount";

@interface LGSection ()
@end
@implementation LGSection




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(dictionary[kLGSectionContent] != nil && [dictionary[kLGSectionContent] isKindOfClass:[NSArray class]]){
		NSArray * contentDictionaries = dictionary[kLGSectionContent];
		NSMutableArray * contentItems = [NSMutableArray array];
		for(NSDictionary * contentDictionary in contentDictionaries){
            LGTopVideo * contentItem = [[LGTopVideo alloc] initWithDictionary:contentDictionary];
            if (contentItem.cover == nil) {
                contentItem = (id)[[LGAdvertise alloc] initWithDictionary:contentDictionary];
            }
			[contentItems addObject:contentItem];
		}
		self.content = contentItems;
	}
	if(![dictionary[kLGSectionDisplay] isKindOfClass:[NSNull class]]){
		self.display = dictionary[kLGSectionDisplay];
	}	
	if(![dictionary[kLGSectionIdField] isKindOfClass:[NSNull class]]){
		self.idField = [dictionary[kLGSectionIdField] integerValue];
	}

	if(![dictionary[kLGSectionMoreTarget] isKindOfClass:[NSNull class]]){
		self.moreTarget = dictionary[kLGSectionMoreTarget];
	}	
	if(![dictionary[kLGSectionMoreText] isKindOfClass:[NSNull class]]){
		self.moreText = dictionary[kLGSectionMoreText];
	}	
	if(![dictionary[kLGSectionName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kLGSectionName];
	}	
	if(![dictionary[kLGSectionSectionType] isKindOfClass:[NSNull class]]){
		self.sectionType = dictionary[kLGSectionSectionType];
	}	
	if(![dictionary[kLGSectionSequence] isKindOfClass:[NSNull class]]){
		self.sequence = [dictionary[kLGSectionSequence] integerValue];
	}

	if(![dictionary[kLGSectionTitleImg] isKindOfClass:[NSNull class]]){
		self.titleImg = dictionary[kLGSectionTitleImg];
	}	
	if(![dictionary[kLGSectionVideoCount] isKindOfClass:[NSNull class]]){
		self.videoCount = [dictionary[kLGSectionVideoCount] integerValue];
	}

	return self;
}
@end
