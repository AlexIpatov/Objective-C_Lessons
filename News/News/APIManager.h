//
//  APIManager.h
//  News
//
//  Created by Александр Ипатов on 21.01.2021.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@interface APIManager : NSObject

+(instancetype) sharedInstance;
-(void)loadNews:(void (^)(NSArray *news))completion;

@end

NS_ASSUME_NONNULL_END
