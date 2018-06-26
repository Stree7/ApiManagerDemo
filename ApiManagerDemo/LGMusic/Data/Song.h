#import <UIKit/UIKit.h>

@interface Song : NSObject

@property (nonatomic, strong) NSString * album10001000;
@property (nonatomic, strong) NSString * album500500;
@property (nonatomic, strong) NSString * album800800;
@property (nonatomic, strong) NSString * albumId;
@property (nonatomic, strong) NSString * albumNo;
@property (nonatomic, strong) NSString * albumTitle;
@property (nonatomic, strong) NSString * allArtistId;
@property (nonatomic, strong) NSString * allArtistTingUid;
@property (nonatomic, strong) NSString * allRate;
@property (nonatomic, strong) NSString * area;
@property (nonatomic, strong) NSString * artistId;
@property (nonatomic, strong) NSString * artistName;
@property (nonatomic, strong) NSString * author;
@property (nonatomic, strong) NSString * biaoshi;
@property (nonatomic, strong) NSString * bitrateFee;
@property (nonatomic, assign) NSInteger charge;
@property (nonatomic, strong) NSString * country;
@property (nonatomic, strong) NSString * delStatus;
@property (nonatomic, assign) NSInteger fileDuration;
@property (nonatomic, strong) NSString * hasFilmtv;
@property (nonatomic, assign) NSInteger hasMv;
@property (nonatomic, assign) NSInteger hasMvMobile;
@property (nonatomic, assign) NSInteger havehigh;
@property (nonatomic, strong) NSString * hot;
@property (nonatomic, strong) NSString * info;
@property (nonatomic, assign) NSInteger isFirstPublish;
@property (nonatomic, strong) NSString * isNew;
@property (nonatomic, strong) NSString * koreanBbSong;
@property (nonatomic, strong) NSString * language;
@property (nonatomic, assign) NSInteger learn;
@property (nonatomic, strong) NSString * lrclink;
@property (nonatomic, strong) NSString * mvProvider;
@property (nonatomic, strong) NSString * piaoId;
@property (nonatomic, strong) NSString * picBig;
@property (nonatomic, strong) NSString * picHuge;
@property (nonatomic, strong) NSString * picPremium;
@property (nonatomic, strong) NSString * picRadio;
@property (nonatomic, strong) NSString * picS500;
@property (nonatomic, strong) NSString * picSmall;
@property (nonatomic, strong) NSString * publishtime;
@property (nonatomic, strong) NSString * rank;
@property (nonatomic, strong) NSString * rankChange;
@property (nonatomic, strong) NSString * relateStatus;
@property (nonatomic, strong) NSString * resEncryptionFlag;
@property (nonatomic, strong) NSString * resourceType;
@property (nonatomic, strong) NSString * resourceTypeExt;
@property (nonatomic, strong) NSString * siProxycompany;
@property (nonatomic, strong) NSString * songId;
@property (nonatomic, strong) NSString * songSource;
@property (nonatomic, strong) NSString * style;
@property (nonatomic, strong) NSString * tingUid;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) NSString * toneid;
@property (nonatomic, strong) NSString * versions;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
-(NSDictionary *)toDictionary;
@end
