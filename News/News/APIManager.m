//
//  APIManager.m
//  News
//
//  Created by Александр Ипатов on 21.01.2021.
//

#import "APIManager.h"
#import "News.h"
#define API_TOKEN @"07727f1fe0074a2b866ca8c067db6cfe"
#define API_COUNTRY @"ru"
#define API_URL @"https://newsapi.org/v2/top-headlines"

@implementation APIManager


+ (instancetype)sharedInstance {
    static APIManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[APIManager alloc] init];
    });
    return instance;
}


- (void)load:(NSString *)urlString withCompletion:(void (^)(id _Nullable result))completion {

    [[[NSURLSession sharedSession] dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {

        if (!error) {
         completion([NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil]);
        }
    }] resume] ;
}



- (void)loadNews:(void (^)(NSArray *news))completion {
    NSString *urlString = [NSString stringWithFormat:@"%@?country=%@&apiKey=%@", API_URL, API_COUNTRY,  API_TOKEN];
    


    [self load:urlString withCompletion:^(id  _Nullable result) {
        NSDictionary *response = result;
        if (response) {
            NSDictionary *json = [response valueForKey:@"articles"] ;
            
            NSMutableArray *array = [NSMutableArray new];
            
            for (NSDictionary *element in json) {
                News *news = [[News alloc] initWithDictionary:element];
                    [array addObject:news];
            }
            dispatch_async(dispatch_get_main_queue(), ^{
                completion(array);
            });
        }
    }];
}
	





@end
