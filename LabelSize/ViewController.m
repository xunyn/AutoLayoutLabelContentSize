//
//  ViewController.m
//  LabelSize
//
//  Created by HSBC_XiAn_Core on 8/25/15.
//  Copyright (c) 2015 HSBC_XiAn_Core. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _index = 0;
    _contentArr = @[@"frame时代，是你写的多少位置点就是多少位置点，view不会被自动的拉伸或者改变位置，但是autolayout中的view却会根据屏幕长宽比或者其他view的改变而改变，",@"你经常就会看到被自动布局成了不是你想的样子，这也是太多人被折磨的原因。只要你考虑的相对的位置不正确，它真的就可能会乱掉。",@"传统布局思路中，一个view在哪里有多大，那就写清楚它的坐标位置和宽高就定了，平时用CGRect和CGPoint这两种模型就足够了，而且它一定非常听你的话，写的是多少，它绝对就是多少；但是autolayout的思路却变化了，或者说改进了，它囊括了传统frame布局思路，除了可以告诉view的坐标和宽高，它更提供了一种相对的概念，",@"test"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressChangeButton:(id)sender {
    _index ++;
    if (_index >=[_contentArr count]) {
        _index = 0;
    }
    
    _label1.text = [_contentArr objectAtIndex:_index];
    _label2.text = [_contentArr objectAtIndex:_index];
    
}
@end
