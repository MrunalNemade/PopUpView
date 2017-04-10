//
//  ViewController.m
//  popup view
//
//  Created by Mrunalini on 28/02/17.
//  Copyright © 2017 Mrunalini nemade. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    _popUpView.hidden =YES;
    self.view.backgroundColor=[[UIColor whiteColor] colorWithAlphaComponent:.6];

    self.popUpView.layer.cornerRadius = 5;
    self.popUpView.layer.shadowOpacity = 0.8;
    self.popUpView.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);

    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)showAnimate
{
    _popUpView.hidden =NO;
    
    self.popUpView.transform = CGAffineTransformMakeScale(1.3, 1.3);
    self.popUpView.alpha = 0;
    [UIView animateWithDuration:.25 animations:^{
        self.popUpView.alpha = 1;
        self.popUpView.transform = CGAffineTransformMakeScale(1, 1);
    }];
}

- (void)removeAnimate
{
    [UIView animateWithDuration:.25 animations:^{
        self.popUpView.transform = CGAffineTransformMakeScale(1.3, 1.3);
        self.popUpView.alpha = 0.0;
    } completion:^(BOOL finished) {
        if (finished) {
            [self.popUpView setHidden:YES];
        }
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionClose:(id)sender {
    [self removeAnimate];
}

- (IBAction)actionShow:(id)sender {
    [self showAnimate];

}
@end
