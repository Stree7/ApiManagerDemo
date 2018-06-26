//
//	LGTopVideo.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "LGTopVideo.h"

NSString *const kLGTopVideoCover = @"cover";
NSString *const kLGTopVideoDuration = @"duration";
NSString *const kLGTopVideoIdField = @"id";
NSString *const kLGTopVideoPlayLink = @"playLink";
NSString *const kLGTopVideoTitle = @"title";

@interface LGTopVideo ()
@end
@implementation LGTopVideo




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kLGTopVideoCover] isKindOfClass:[NSNull class]]){
		self.cover = dictionary[kLGTopVideoCover];
	}	
	if(![dictionary[kLGTopVideoDuration] isKindOfClass:[NSNull class]]){
		self.duration = dictionary[kLGTopVideoDuration];
	}	
	if(![dictionary[kLGTopVideoIdField] isKindOfClass:[NSNull class]]){
		self.idField = [dictionary[kLGTopVideoIdField] integerValue];
	}

	if(![dictionary[kLGTopVideoPlayLink] isKindOfClass:[NSNull class]]){
		self.playLink = dictionary[kLGTopVideoPlayLink];
	}	
	if(![dictionary[kLGTopVideoTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kLGTopVideoTitle];
	}	
	return self;
}
@end