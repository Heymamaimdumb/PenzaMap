//
//  ViewController.m
//  PenzaMap
//
//  Created by Vladislav on 14.09.15.
//  Copyright (c) 2015 Vladislav. All rights reserved.
//

#import "PenzaMapVC.h"
#import "LeftMenuVC.h"

@interface PenzaMapVC ()

@end

@implementation PenzaMapVC

- (void)viewDidLoad {
    [super viewDidLoad];
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:53.186950 longitude:45.011412 zoom:12];
    GMSMapView *penzaView = [GMSMapView mapWithFrame:self.view.bounds camera:camera];
    penzaView.delegate = self;
    [self.view addSubview:penzaView];
    
}

- (BOOL)slideNavigationControllerShouldDisplayLeftMenu
{
    return YES;
}


-(void)buttonPressed:(id)sender
{
    [sender addTarget:[SlideNavigationController sharedInstance] action:@selector(toggleLeftMenu) forControlEvents:UIControlEventTouchUpInside];
}



- (NSInteger)indexFromPixels:(NSInteger)pixels
{
    if (pixels == 60)
        return 0;
    else if (pixels == 120)
        return 1;
    else
        return 2;
}

- (NSInteger)pixelsFromIndex:(NSInteger)index
{
    switch (index)
    {
        case 0:
            return 60;
            
        case 1:
            return 120;
            
        case 2:
            return 200;
            
        default:
            return 0;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
