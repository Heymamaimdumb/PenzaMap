//
//  ViewController.h
//  PenzaMap
//
//  Created by Vladislav on 14.09.15.
//  Copyright (c) 2015 Vladislav. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>
#import "SlideNavigationController.h"
@interface PenzaMapVC : UIViewController<GMSMapViewDelegate,SlideNavigationControllerDelegate>

-(IBAction)buttonPressed:(id)sender;
@end

