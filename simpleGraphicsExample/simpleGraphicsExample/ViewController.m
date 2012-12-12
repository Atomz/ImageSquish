//
//  ViewController.m
//  simpleGraphicsExample
//
//  Created by Romy Ilano on 12/12/12.
//  Copyright (c) 2012 Romy Ilano. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mergeImages:(id)sender {
    
    UIImage *myFirstImage = [UIImage imageNamed:@"lemonface.png"];
    UIImage *myTopImage = [UIImage imageNamed:@"crateKitty-holdingWater.png"];
    
    CGFloat yFloat =10;
    CGFloat xFloat = 10;
    
    UIImage *newImage = [self placeImageOnImage:myFirstImage topImage:myTopImage x:xFloat y:yFloat];
    
    [[self theNewImageView] setImage:newImage];
    
    
}

-(UIImage *)placeImageOnImage:(UIImage *)image topImage:(UIImage *)topImage
                            x:(CGFloat)x y:(CGFloat)y
{
    
    // if you want the image to be added next to the image
    // make the CGSize bigger
    CGSize newSize = CGSizeMake(image.size.width-20, image.size.height/2);
    
    UIGraphicsBeginImageContext(newSize);
    
    [topImage drawInRect:CGRectMake(x, y, topImage.size.width, topImage.size.height)];
    
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}

@end
