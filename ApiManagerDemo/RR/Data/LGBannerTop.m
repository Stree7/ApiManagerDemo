//
//	LGBannerTop.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "LGBannerTop.h"

NSString *const kLGBannerTopIdField = @"id";
NSString *const kLGBannerTopImgUrl = @"imgUrl";
NSString *const kLGBannerTopRedirectUrl = @"redirectUrl";
NSString *const kLGBannerTopSequence = @"sequence";
NSString *const kLGBannerTopTargetUrl = @"targetUrl";
NSString *const kLGBannerTopTitle = @"title";
NSString *const kLGBannerTopType = @"type";

@interface LGBannerTop ()
@end
@implementation LGBannerTop




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kLGBannerTopIdField] isKindOfClass:[NSNull class]]){
		self.idField = [dictionary[kLGBannerTopIdField] integerValue];
	}

	if(![dictionary[kLGBannerTopImgUrl] isKindOfClass:[NSNull class]]){
		self.imgUrl = dictionary[kLGBannerTopImgUrl];
	}	
	if(![dictionary[kLGBannerTopRedirectUrl] isKindOfClass:[NSNull class]]){
		self.redirectUrl = dictionary[kLGBannerTopRedirectUrl];
	}	
	if(![dictionary[kLGBannerTopSequence] isKindOfClass:[NSNull class]]){
		self.sequence = [dictionary[kLGBannerTopSequence] integerValue];
	}

	if(![dictionary[kLGBannerTopTargetUrl] isKindOfClass:[NSNull class]]){
		self.targetUrl = dictionary[kLGBannerTopTargetUrl];
	}	
	if(![dictionary[kLGBannerTopTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kLGBannerTopTitle];
	}	
	if(![dictionary[kLGBannerTopType] isKindOfClass:[NSNull class]]){
		self.type = dictionary[kLGBannerTopType];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kLGBannerTopIdField] = @(self.idField);
	if(self.imgUrl != nil){
		dictionary[kLGBannerTopImgUrl] = self.imgUrl;
	}
	if(self.redirectUrl != nil){
		dictionary[kLGBannerTopRedirectUrl] = self.redirectUrl;
	}
	dictionary[kLGBannerTopSequence] = @(self.sequence);
	if(self.targetUrl != nil){
		dictionary[kLGBannerTopTargetUrl] = self.targetUrl;
	}
	if(self.title != nil){
		dictionary[kLGBannerTopTitle] = self.title;
	}
	if(self.type != nil){
		dictionary[kLGBannerTopType] = self.type;
	}
	return dictionary;

}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
	[aCoder encodeObject:@(self.idField) forKey:kLGBannerTopIdField];	if(self.imgUrl != nil){
		[aCoder encodeObject:self.imgUrl forKey:kLGBannerTopImgUrl];
	}
	if(self.redirectUrl != nil){
		[aCoder encodeObject:self.redirectUrl forKey:kLGBannerTopRedirectUrl];
	}
	[aCoder encodeObject:@(self.sequence) forKey:kLGBannerTopSequence];	if(self.targetUrl != nil){
		[aCoder encodeObject:self.targetUrl forKey:kLGBannerTopTargetUrl];
	}
	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kLGBannerTopTitle];
	}
	if(self.type != nil){
		[aCoder encodeObject:self.type forKey:kLGBannerTopType];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.idField = [[aDecoder decodeObjectForKey:kLGBannerTopIdField] integerValue];
	self.imgUrl = [aDecoder decodeObjectForKey:kLGBannerTopImgUrl];
	self.redirectUrl = [aDecoder decodeObjectForKey:kLGBannerTopRedirectUrl];
	self.sequence = [[aDecoder decodeObjectForKey:kLGBannerTopSequence] integerValue];
	self.targetUrl = [aDecoder decodeObjectForKey:kLGBannerTopTargetUrl];
	self.title = [aDecoder decodeObjectForKey:kLGBannerTopTitle];
	self.type = [aDecoder decodeObjectForKey:kLGBannerTopType];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	LGBannerTop *copy = [LGBannerTop new];

	copy.idField = self.idField;
	copy.imgUrl = [self.imgUrl copy];
	copy.redirectUrl = [self.redirectUrl copy];
	copy.sequence = self.sequence;
	copy.targetUrl = [self.targetUrl copy];
	copy.title = [self.title copy];
	copy.type = [self.type copy];

	return copy;
}
@end