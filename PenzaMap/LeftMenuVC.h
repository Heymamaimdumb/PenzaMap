//
//  LeftMenuVC.h
//  PenzaMap
//
//  Created by Vladislav on 14.09.15.
//  Copyright (c) 2015 Vladislav. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"


@interface LeftMenuVC : UIViewController<UITableViewDelegate, UITableViewDataSource,SlideNavigationControllerDelegate>

@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic, assign) BOOL slideOutAnimationEnabled;

@end
