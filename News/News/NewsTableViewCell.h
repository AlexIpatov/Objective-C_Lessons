//
//  NewsTableViewCell.h
//  News
//
//  Created by Александр Ипатов on 21.01.2021.
//

#import <UIKit/UIKit.h>
#import "News.h"

NS_ASSUME_NONNULL_BEGIN

@interface NewsTableViewCell : UITableViewCell

@property (strong, nonatomic) UILabel *titleLabel;
@property (strong, nonatomic) UILabel *dateLabel;
@property (nonatomic, strong) News *news;



@end

NS_ASSUME_NONNULL_END
