//
//  ViewController.m
//  HelloWorld
//
//  Created by Jeremy Sears on 9/15/17.
//  Copyright © 2017 Lookout. All rights reserved.
//

#import "ViewController.h"

/*
 * A simple hello world taken from here:
 * http://www.ios-blog.co.uk/tutorials/objective-c/create-your-first-ios-7-hello-world-application/
 * https://youtu.be/NeDgTzp_BLg
 */
@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *messageLabel;
@property (nonatomic, weak) IBOutlet UITextField *inputField;

@end

@implementation ViewController

- (IBAction)Enter {
    NSString *yourName = self.inputField.text;
    NSString *myName = @"Jeremy";
    NSString *message;
    
    if ([yourName length] == 0) {
        yourName = @"World";
    }
    
    if ([yourName isEqualToString:myName]) {
        message = [NSString stringWithFormat:@"Hello %@ We have the same name", yourName];
    }else {
        message = [NSString stringWithFormat:@"Hello %@", yourName  ];
    }
    
    self.messageLabel.text = message;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
