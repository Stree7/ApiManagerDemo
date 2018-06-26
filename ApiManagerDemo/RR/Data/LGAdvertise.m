//
//	LGAdvertise.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "LGAdvertise.h"

NSString *const kLGAdvertiseAdvid = @"advid";
NSString *const kLGAdvertiseCover = @"cover";
NSString *const kLGAdvertiseImageUrl = @"imageUrl";
NSString *const kLGAdvertiseMonitorUrl = @"monitorUrl";
NSString *const kLGAdvertiseObjId = @"objId";
NSString *const kLGAdvertiseObjSource = @"objSource";
NSString *const kLGAdvertiseObjType = @"objType";
NSString *const kLGAdvertisePositionId = @"positionId";
NSString *const kLGAdvertiseRedirectUrl = @"redirectUrl";
NSString *const kLGAdvertiseSdktype = @"sdktype";
NSString *const kLGAdvertiseSequence = @"sequence";
NSString *const kLGAdvertiseTargetType = @"targetType";
NSString *const kLGAdvertiseTargetUrl = @"targetUrl";
NSString *const kLGAdvertiseTitle = @"title";

@interface LGAdvertise ()
@end
@implementation LGAdvertise




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kLGAdvertiseAdvid] isKindOfClass:[NSNull class]]){
		self.advid = dictionary[kLGAdvertiseAdvid];
	}	
	if(![dictionary[kLGAdvertiseCover] isKindOfClass:[NSNull class]]){
		self.cover = dictionary[kLGAdvertiseCover];
	}	
	if(![dictionary[kLGAdvertiseImageUrl] isKindOfClass:[NSNull class]]){
		self.imageUrl = dictionary[kLGAdvertiseImageUrl];
	}	
	if(![dictionary[kLGAdvertiseMonitorUrl] isKindOfClass:[NSNull class]]){
		self.monitorUrl = dictionary[kLGAdvertiseMonitorUrl];
	}	
	if(![dictionary[kLGAdvertiseObjId] isKindOfClass:[NSNull class]]){
		self.objId = [dictionary[kLGAdvertiseObjId] integerValue];
	}

	if(![dictionary[kLGAdvertiseObjSource] isKindOfClass:[NSNull class]]){
		self.objSource = dictionary[kLGAdvertiseObjSource];
	}	
	if(![dictionary[kLGAdvertiseObjType] isKindOfClass:[NSNull class]]){
		self.objType = dictionary[kLGAdvertiseObjType];
	}	
	if(![dictionary[kLGAdvertisePositionId] isKindOfClass:[NSNull class]]){
		self.positionId = [dictionary[kLGAdvertisePositionId] integerValue];
	}

	if(![dictionary[kLGAdvertiseRedirectUrl] isKindOfClass:[NSNull class]]){
		self.redirectUrl = dictionary[kLGAdvertiseRedirectUrl];
	}	
	if(![dictionary[kLGAdvertiseSdktype] isKindOfClass:[NSNull class]]){
		self.sdktype = dictionary[kLGAdvertiseSdktype];
	}	
	if(![dictionary[kLGAdvertiseSequence] isKindOfClass:[NSNull class]]){
		self.sequence = [dictionary[kLGAdvertiseSequence] integerValue];
	}

	if(![dictionary[kLGAdvertiseTargetType] isKindOfClass:[NSNull class]]){
		self.targetType = dictionary[kLGAdvertiseTargetType];
	}	
	if(![dictionary[kLGAdvertiseTargetUrl] isKindOfClass:[NSNull class]]){
		self.targetUrl = dictionary[kLGAdvertiseTargetUrl];
	}	
	if(![dictionary[kLGAdvertiseTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kLGAdvertiseTitle];
	}	
	return self;
}
@end