//
//	LGContent.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "LGContent.h"

NSString *const kLGContentcover = @"cover";
NSString *const kLGContentduration = @"description";
NSString *const kLGContentIdField = @"id";
NSString *const kLGContentplayLink = @"playLink";
NSString *const kLGContenttitle = @"title";

@interface LGContent ()
@end
@implementation LGContent




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kLGContentcover] isKindOfClass:[NSNull class]]){
		self.cover = dictionary[kLGContentcover];
	}	
	if(![dictionary[kLGContentduration] isKindOfClass:[NSNull class]]){
		self.duration = dictionary[kLGContentduration];
	}	
	if(![dictionary[kLGContentIdField] isKindOfClass:[NSNull class]]){
		self.idField = [dictionary[kLGContentIdField] integerValue];
	}

	if(![dictionary[kLGContentplayLink] isKindOfClass:[NSNull class]]){
		self.playLink = dictionary[kLGContentplayLink];
	}	
	if(dictionary[kLGContenttitle] != nil && [dictionary[kLGContenttitle] isKindOfClass:[NSArray class]]){
		NSArray * titleDictionaries = dictionary[kLGContenttitle];
		NSMutableArray * titleItems = [NSMutableArray array];
		for(NSDictionary * titleDictionary in titleDictionaries){
			LGTopVideo * titleItem = [[LGTopVideo alloc] initWithDictionary:titleDictionary];
			[titleItems addObject:titleItem];
		}
		self.title = titleItems;
	}
	return self;
}
@end
