//
//  ViewController.m
//  JSONFlickr
//
//  Created by 酒井 能克 on 2013/03/12.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // UIWebViewのインスタンス化
    CGRect rect = self.view.frame;
    UIWebView *webView = [[UIWebView alloc]initWithFrame:rect];
    
    // Webページの大きさを自動的に画面にフィットさせる
    webView.scalesPageToFit = YES;
    
    // デリゲートを指定
    webView.delegate = self;
    
    // URLを指定
    NSURL *url = [NSURL URLWithString:@"http://www.google.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    // リクエストを投げる
    [webView loadRequest:request];
    
    // UIWebViewのインスタンスをビューに追加
    [self.view addSubview:webView];
}


/**
 * Webページのロード時にインジケータを動かす
 */
- (void)webViewDidStartLoad:(UIWebView*)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}


/**
 * Webページのロード完了時にインジケータを非表示にする
 */
- (void)webViewDidFinishLoad:(UIWebView*)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}

@end
