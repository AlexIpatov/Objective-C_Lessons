//
//  News.m
//  News
//
//  Created by Александр Ипатов on 21.01.2021.
//

#import "News.h"

@implementation News

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        _title = [dictionary valueForKey:@"title"];
        _descriptionNews = [dictionary valueForKey:@"description"];
        _urlToImage = [dictionary valueForKey:@"urlToImage"];
        _publishedAt = dateFromString([dictionary valueForKey:@"publishedAt"]);
        _content = [dictionary valueForKey:@"content"];
    }
    return self;
}


NSDate *dateFromString(NSString *dateString) {
    if (!dateString) { return  nil; }
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSString *correctSrtingDate = [dateString stringByReplacingOccurrencesOfString:@"T" withString:@" "];
    correctSrtingDate = [correctSrtingDate stringByReplacingOccurrencesOfString:@"Z" withString:@" "];
    dateFormatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    return [dateFormatter dateFromString: correctSrtingDate];
}

@end
