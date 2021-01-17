//
//  MainViewController.m
//  Lesson_2
//
//  Created by Александр Ипатов on 16.01.2021.
//

#import "MainViewController.h"
#import "MainTableViewCell.h"
#import "SecondTableViewController.h"

#define ReuseIdentifier @"mainCellIdentifier"

@interface MainViewController ()

@property (strong, nonnull) UITableView *mainTableView;
@property (strong, nonnull) NSMutableArray *tableElements;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableElements = [NSMutableArray arrayWithObjects: @"first", @"second", @"third",  nil];
    
    
    self.mainTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.mainTableView.dataSource = self;
    self.mainTableView.delegate = self;
    [self.view addSubview: self.mainTableView];
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    MainTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: ReuseIdentifier];
   
       if (!cell) {
           cell = [[MainTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier: ReuseIdentifier];
       }
       cell.label.text = [NSString stringWithFormat: @"%@", self.tableElements[indexPath.row]];
       return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tableElements.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *secondVC = [[SecondTableViewController alloc] init];
    [self.navigationController pushViewController: secondVC animated:YES];
    
}




@end
