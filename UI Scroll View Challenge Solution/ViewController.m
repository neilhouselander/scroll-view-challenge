//
//  ViewController.m
//  UI Scroll View Challenge Solution
//
//  Created by Neil Houselander on 21/02/2015.
//  Copyright (c) 2015 Neil Houselander. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.globalImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"worldMap.jpeg"]]; //assign the imageview property a picture
    
    self.scrollView.contentSize = self.globalImageView.frame.size; //make scrollview contect size = image size
    [self.scrollView addSubview:self.globalImageView]; //add the image to the scroll view
    
    self.scrollView.delegate = self; //confirm that this controller is listening for the scrollview
    self.scrollView.minimumZoomScale = 0.5; //set max & min zoom
    self.scrollView.maximumZoomScale = 3.0;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.globalImageView; //return
}

@end
