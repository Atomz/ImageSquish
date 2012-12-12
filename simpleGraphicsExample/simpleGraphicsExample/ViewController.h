//
//  ViewController.h
//  simpleGraphicsExample
//
//  Created by Romy Ilano on 12/12/12.
//  Copyright (c) 2012 Romy Ilano. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController



@property (strong, nonatomic) IBOutlet UIImageView *theNewImageView;

- (IBAction)mergeImages:(id)sender;


-(UIImage *)placeImageOnImage:(UIImage *)image
topImage:(UIImage *)topImage x:(CGFloat)x y:(CGFloat)y;

@end
