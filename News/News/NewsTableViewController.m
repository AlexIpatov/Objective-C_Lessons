//
//  NewsTableViewController.m
//  News
//
//  Created by Александр Ипатов on 21.01.2021.
//

#import "NewsTableViewController.h"
#import "NewsTableViewCell.h"
#import "APIManager.h"
#import "DetailViewController.h"

#define ReuseIdentifier @"NewsCellIdentifier"

@interface NewsTableViewController ()

@property (strong, nonnull) UITableView *newsTableView;
@property (strong, nonnull) NSArray *news;
@end

@implementation NewsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.newsTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.newsTableView.dataSource = self;
    self.newsTableView.delegate = self;
    [self.view addSubview: self.newsTableView];
    [[APIManager sharedInstance] loadNews:^(NSArray * _Nonnull news) {
        self.news = news;
        
        
        [self.newsTableView reloadData];
    }];
    
    
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    NewsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: ReuseIdentifier];
    
    if (!cell) {
        cell = [[NewsTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier: ReuseIdentifier];
    }
    cell.news = [_news objectAtIndex:indexPath.row];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _news.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100.0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *secondVC = [[DetailViewController alloc] initWithNews:[_news objectAtIndex:indexPath.row]];
    
    [self.navigationController pushViewController: secondVC animated:YES];
    
}





@end
