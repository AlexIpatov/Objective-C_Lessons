//
//  MainViewController.m
//  Lesson_1
//
//  Created by Александр Ипатов on 13.01.2021.
//

#import "MainViewController.h"
#import "SecondViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    UIView *redView = [[UIView alloc] initWithFrame: CGRectMake(self.view.frame.size.width / 2 - self.view.frame.size.width * 0.7 / 2, 100, self.view.frame.size.width * 0.7, 30)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview: redView];
    
    
    UILabel *label = [[UILabel alloc] initWithFrame: CGRectMake(self.view.frame.size.width / 2 - self.view.frame.size.width * 0.7 / 2, 150, self.view.frame.size.width * 0.7, 30)];
    label.backgroundColor = [UIColor whiteColor];
    label.font = [UIFont systemFontOfSize:20 weight: UIFontWeightHeavy];
    label.textColor = [UIColor blackColor];
    label.text = @"Label";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview: label];
    
    
 
    UITextField *textField = [[UITextField alloc] initWithFrame: CGRectMake(self.view.frame.size.width / 2 - self.view.frame.size.width * 0.7 / 2, 200, self.view.frame.size.width * 0.7, 30)];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.placeholder = @"textField";
    textField.font = [UIFont systemFontOfSize:20.0 weight:UIFontWeightLight];
    [self.view addSubview: textField];
    
    

    UITextView *textView = [[UITextView alloc] initWithFrame: CGRectMake(self.view.frame.size.width / 2 - self.view.frame.size.width * 0.7 / 2, 250, self.view.frame.size.width * 0.7, 30)];
    textView.textColor = [UIColor blackColor];
    textView.text = @"textView";
    [self.view addSubview:textView];
    

    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:@[@"first", @"second"]];
    segmentedControl.frame = CGRectMake(self.view.frame.size.width / 2 - self.view.frame.size.width * 0.7 / 2, 300, self.view.frame.size.width * 0.7, 30);
    segmentedControl.tintColor = [UIColor blackColor];
    segmentedControl.selectedSegmentIndex = 0;
    [self.view addSubview:segmentedControl];
   
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(self.view.frame.size.width / 2 - self.view.frame.size.width * 0.7 / 2, 350, self.view.frame.size.width * 0.7, 30)];
    slider.tintColor = [UIColor blackColor];
    slider.value = 0.5;
    [self.view addSubview:slider];
    
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width / 2 - self.view.frame.size.width * 0.7 / 2, 400, self.view.frame.size.width * 0.7, 30)];
    [button setTitle:@"Go to next VC" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor blueColor];
    button.tintColor = [UIColor whiteColor];
    [button addTarget:self action:@selector(goToNextVC:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)goToNextVC:(UIButton *)sender
{
    UIViewController *secondVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
}




@end
