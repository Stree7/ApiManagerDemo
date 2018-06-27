//
//	SongList.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Song.h"

NSString *const kSongListAlbum10001000 = @"album_1000_1000";
NSString *const kSongListAlbum500500 = @"album_500_500";
NSString *const kSongListAlbum800800 = @"album_800_800";
NSString *const kSongListAlbumId = @"album_id";
NSString *const kSongListAlbumNo = @"album_no";
NSString *const kSongListAlbumTitle = @"album_title";
NSString *const kSongListAllArtistId = @"all_artist_id";
NSString *const kSongListAllArtistTingUid = @"all_artist_ting_uid";
NSString *const kSongListAllRate = @"all_rate";
NSString *const kSongListArea = @"area";
NSString *const kSongListArtistId = @"artist_id";
NSString *const kSongListArtistName = @"artist_name";
NSString *const kSongListAuthor = @"author";
NSString *const kSongListBiaoshi = @"biaoshi";
NSString *const kSongListBitrateFee = @"bitrate_fee";
NSString *const kSongListCharge = @"charge";
NSString *const kSongListCopyType = @"copy_type";
NSString *const kSongListCountry = @"country";
NSString *const kSongListDelStatus = @"del_status";
NSString *const kSongListFileDuration = @"file_duration";
NSString *const kSongListHasFilmtv = @"has_filmtv";
NSString *const kSongListHasMv = @"has_mv";
NSString *const kSongListHasMvMobile = @"has_mv_mobile";
NSString *const kSongListHavehigh = @"havehigh";
NSString *const kSongListHot = @"hot";
NSString *const kSongListInfo = @"info";
NSString *const kSongListIsFirstPublish = @"is_first_publish";
NSString *const kSongListIsNew = @"is_new";
NSString *const kSongListKoreanBbSong = @"korean_bb_song";
NSString *const kSongListLanguage = @"language";
NSString *const kSongListLearn = @"learn";
NSString *const kSongListLrclink = @"lrclink";
NSString *const kSongListMvProvider = @"mv_provider";
NSString *const kSongListPiaoId = @"piao_id";
NSString *const kSongListPicBig = @"pic_big";
NSString *const kSongListPicHuge = @"pic_huge";
NSString *const kSongListPicPremium = @"pic_premium";
NSString *const kSongListPicRadio = @"pic_radio";
NSString *const kSongListPicS500 = @"pic_s500";
NSString *const kSongListPicSmall = @"pic_small";
NSString *const kSongListPublishtime = @"publishtime";
NSString *const kSongListRank = @"rank";
NSString *const kSongListRankChange = @"rank_change";
NSString *const kSongListRelateStatus = @"relate_status";
NSString *const kSongListResEncryptionFlag = @"res_encryption_flag";
NSString *const kSongListResourceType = @"resource_type";
NSString *const kSongListResourceTypeExt = @"resource_type_ext";
NSString *const kSongListSiProxycompany = @"si_proxycompany";
NSString *const kSongListSongId = @"song_id";
NSString *const kSongListSongSource = @"song_source";
NSString *const kSongListStyle = @"style";
NSString *const kSongListTingUid = @"ting_uid";
NSString *const kSongListTitle = @"title";
NSString *const kSongListToneid = @"toneid";
NSString *const kSongListVersions = @"versions";

