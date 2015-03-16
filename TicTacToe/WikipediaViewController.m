//
//  WikipediaViewController.m
//  TicTacToe
//
//  Created by Michael Sevy on 3/13/15.
//  Copyright (c) 2015 Michael Sevy. All rights reserved.
//

#import "WikipediaViewController.h"

@interface WikipediaViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation WikipediaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *urlString = @"http://www.en.wikipedia.org/wiki/tic-tac-toe";
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
    self.webView.scrollView.scrollEnabled = YES;
}


@end
