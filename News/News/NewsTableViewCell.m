//
//  NewsTableViewCell.m
//  News
//
//  Created by Александр Ипатов on 21.01.2021.
//

#import "NewsTableViewCell.h"
#import "News.h"

@implementation NewsTableViewCell


- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 10, [UIScreen mainScreen].bounds.size.width - 40, self.bounds.size.height)];
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.numberOfLines = 2;
        [self.contentView addSubview:_titleLabel];
        
        _dateLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, _titleLabel.bounds.size.height + 5, [UIScreen mainScreen].bounds.size.width , 40)];
        _dateLabel.textColor = [UIColor grayColor];
        _dateLabel.textAlignment = NSTextAlignmentLeft;
         [self.contentView addSubview:_dateLabel];
        
        
    }
    return self;
}

- (void)setNews:(News *)news {
    _news = news;
    
    _titleLabel.text = [NSString stringWithFormat:@"%@", news.title];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"dd MMMM yyyy hh:mm";
    _dateLabel.text = [dateFormatter stringFromDate: news.publishedAt];


}

@end
