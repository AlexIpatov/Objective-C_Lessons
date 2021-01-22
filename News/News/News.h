//
//  News.h
//  News
//
//  Created by Александр Ипатов on 21.01.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface News : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *descriptionNews;
@property (nonatomic, strong) NSString *urlToImage;
@property (nonatomic, strong) NSDate *publishedAt;
@property (nonatomic, strong) NSString *content;


- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end



NS_ASSUME_NONNULL_END
