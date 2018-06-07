//
//  AppDelegate.h
//  collectionview缺失demo
//
//  Created by Dylan Chen on 2018/6/7.
//  Copyright © 2018年 Dylan Chen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

