//
//  TestCollectionViewCell.h
//  collectionview缺失demo
//
//  Created by Dylan Chen on 2018/6/7.
//  Copyright © 2018年 Dylan Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestCollectionViewCell : UICollectionViewCell

@property (strong, nonatomic)NSString * title;

+ (instancetype)cellWithCollectionView:(UICollectionView *)collectionView andindexPath:(NSIndexPath *)indexPath;
@end
