//
//  SecondViewController.m
//  Leila & Austin Wedding App
//
//  Created by Austin Hay on 7/10/16.
//  Copyright © 2016 Austin Hay. All rights reserved.
//

#import "SecondViewController.h"
#import "BranchUniversalObject.h"
#import "BranchLinkProperties.h"

@interface SecondViewController ()
    @property (nonatomic, strong) BranchUniversalObject *branchUniversalObject;
@end

@implementation SecondViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.branchUniversalObject = [[BranchUniversalObject alloc] initWithCanonicalIdentifier:@"item/12345"];
    self.branchUniversalObject.title = @"Leila & Austin Wedding App";
    self.branchUniversalObject.contentDescription = @"The single app where you can find all the information about Austin and Leila's wedding.";
    self.branchUniversalObject.imageUrl = @"https://cdn.branch.io/branch-assets/1468132044428-og_image.png";
    

}

- (IBAction)ShareApp:(id)sender {
    BranchLinkProperties *linkProperties = [[BranchLinkProperties alloc] init];
    linkProperties.feature = @"App Sharing";
    [linkProperties addControlParam:@"$desktop_url" withValue:@"http://www.leilawillyoumarry.me"];
    
    [self.branchUniversalObject showShareSheetWithLinkProperties:linkProperties
                                        andShareText:@"Excited to see you at our wedding! Download the app to stay up to date :)"
                                         fromViewController:self
                                                andCallback:^{
                                                    NSLog(@"finished presenting");
                                                }];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end


