//
//  TestCollectionViewCell.m
//  collectionview缺失demo
//
//  Created by Dylan Chen on 2018/6/7.
//  Copyright © 2018年 Dylan Chen. All rights reserved.
//

#import "TestCollectionViewCell.h"


@interface TestCollectionViewCell()

@property (nonatomic, strong, nonnull)UILabel * titleLabel;

@end
@implementation TestCollectionViewCell

#pragma mark - Setter
- (void)setTitle:(NSString *)title{
    _title = title;
    
    self.titleLabel.text = title?title:@"";
}

#pragma mark - init
+ (instancetype)cellWithCollectionView:(UICollectionView *)collectionView andindexPath:(NSIndexPath *)indexPath{
    
    NSString * identifity=NSStringFromClass([self class]);
    [collectionView registerClass:[self class] forCellWithReuseIdentifier:identifity];
    
    TestCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifity forIndexPath:indexPath];
    if (cell==nil) {
        cell = [[TestCollectionViewCell alloc]initWithFrame:CGRectZero];
    }
    return cell;
}

#pragma mark - Life
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self.contentView addSubview:self.titleLabel];
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

- (void)layoutSubviews{
    self.titleLabel.frame = self.bounds;
}

#pragma mark - Lazy
- (UILabel *)titleLabel{
    if (_titleLabel == nil) {
        _titleLabel = [UILabel new];
        _titleLabel.font = [UIFont systemFontOfSize:22];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.numberOfLines = 0;
        _titleLabel.adjustsFontSizeToFitWidth = YES;
    }
    return _titleLabel;
}
@end
