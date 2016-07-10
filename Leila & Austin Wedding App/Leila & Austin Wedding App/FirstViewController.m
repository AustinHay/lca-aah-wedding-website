//
//  FirstViewController.m
//  Leila & Austin Wedding App
//
//  Created by Austin Hay on 7/10/16.
//  Copyright © 2016 Austin Hay. All rights reserved.
//

#import "FirstViewController.h"
#import <SafariServices/SafariServices.h>

@interface FirstViewController () <SFSafariViewControllerDelegate>

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)openURL:(UIButton *)sender {
    SFSafariViewController *safariVC = [[SFSafariViewController alloc]initWithURL:[NSURL URLWithString:@"http://www.leilawillyoumarry.me"] entersReaderIfAvailable:YES];
    safariVC.delegate = self;
    [self presentViewController:safariVC animated:NO completion:nil];
}

#pragma mark - SFSafariViewController delegate methods
- (void)safariViewController:(SFSafariViewController *)controller didCompleteInitialLoad:(BOOL)didLoadSuccessfully {
    // Load finished
}

- (void)safariViewControllerDidFinish:(SFSafariViewController *)controller {
    // Done button pressed
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end






