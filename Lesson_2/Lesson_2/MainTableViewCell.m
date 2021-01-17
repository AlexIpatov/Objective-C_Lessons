//
//  MainTableViewCell.m
//  Lesson_2
//
//  Created by Александр Ипатов on 16.01.2021.
//

#import "MainTableViewCell.h"

@implementation MainTableViewCell



- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width , 40)];
        _label.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:_label];
        
    }
    return self;
}

@end
