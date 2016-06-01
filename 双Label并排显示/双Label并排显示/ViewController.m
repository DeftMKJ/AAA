//
//  ViewController.m
//  双Label并排显示
//
//  Created by 宓珂璟 on 16/5/31.
//  Copyright © 2016年 宓珂璟. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *leftLabel;
@property (weak, nonatomic) IBOutlet UILabel *rightLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}
- (IBAction)click:(UIButton *)sender
{
    NSMutableString *textStr = [[NSMutableString alloc] init];
    switch (sender.tag) {
        case 100:
            if ([self.leftLabel.text isEqualToString:@"宓珂璟"])
            {
                break;
            }
            [textStr appendString:self.leftLabel.text];
            [textStr deleteCharactersInRange:NSMakeRange(self.leftLabel.text.length - 3, 3)];
            self.leftLabel.text = textStr;
            break;
        case 101:
            [textStr appendString:self.leftLabel.text];
            [textStr appendString:@"宓珂璟"];
            self.leftLabel.text = textStr;
            break;
        case 102:
            if ([self.rightLabel.text isEqualToString:@"程静娇"])
            {
                break;
            }
            [textStr appendString:self.rightLabel.text];
            [textStr deleteCharactersInRange:NSMakeRange(self.rightLabel.text.length - 3, 3)];
            self.rightLabel.text = textStr;
            break;
        case 103:
            [textStr appendString:self.rightLabel.text];
            [textStr appendString:@"程静娇"];
            self.rightLabel.text = textStr;
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
