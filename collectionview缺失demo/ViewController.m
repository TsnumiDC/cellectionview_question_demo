//
//  ViewController.m
//  collectionview缺失demo
//
//  Created by Dylan Chen on 2018/6/7.
//  Copyright © 2018年 Dylan Chen. All rights reserved.
//

#import "ViewController.h"
#import "TestCollectionViewCell.h"


@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (strong, nonatomic)UICollectionView * collectionView;

@property (strong, nonatomic)UICollectionView * collectionView1;

@end

@implementation ViewController

#pragma mark - Init
- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self.view addSubview:self.collectionView];
    [self.view addSubview:self.collectionView1];

    self.collectionView.frame = self.view.bounds;
    self.collectionView1.frame = CGRectMake(self.view.bounds.size.width/2, 0, self.view.bounds.size.width/2, self.view.bounds.size.height);

}


#pragma mark - UICollectionViewDelegate,UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return  2 ;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    switch (section) {
        case 0: {
            return 1;
        }
            break;
        case 1: {
            return 10;
        }
            break;
        default:
            break;
    }
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    switch (indexPath.section) {
        case 0: {
            TestCollectionViewCell * cell = [TestCollectionViewCell cellWithCollectionView:collectionView andindexPath:indexPath];
            cell.title = [NSString stringWithFormat:@"indexpath = %ld,%ld",indexPath.section, indexPath.row];
            return cell;
        }
            break;
        case 1: {
            TestCollectionViewCell * cell = [TestCollectionViewCell cellWithCollectionView:collectionView andindexPath:indexPath];
            cell.title = [NSString stringWithFormat:@"indexpath = %ld,%ld",indexPath.section, indexPath.row];
            return cell;
        }
            break;
            
        default:
            break;
    }
    
    return [UICollectionViewCell new];
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    switch (indexPath.section) {
        case 0: {
            if (collectionView == self.collectionView) {
                //            return CGSizeMake([UIScreen mainScreen].bounds.size.width, 40);
            }else{
                return CGSizeMake([UIScreen mainScreen].bounds.size.width, 40);
            }
        }
            break;
        case 1:{
            return CGSizeMake([UIScreen mainScreen].bounds.size.width/4 - 15, 88);
        }
            break;
            
        default:
            break;
    }
    
    return CGSizeZero;
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    
    switch (section) {
        case 0: {
                
        }
            break;
        case 1: {
            return UIEdgeInsetsMake(5, 5, 5, 5);
        }
            break;
        default:
            break;
    }
    
    return UIEdgeInsetsZero;
}

#pragma mark - Lazy

- (UICollectionView *)collectionView{
    if (_collectionView == nil) {
        
        UICollectionViewFlowLayout * flowLayout = [UICollectionViewFlowLayout new];
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        
        _collectionView = [[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:flowLayout];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        
        _collectionView.backgroundColor = [UIColor yellowColor];
    }
    return _collectionView;
}

- (UICollectionView *)collectionView1{
    if (_collectionView1 == nil) {
        
        UICollectionViewFlowLayout * flowLayout = [UICollectionViewFlowLayout new];
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        
        _collectionView1 = [[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:flowLayout];
        _collectionView1.delegate = self;
        _collectionView1.dataSource = self;
        
        _collectionView1.backgroundColor = [UIColor orangeColor];
    }
    return _collectionView1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
