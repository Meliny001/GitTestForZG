//
//  ViewController.m
//  ZGCalculator
//
//  Created by Magic on 2019/2/15.
//  Copyright © 2019年 com.segi. All rights reserved.
//
/*
 投资人投入本金C于市场，经过时间T后其市值变为V，则该次投资中：
 1、收益为：P=V-C
 2、收益率为：K=P/C=（V-C）/C=V/C-1
 3、年化收益率为：
 （1）Y=（1+K）^N-1=（1+K）^（D/T）-1 或
 （2）Y=（V/C）^N-1=（V/C）^（D/T）-1
 */

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *tTextF;
@property (weak, nonatomic) IBOutlet UITextField *dTextF;
@property (weak, nonatomic) IBOutlet UITextField *cTextF;
@property (weak, nonatomic) IBOutlet UITextField *vTextF;

@property (weak, nonatomic) IBOutlet UILabel *shouyi;
@property (weak, nonatomic) IBOutlet UILabel *shoyilv;
@property (weak, nonatomic) IBOutlet UILabel *yshouyilv;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}
- (IBAction)calculatorNow:(id)sender
{
    NSInteger t = [self.tTextF.text integerValue];
    NSInteger d = [self.dTextF.text integerValue];
    
    double c = [self.cTextF.text doubleValue];
    double v = [self.vTextF.text doubleValue];
    
    double p = v-c;
    double k = p/c;
    double y = pow(1+k, d/t) - 1;
    self.shouyi.text = [NSString stringWithFormat:@"%.4f",p];
    self.shoyilv.text = [NSString stringWithFormat:@"%.2f %%",k*100];
    self.yshouyilv.text = [NSString stringWithFormat:@"%.2f %%",y*100];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

@end
