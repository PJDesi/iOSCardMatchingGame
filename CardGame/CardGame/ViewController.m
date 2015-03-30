//
//  ViewController.m
//  CardGame
//
//  Created by Paul Desamero on 3/30/15.
//  Copyright (c) 2015 Paul.Desamero. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)touchCardButton:(UIButton *)sender {
    
    if ([sender.currentTitle length]) {
        //local variable to hold the cardBack image
        UIImage *cardImage = [UIImage imageNamed:@"cardBack"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        //local variable to hold the cardBack image
        UIImage *cardImage = [UIImage imageNamed:@"cardFront"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        
        [sender setTitle:@"A♣️" forState:UIControlStateNormal];
    }
   
    
}

@end
