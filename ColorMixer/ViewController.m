//
//  ViewController.m
//  ColorMixer
//
//  Created by Daniel Martinsson on 2018-01-12.
//  Copyright © 2018 Daniel Martinsson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *redAmount;
@property (weak, nonatomic) IBOutlet UISlider *greenAmount;
@property (weak, nonatomic) IBOutlet UISlider *blueAmount;
@property (weak, nonatomic) IBOutlet UIView *colorDisplay;
@property (weak, nonatomic) IBOutlet UIButton *resetColor;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self refresh];
}

- (IBAction)sliderChanged:(id)sender {
    [self refresh];
}

- (void)refresh {
    self.colorDisplay.backgroundColor = [self currentColor];
}

- (UIColor*) currentColor {
    return [UIColor colorWithRed:self.redAmount.value green:self.greenAmount.value blue:self.blueAmount.value alpha:1.0f];
}

- (IBAction)newReset:(id)sender {
    self.redAmount.value = 0.5f;
    self.greenAmount.value = 0.5f;
    self.blueAmount.value = 0.5f;
    [self refresh];
}

- (IBAction)invert:(id)sender {
    
}

- (IBAction)random:(id)sender {
    self.redAmount.value = arc4random_uniform(0.9f);
    self.greenAmount.value = arc4random_uniform(0.9f);
    self.blueAmount.value = arc4random_uniform(0.9f);
    [self refresh];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
