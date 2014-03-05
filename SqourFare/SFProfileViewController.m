//
//  SFProfileViewController.m
//  SqourFare
//
//  Created by Tanner Whyte on 3/1/14.
//  Copyright (c) 2014 whyte.tanner. All rights reserved.
//

#import "SFProfileViewController.h"

@interface SFProfileViewController ()
@property (strong, nonatomic) SFUser *loggedInUser;
@end

@implementation SFProfileViewController
- (id)initWithUser: (SFUser *)user
{
  if (self = [super init]) {
    self.loggedInUser = user;
  }
  return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
  // WTF WHY THIS NO WORK?
  //NSString *username = self.loggedInUser.username;
  //self.loggedInUserLabel.text = username;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addFriend:(UIButton *)sender {
  SFUser *userToFriend = [SFUser userWithUsername:self.friendUsernameField.text];
  [self.loggedInUser addFriend:userToFriend.userID];
  
}
@end