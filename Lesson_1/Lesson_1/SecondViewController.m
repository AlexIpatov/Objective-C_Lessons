//
//  SecondViewController.m
//  Lesson_1
//
//  Created by Александр Ипатов on 13.01.2021.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIActivityIndicatorView *activityIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle: UIActivityIndicatorViewStyleLarge];
    activityIndicatorView.color = [UIColor blackColor];
    activityIndicatorView.frame = CGRectMake(self.view.frame.size.width / 2 - self.view.frame.size.width * 0.7 / 2, 100, self.view.frame.size.width * 0.7, 30);
    activityIndicatorView.hidesWhenStopped = YES;
    [activityIndicatorView startAnimating];
    [self.view addSubview:activityIndicatorView];
    
    
    UIProgressView *progressView = [[UIProgressView alloc] initWithProgressViewStyle: UIProgressViewStyleDefault];
    progressView.progressTintColor = [UIColor blackColor];
    progressView.frame =  CGRectMake(self.view.frame.size.width / 2 - self.view.frame.size.width * 0.7 / 2, 150, self.view.frame.size.width * 0.7, 30);
    progressView.progress = 0.5;
    [self.view addSubview:progressView];
    
    
   
    UIImageView *imageView = [[UIImageView alloc] initWithFrame: CGRectMake(self.view.frame.size.width / 2 - self.view.frame.size.width * 0.5 / 2, self.view.frame.size.height / 2 - self.view.frame.size.width * 0.5/ 2, self.view.frame.size.width * 0.5, self.view.frame.size.width * 0.5)];
    imageView.image = [UIImage imageNamed:@"Image"];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    imageView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:imageView];
}



@end
