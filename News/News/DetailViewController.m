//
//  DetailViewController.m
//  News
//
//  Created by Александр Ипатов on 21.01.2021.
//

#import "DetailViewController.h"
#import <SDWebImage/SDWebImage.h>

@interface DetailViewController ()
@property (nonatomic, strong) News *news;

@end

@implementation DetailViewController

- (instancetype)initWithNews:(News *)news {
    self = [super init];
    if (self) {
        _news = news;
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame: CGRectMake(self.view.frame.size.width /  2 - self.view.frame.size.width * 0.7 / 2, 100, self.view.frame.size.width * 0.7, self.view.frame.size.height * 0.1)];
    titleLabel.font = [UIFont systemFontOfSize:20 weight: UIFontWeightHeavy];
    titleLabel.textColor = [UIColor blackColor];
    titleLabel.text = _news.title;
    titleLabel.numberOfLines = 3;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview: titleLabel];
    
    UIImageView * newsImage = [[UIImageView alloc] initWithFrame: CGRectMake(50, 120 + titleLabel.bounds.size.height, [UIScreen mainScreen].bounds.size.width - 100, [UIScreen mainScreen].bounds.size.width - 150)];
    [newsImage sd_setImageWithURL:[NSURL URLWithString: _news.urlToImage ]];
  
    [self.view addSubview: newsImage];
    
    
    UITextView * descriptionLabel = [[UITextView alloc] initWithFrame: CGRectMake(self.view.frame.size.width /  2 - self.view.frame.size.width * 0.9 / 2, 100 + titleLabel.bounds.size.height + newsImage.bounds.size.width , self.view.frame.size.width * 0.9, self.view.frame.size.height * 0.4)];
    descriptionLabel.font = [UIFont systemFontOfSize:15 weight: UIFontWeightHeavy];
    descriptionLabel.userInteractionEnabled = false;
    descriptionLabel.textColor = [UIColor blackColor];
    descriptionLabel.text = _news.descriptionNews;
    
    [self.view addSubview: descriptionLabel];
    
  
}



@end