@interface Song ()
@end
@implementation Song




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kSongListAlbum10001000] isKindOfClass:[NSNull class]]){
		self.album10001000 = dictionary[kSongListAlbum10001000];
	}	
	if(![dictionary[kSongListAlbum500500] isKindOfClass:[NSNull class]]){
		self.album500500 = dictionary[kSongListAlbum500500];
	}	
	if(![dictionary[kSongListAlbum800800] isKindOfClass:[NSNull class]]){
		self.album800800 = dictionary[kSongListAlbum800800];
	}	
	if(![dictionary[kSongListAlbumId] isKindOfClass:[NSNull class]]){
		self.albumId = dictionary[kSongListAlbumId];
	}	
	if(![dictionary[kSongListAlbumNo] isKindOfClass:[NSNull class]]){
		self.albumNo = dictionary[kSongListAlbumNo];
	}	
	if(![dictionary[kSongListAlbumTitle] isKindOfClass:[NSNull class]]){
		self.albumTitle = dictionary[kSongListAlbumTitle];
	}	
	if(![dictionary[kSongListAllArtistId] isKindOfClass:[NSNull class]]){
		self.allArtistId = dictionary[kSongListAllArtistId];
	}	
	if(![dictionary[kSongListAllArtistTingUid] isKindOfClass:[NSNull class]]){
		self.allArtistTingUid = dictionary[kSongListAllArtistTingUid];
	}	
	if(![dictionary[kSongListAllRate] isKindOfClass:[NSNull class]]){
		self.allRate = dictionary[kSongListAllRate];
	}	
	if(![dictionary[kSongListArea] isKindOfClass:[NSNull class]]){
		self.area = dictionary[kSongListArea];
	}	
	if(![dictionary[kSongListArtistId] isKindOfClass:[NSNull class]]){
		self.artistId = dictionary[kSongListArtistId];
	}	
	if(![dictionary[kSongListArtistName] isKindOfClass:[NSNull class]]){
		self.artistName = dictionary[kSongListArtistName];
	}	
	if(![dictionary[kSongListAuthor] isKindOfClass:[NSNull class]]){
		self.author = dictionary[kSongListAuthor];
	}	
	if(![dictionary[kSongListBiaoshi] isKindOfClass:[NSNull class]]){
		self.biaoshi = dictionary[kSongListBiaoshi];
	}	
	if(![dictionary[kSongListBitrateFee] isKindOfClass:[NSNull class]]){
		self.bitrateFee = dictionary[kSongListBitrateFee];
	}	
	if(![dictionary[kSongListCharge] isKindOfClass:[NSNull class]]){
		self.charge = [dictionary[kSongListCharge] integerValue];
	}
	if(![dictionary[kSongListCountry] isKindOfClass:[NSNull class]]){
		self.country = dictionary[kSongListCountry];
	}	
	if(![dictionary[kSongListDelStatus] isKindOfClass:[NSNull class]]){
		self.delStatus = dictionary[kSongListDelStatus];
	}	
	if(![dictionary[kSongListFileDuration] isKindOfClass:[NSNull class]]){
		self.fileDuration = [dictionary[kSongListFileDuration] integerValue];
	}

	if(![dictionary[kSongListHasFilmtv] isKindOfClass:[NSNull class]]){
		self.hasFilmtv = dictionary[kSongListHasFilmtv];
	}	
	if(![dictionary[kSongListHasMv] isKindOfClass:[NSNull class]]){
		self.hasMv = [dictionary[kSongListHasMv] integerValue];
	}

	if(![dictionary[kSongListHasMvMobile] isKindOfClass:[NSNull class]]){
		self.hasMvMobile = [dictionary[kSongListHasMvMobile] integerValue];
	}

	if(![dictionary[kSongListHavehigh] isKindOfClass:[NSNull class]]){
		self.havehigh = [dictionary[kSongListHavehigh] integerValue];
	}

	if(![dictionary[kSongListHot] isKindOfClass:[NSNull class]]){
		self.hot = dictionary[kSongListHot];
	}	
	if(![dictionary[kSongListInfo] isKindOfClass:[NSNull class]]){
		self.info = dictionary[kSongListInfo];
	}	
	if(![dictionary[kSongListIsFirstPublish] isKindOfClass:[NSNull class]]){
		self.isFirstPublish = [dictionary[kSongListIsFirstPublish] integerValue];
	}

	if(![dictionary[kSongListIsNew] isKindOfClass:[NSNull class]]){
		self.isNew = dictionary[kSongListIsNew];
	}	
	if(![dictionary[kSongListKoreanBbSong] isKindOfClass:[NSNull class]]){
		self.koreanBbSong = dictionary[kSongListKoreanBbSong];
	}	
	if(![dictionary[kSongListLanguage] isKindOfClass:[NSNull class]]){
		self.language = dictionary[kSongListLanguage];
	}	
	if(![dictionary[kSongListLearn] isKindOfClass:[NSNull class]]){
		self.learn = [dictionary[kSongListLearn] integerValue];
	}

	if(![dictionary[kSongListLrclink] isKindOfClass:[NSNull class]]){
		self.lrclink = dictionary[kSongListLrclink];
	}	
	if(![dictionary[kSongListMvProvider] isKindOfClass:[NSNull class]]){
		self.mvProvider = dictionary[kSongListMvProvider];
	}	
	if(![dictionary[kSongListPiaoId] isKindOfClass:[NSNull class]]){
		self.piaoId = dictionary[kSongListPiaoId];
	}	
	if(![dictionary[kSongListPicBig] isKindOfClass:[NSNull class]]){
		self.picBig = dictionary[kSongListPicBig];
	}	
	if(![dictionary[kSongListPicHuge] isKindOfClass:[NSNull class]]){
		self.picHuge = dictionary[kSongListPicHuge];
	}	
	if(![dictionary[kSongListPicPremium] isKindOfClass:[NSNull class]]){
		self.picPremium = dictionary[kSongListPicPremium];
	}	
	if(![dictionary[kSongListPicRadio] isKindOfClass:[NSNull class]]){
		self.picRadio = dictionary[kSongListPicRadio];
	}	
	if(![dictionary[kSongListPicS500] isKindOfClass:[NSNull class]]){
		self.picS500 = dictionary[kSongListPicS500];
	}	
	if(![dictionary[kSongListPicSmall] isKindOfClass:[NSNull class]]){
		self.picSmall = dictionary[kSongListPicSmall];
	}	
	if(![dictionary[kSongListPublishtime] isKindOfClass:[NSNull class]]){
		self.publishtime = dictionary[kSongListPublishtime];
	}	
	if(![dictionary[kSongListRank] isKindOfClass:[NSNull class]]){
		self.rank = dictionary[kSongListRank];
	}	
	if(![dictionary[kSongListRankChange] isKindOfClass:[NSNull class]]){
		self.rankChange = dictionary[kSongListRankChange];
	}	
	if(![dictionary[kSongListRelateStatus] isKindOfClass:[NSNull class]]){
		self.relateStatus = dictionary[kSongListRelateStatus];
	}	
	if(![dictionary[kSongListResEncryptionFlag] isKindOfClass:[NSNull class]]){
		self.resEncryptionFlag = dictionary[kSongListResEncryptionFlag];
	}	
	if(![dictionary[kSongListResourceType] isKindOfClass:[NSNull class]]){
		self.resourceType = dictionary[kSongListResourceType];
	}	
	if(![dictionary[kSongListResourceTypeExt] isKindOfClass:[NSNull class]]){
		self.resourceTypeExt = dictionary[kSongListResourceTypeExt];
	}	
	if(![dictionary[kSongListSiProxycompany] isKindOfClass:[NSNull class]]){
		self.siProxycompany = dictionary[kSongListSiProxycompany];
	}	
	if(![dictionary[kSongListSongId] isKindOfClass:[NSNull class]]){
		self.songId = dictionary[kSongListSongId];
	}	
	if(![dictionary[kSongListSongSource] isKindOfClass:[NSNull class]]){
		self.songSource = dictionary[kSongListSongSource];
	}	
	if(![dictionary[kSongListStyle] isKindOfClass:[NSNull class]]){
		self.style = dictionary[kSongListStyle];
	}	
	if(![dictionary[kSongListTingUid] isKindOfClass:[NSNull class]]){
		self.tingUid = dictionary[kSongListTingUid];
	}	
	if(![dictionary[kSongListTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kSongListTitle];
	}	
	if(![dictionary[kSongListToneid] isKindOfClass:[NSNull class]]){
		self.toneid = dictionary[kSongListToneid];
	}	
	if(![dictionary[kSongListVersions] isKindOfClass:[NSNull class]]){
		self.versions = dictionary[kSongListVersions];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.album10001000 != nil){
		dictionary[kSongListAlbum10001000] = self.album10001000;
	}
	if(self.album500500 != nil){
		dictionary[kSongListAlbum500500] = self.album500500;
	}
	if(self.album800800 != nil){
		dictionary[kSongListAlbum800800] = self.album800800;
	}
	if(self.albumId != nil){
		dictionary[kSongListAlbumId] = self.albumId;
	}
	if(self.albumNo != nil){
		dictionary[kSongListAlbumNo] = self.albumNo;
	}
	if(self.albumTitle != nil){
		dictionary[kSongListAlbumTitle] = self.albumTitle;
	}
	if(self.allArtistId != nil){
		dictionary[kSongListAllArtistId] = self.allArtistId;
	}
	if(self.allArtistTingUid != nil){
		dictionary[kSongListAllArtistTingUid] = self.allArtistTingUid;
	}
	if(self.allRate != nil){
		dictionary[kSongListAllRate] = self.allRate;
	}
	if(self.area != nil){
		dictionary[kSongListArea] = self.area;
	}
	if(self.artistId != nil){
		dictionary[kSongListArtistId] = self.artistId;
	}
	if(self.artistName != nil){
		dictionary[kSongListArtistName] = self.artistName;
	}
	if(self.author != nil){
		dictionary[kSongListAuthor] = self.author;
	}
	if(self.biaoshi != nil){
		dictionary[kSongListBiaoshi] = self.biaoshi;
	}
	if(self.bitrateFee != nil){
		dictionary[kSongListBitrateFee] = self.bitrateFee;
	}
	dictionary[kSongListCharge] = @(self.charge);
	if(self.country != nil){
		dictionary[kSongListCountry] = self.country;
	}
	if(self.delStatus != nil){
		dictionary[kSongListDelStatus] = self.delStatus;
	}
	dictionary[kSongListFileDuration] = @(self.fileDuration);
	if(self.hasFilmtv != nil){
		dictionary[kSongListHasFilmtv] = self.hasFilmtv;
	}
	dictionary[kSongListHasMv] = @(self.hasMv);
	dictionary[kSongListHasMvMobile] = @(self.hasMvMobile);
	dictionary[kSongListHavehigh] = @(self.havehigh);
	if(self.hot != nil){
		dictionary[kSongListHot] = self.hot;
	}
	if(self.info != nil){
		dictionary[kSongListInfo] = self.info;
	}
	dictionary[kSongListIsFirstPublish] = @(self.isFirstPublish);
	if(self.isNew != nil){
		dictionary[kSongListIsNew] = self.isNew;
	}
	if(self.koreanBbSong != nil){
		dictionary[kSongListKoreanBbSong] = self.koreanBbSong;
	}
	if(self.language != nil){
		dictionary[kSongListLanguage] = self.language;
	}
	dictionary[kSongListLearn] = @(self.learn);
	if(self.lrclink != nil){
		dictionary[kSongListLrclink] = self.lrclink;
	}
	if(self.mvProvider != nil){
		dictionary[kSongListMvProvider] = self.mvProvider;
	}
	if(self.piaoId != nil){
		dictionary[kSongListPiaoId] = self.piaoId;
	}
	if(self.picBig != nil){
		dictionary[kSongListPicBig] = self.picBig;
	}
	if(self.picHuge != nil){
		dictionary[kSongListPicHuge] = self.picHuge;
	}
	if(self.picPremium != nil){
		dictionary[kSongListPicPremium] = self.picPremium;
	}
	if(self.picRadio != nil){
		dictionary[kSongListPicRadio] = self.picRadio;
	}
	if(self.picS500 != nil){
		dictionary[kSongListPicS500] = self.picS500;
	}
	if(self.picSmall != nil){
		dictionary[kSongListPicSmall] = self.picSmall;
	}
	if(self.publishtime != nil){
		dictionary[kSongListPublishtime] = self.publishtime;
	}
	if(self.rank != nil){
		dictionary[kSongListRank] = self.rank;
	}
	if(self.rankChange != nil){
		dictionary[kSongListRankChange] = self.rankChange;
	}
	if(self.relateStatus != nil){
		dictionary[kSongListRelateStatus] = self.relateStatus;
	}
	if(self.resEncryptionFlag != nil){
		dictionary[kSongListResEncryptionFlag] = self.resEncryptionFlag;
	}
	if(self.resourceType != nil){
		dictionary[kSongListResourceType] = self.resourceType;
	}
	if(self.resourceTypeExt != nil){
		dictionary[kSongListResourceTypeExt] = self.resourceTypeExt;
	}
	if(self.siProxycompany != nil){
		dictionary[kSongListSiProxycompany] = self.siProxycompany;
	}
	if(self.songId != nil){
		dictionary[kSongListSongId] = self.songId;
	}
	if(self.songSource != nil){
		dictionary[kSongListSongSource] = self.songSource;
	}
	if(self.style != nil){
		dictionary[kSongListStyle] = self.style;
	}
	if(self.tingUid != nil){
		dictionary[kSongListTingUid] = self.tingUid;
	}
	if(self.title != nil){
		dictionary[kSongListTitle] = self.title;
	}
	if(self.toneid != nil){
		dictionary[kSongListToneid] = self.toneid;
	}
	if(self.versions != nil){
		dictionary[kSongListVersions] = self.versions;
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
	if(self.album10001000 != nil){
		[aCoder encodeObject:self.album10001000 forKey:kSongListAlbum10001000];
	}
	if(self.album500500 != nil){
		[aCoder encodeObject:self.album500500 forKey:kSongListAlbum500500];
	}
	if(self.album800800 != nil){
		[aCoder encodeObject:self.album800800 forKey:kSongListAlbum800800];
	}
	if(self.albumId != nil){
		[aCoder encodeObject:self.albumId forKey:kSongListAlbumId];
	}
	if(self.albumNo != nil){
		[aCoder encodeObject:self.albumNo forKey:kSongListAlbumNo];
	}
	if(self.albumTitle != nil){
		[aCoder encodeObject:self.albumTitle forKey:kSongListAlbumTitle];
	}
	if(self.allArtistId != nil){
		[aCoder encodeObject:self.allArtistId forKey:kSongListAllArtistId];
	}
	if(self.allArtistTingUid != nil){
		[aCoder encodeObject:self.allArtistTingUid forKey:kSongListAllArtistTingUid];
	}
	if(self.allRate != nil){
		[aCoder encodeObject:self.allRate forKey:kSongListAllRate];
	}
	if(self.area != nil){
		[aCoder encodeObject:self.area forKey:kSongListArea];
	}
	if(self.artistId != nil){
		[aCoder encodeObject:self.artistId forKey:kSongListArtistId];
	}
	if(self.artistName != nil){
		[aCoder encodeObject:self.artistName forKey:kSongListArtistName];
	}
	if(self.author != nil){
		[aCoder encodeObject:self.author forKey:kSongListAuthor];
	}
	if(self.biaoshi != nil){
		[aCoder encodeObject:self.biaoshi forKey:kSongListBiaoshi];
	}
	if(self.bitrateFee != nil){
		[aCoder encodeObject:self.bitrateFee forKey:kSongListBitrateFee];
	}
	if(self.country != nil){
		[aCoder encodeObject:self.country forKey:kSongListCountry];
	}
	if(self.delStatus != nil){
		[aCoder encodeObject:self.delStatus forKey:kSongListDelStatus];
	}
	[aCoder encodeObject:@(self.fileDuration) forKey:kSongListFileDuration];	if(self.hasFilmtv != nil){
		[aCoder encodeObject:self.hasFilmtv forKey:kSongListHasFilmtv];
	}
	[aCoder encodeObject:@(self.hasMv) forKey:kSongListHasMv];	[aCoder encodeObject:@(self.hasMvMobile) forKey:kSongListHasMvMobile];	[aCoder encodeObject:@(self.havehigh) forKey:kSongListHavehigh];	if(self.hot != nil){
		[aCoder encodeObject:self.hot forKey:kSongListHot];
	}
	if(self.info != nil){
		[aCoder encodeObject:self.info forKey:kSongListInfo];
	}
	[aCoder encodeObject:@(self.isFirstPublish) forKey:kSongListIsFirstPublish];	if(self.isNew != nil){
		[aCoder encodeObject:self.isNew forKey:kSongListIsNew];
	}
	if(self.koreanBbSong != nil){
		[aCoder encodeObject:self.koreanBbSong forKey:kSongListKoreanBbSong];
	}
	if(self.language != nil){
		[aCoder encodeObject:self.language forKey:kSongListLanguage];
	}
	[aCoder encodeObject:@(self.learn) forKey:kSongListLearn];	if(self.lrclink != nil){
		[aCoder encodeObject:self.lrclink forKey:kSongListLrclink];
	}
	if(self.mvProvider != nil){
		[aCoder encodeObject:self.mvProvider forKey:kSongListMvProvider];
	}
	if(self.piaoId != nil){
		[aCoder encodeObject:self.piaoId forKey:kSongListPiaoId];
	}
	if(self.picBig != nil){
		[aCoder encodeObject:self.picBig forKey:kSongListPicBig];
	}
	if(self.picHuge != nil){
		[aCoder encodeObject:self.picHuge forKey:kSongListPicHuge];
	}
	if(self.picPremium != nil){
		[aCoder encodeObject:self.picPremium forKey:kSongListPicPremium];
	}
	if(self.picRadio != nil){
		[aCoder encodeObject:self.picRadio forKey:kSongListPicRadio];
	}
	if(self.picS500 != nil){
		[aCoder encodeObject:self.picS500 forKey:kSongListPicS500];
	}
	if(self.picSmall != nil){
		[aCoder encodeObject:self.picSmall forKey:kSongListPicSmall];
	}
	if(self.publishtime != nil){
		[aCoder encodeObject:self.publishtime forKey:kSongListPublishtime];
	}
	if(self.rank != nil){
		[aCoder encodeObject:self.rank forKey:kSongListRank];
	}
	if(self.rankChange != nil){
		[aCoder encodeObject:self.rankChange forKey:kSongListRankChange];
	}
	if(self.relateStatus != nil){
		[aCoder encodeObject:self.relateStatus forKey:kSongListRelateStatus];
	}
	if(self.resEncryptionFlag != nil){
		[aCoder encodeObject:self.resEncryptionFlag forKey:kSongListResEncryptionFlag];
	}
	if(self.resourceType != nil){
		[aCoder encodeObject:self.resourceType forKey:kSongListResourceType];
	}
	if(self.resourceTypeExt != nil){
		[aCoder encodeObject:self.resourceTypeExt forKey:kSongListResourceTypeExt];
	}
	if(self.siProxycompany != nil){
		[aCoder encodeObject:self.siProxycompany forKey:kSongListSiProxycompany];
	}
	if(self.songId != nil){
		[aCoder encodeObject:self.songId forKey:kSongListSongId];
	}
	if(self.songSource != nil){
		[aCoder encodeObject:self.songSource forKey:kSongListSongSource];
	}
	if(self.style != nil){
		[aCoder encodeObject:self.style forKey:kSongListStyle];
	}
	if(self.tingUid != nil){
		[aCoder encodeObject:self.tingUid forKey:kSongListTingUid];
	}
	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kSongListTitle];
	}
	if(self.toneid != nil){
		[aCoder encodeObject:self.toneid forKey:kSongListToneid];
	}
	if(self.versions != nil){
		[aCoder encodeObject:self.versions forKey:kSongListVersions];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.album10001000 = [aDecoder decodeObjectForKey:kSongListAlbum10001000];
	self.album500500 = [aDecoder decodeObjectForKey:kSongListAlbum500500];
	self.album800800 = [aDecoder decodeObjectForKey:kSongListAlbum800800];
	self.albumId = [aDecoder decodeObjectForKey:kSongListAlbumId];
	self.albumNo = [aDecoder decodeObjectForKey:kSongListAlbumNo];
	self.albumTitle = [aDecoder decodeObjectForKey:kSongListAlbumTitle];
	self.allArtistId = [aDecoder decodeObjectForKey:kSongListAllArtistId];
	self.allArtistTingUid = [aDecoder decodeObjectForKey:kSongListAllArtistTingUid];
	self.allRate = [aDecoder decodeObjectForKey:kSongListAllRate];
	self.area = [aDecoder decodeObjectForKey:kSongListArea];
	self.artistId = [aDecoder decodeObjectForKey:kSongListArtistId];
	self.artistName = [aDecoder decodeObjectForKey:kSongListArtistName];
	self.author = [aDecoder decodeObjectForKey:kSongListAuthor];
	self.biaoshi = [aDecoder decodeObjectForKey:kSongListBiaoshi];
	self.bitrateFee = [aDecoder decodeObjectForKey:kSongListBitrateFee];
	self.charge = [[aDecoder decodeObjectForKey:kSongListCharge] integerValue];
	self.country = [aDecoder decodeObjectForKey:kSongListCountry];
	self.delStatus = [aDecoder decodeObjectForKey:kSongListDelStatus];
	self.fileDuration = [[aDecoder decodeObjectForKey:kSongListFileDuration] integerValue];
	self.hasFilmtv = [aDecoder decodeObjectForKey:kSongListHasFilmtv];
	self.hasMv = [[aDecoder decodeObjectForKey:kSongListHasMv] integerValue];
	self.hasMvMobile = [[aDecoder decodeObjectForKey:kSongListHasMvMobile] integerValue];
	self.havehigh = [[aDecoder decodeObjectForKey:kSongListHavehigh] integerValue];
	self.hot = [aDecoder decodeObjectForKey:kSongListHot];
	self.info = [aDecoder decodeObjectForKey:kSongListInfo];
	self.isFirstPublish = [[aDecoder decodeObjectForKey:kSongListIsFirstPublish] integerValue];
	self.isNew = [aDecoder decodeObjectForKey:kSongListIsNew];
	self.koreanBbSong = [aDecoder decodeObjectForKey:kSongListKoreanBbSong];
	self.language = [aDecoder decodeObjectForKey:kSongListLanguage];
	self.learn = [[aDecoder decodeObjectForKey:kSongListLearn] integerValue];
	self.lrclink = [aDecoder decodeObjectForKey:kSongListLrclink];
	self.mvProvider = [aDecoder decodeObjectForKey:kSongListMvProvider];
	self.piaoId = [aDecoder decodeObjectForKey:kSongListPiaoId];
	self.picBig = [aDecoder decodeObjectForKey:kSongListPicBig];
	self.picHuge = [aDecoder decodeObjectForKey:kSongListPicHuge];
	self.picPremium = [aDecoder decodeObjectForKey:kSongListPicPremium];
	self.picRadio = [aDecoder decodeObjectForKey:kSongListPicRadio];
	self.picS500 = [aDecoder decodeObjectForKey:kSongListPicS500];
	self.picSmall = [aDecoder decodeObjectForKey:kSongListPicSmall];
	self.publishtime = [aDecoder decodeObjectForKey:kSongListPublishtime];
	self.rank = [aDecoder decodeObjectForKey:kSongListRank];
	self.rankChange = [aDecoder decodeObjectForKey:kSongListRankChange];
	self.relateStatus = [aDecoder decodeObjectForKey:kSongListRelateStatus];
	self.resEncryptionFlag = [aDecoder decodeObjectForKey:kSongListResEncryptionFlag];
	self.resourceType = [aDecoder decodeObjectForKey:kSongListResourceType];
	self.resourceTypeExt = [aDecoder decodeObjectForKey:kSongListResourceTypeExt];
	self.siProxycompany = [aDecoder decodeObjectForKey:kSongListSiProxycompany];
	self.songId = [aDecoder decodeObjectForKey:kSongListSongId];
	self.songSource = [aDecoder decodeObjectForKey:kSongListSongSource];
	self.style = [aDecoder decodeObjectForKey:kSongListStyle];
	self.tingUid = [aDecoder decodeObjectForKey:kSongListTingUid];
	self.title = [aDecoder decodeObjectForKey:kSongListTitle];
	self.toneid = [aDecoder decodeObjectForKey:kSongListToneid];
	self.versions = [aDecoder decodeObjectForKey:kSongListVersions];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	Song *copy = [Song new];

	copy.album10001000 = [self.album10001000 copy];
	copy.album500500 = [self.album500500 copy];
	copy.album800800 = [self.album800800 copy];
	copy.albumId = [self.albumId copy];
	copy.albumNo = [self.albumNo copy];
	copy.albumTitle = [self.albumTitle copy];
	copy.allArtistId = [self.allArtistId copy];
	copy.allArtistTingUid = [self.allArtistTingUid copy];
	copy.allRate = [self.allRate copy];
	copy.area = [self.area copy];
	copy.artistId = [self.artistId copy];
	copy.artistName = [self.artistName copy];
	copy.author = [self.author copy];
	copy.biaoshi = [self.biaoshi copy];
	copy.bitrateFee = [self.bitrateFee copy];
	copy.charge = self.charge;
	copy.country = [self.country copy];
	copy.delStatus = [self.delStatus copy];
	copy.fileDuration = self.fileDuration;
	copy.hasFilmtv = [self.hasFilmtv copy];
	copy.hasMv = self.hasMv;
	copy.hasMvMobile = self.hasMvMobile;
	copy.havehigh = self.havehigh;
	copy.hot = [self.hot copy];
	copy.info = [self.info copy];
	copy.isFirstPublish = self.isFirstPublish;
	copy.isNew = [self.isNew copy];
	copy.koreanBbSong = [self.koreanBbSong copy];
	copy.language = [self.language copy];
	copy.learn = self.learn;
	copy.lrclink = [self.lrclink copy];
	copy.mvProvider = [self.mvProvider copy];
	copy.piaoId = [self.piaoId copy];
	copy.picBig = [self.picBig copy];
	copy.picHuge = [self.picHuge copy];
	copy.picPremium = [self.picPremium copy];
	copy.picRadio = [self.picRadio copy];
	copy.picS500 = [self.picS500 copy];
	copy.picSmall = [self.picSmall copy];
	copy.publishtime = [self.publishtime copy];
	copy.rank = [self.rank copy];
	copy.rankChange = [self.rankChange copy];
	copy.relateStatus = [self.relateStatus copy];
	copy.resEncryptionFlag = [self.resEncryptionFlag copy];
	copy.resourceType = [self.resourceType copy];
	copy.resourceTypeExt = [self.resourceTypeExt copy];
	copy.siProxycompany = [self.siProxycompany copy];
	copy.songId = [self.songId copy];
	copy.songSource = [self.songSource copy];
	copy.style = [self.style copy];
	copy.tingUid = [self.tingUid copy];
	copy.title = [self.title copy];
	copy.toneid = [self.toneid copy];
	copy.versions = [self.versions copy];

	return copy;
}
@end
