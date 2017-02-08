//
//  ViewController.m
//  задание_3д
//
//  Created by стен on 06.02.17.
//  Copyright (c) 2017 стен. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(CALayer*)addPlaneToLayer:(CALayer*)container size:(CGSize)size position:(CGPoint)point color:(UIColor*)color{
    
    CALayer *plane = [CALayer layer];
    
    plane.backgroundColor = [color CGColor];
    plane.opacity = 0.6;
    plane.frame = CGRectMake(point.x, point.y, size.width, size.height);
    plane.borderColor = [[UIColor colorWithWhite:1.0 alpha:0.5]CGColor];
    plane.borderWidth = 3;
    plane.cornerRadius = 10;
    //Add the layer to the container layer
    [container addSublayer:plane];
    
    return plane;
}

- (void)A_singlePlane{
    
    //Create the container
    CALayer *container = [CALayer layer];
    container.frame = CGRectMake(0, 0, 640, 300);
    [self.view.layer addSublayer:container];
    
    
    //Create a Plane
    CALayer *purplePlane = [self addPlaneToLayer:container
                     size:CGSizeMake(100, 100)
                 position:CGPointMake(100, 100)
                    color:[UIColor purpleColor]];
    
    

    CGFloat grad = 30.0f * M_PI / 180.0f;
    [purplePlane setValue:[NSNumber numberWithFloat:grad] forKeyPath:@"transform.rotation.z"];
    [purplePlane setValue:[NSNumber numberWithFloat:grad] forKeyPath:@"transform.rotation.y"];
    [purplePlane setValue:[NSNumber numberWithFloat:grad] forKeyPath:@"transform.rotation.x"];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self A_singlePlane];
    

    
 }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
