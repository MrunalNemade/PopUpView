//
//  ViewController.h
//  popup view
//
//  Created by Mrunalini on 28/02/17.
//  Copyright © 2017 Mrunalini nemade. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *popUpView;

- (IBAction)actionClose:(id)sender;

- (IBAction)actionShow:(id)sender;

@end

