//
//  ViewController.m
//  UITextView文字超链接
//
//  Created by imac on 2017/2/24.
//  Copyright © 2017年 imac. All rights reserved.
//

#import "ViewController.h"

/**
  UITextView超链接
 */
#import "ZTextViewHyperLink.h"

@interface ViewController ()<UITextViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITextView * textView = [[UITextView alloc] initWithFrame:CGRectMake(100, 200, 200, 200)];
    textView.backgroundColor =[UIColor whiteColor];
    //实现类方法
    textView.attributedText = [ZTextViewHyperLink AllString:@"这里的天气很好,我要到百度上面去买个面膜" ChangeString:@"百度" ChangeStrColor:[UIColor blueColor] StrStyle:NSUnderlineStyleNone ];
    textView.dataDetectorTypes = UIDataDetectorTypeLink;
    [self.view addSubview:textView];
    textView.delegate = self;
    [textView setSelectable: YES];
    
    //非编辑状态下,才能允许跳转
    [textView setEditable:NO];
    
}


/**
  代理方法
 */
- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange {
    
    //要打开的超链接
    NSString *urlStr= @"http://www.hao123.com";
    //iOS10,打开跳转链接新方法
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:urlStr] options:@{} completionHandler:^(BOOL success) {
    }];
    return YES;
}




@end
