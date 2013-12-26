//
//  ViewController.m
//  RenderingBrowserDemo
//
//  Created by Oleksandr Dodatko on 12/26/13.
//  Copyright (c) 2013 Sitecore. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet SCWebBrowser *webBrowser;
@property (weak, nonatomic) IBOutlet UITextField *addressStringInput;
@property (weak, nonatomic) IBOutlet UIButton *refreshPageButton;

@end

@implementation ViewController

-(IBAction)onAddressEntered:(id)sender
{
    NSString* address = self.addressStringInput.text;
    
    [ self.webBrowser loadURLWithString: address ];
    [ self.addressStringInput resignFirstResponder ];
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    [ textField resignFirstResponder ];
}

@end
