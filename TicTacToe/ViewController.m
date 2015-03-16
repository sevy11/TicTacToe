//
//  ViewController.m
//  TicTacToe
//
//  Created by Michael Sevy on 3/12/15.
//  Copyright (c) 2015 Michael Sevy. All rights reserved.
//

#import "ViewController.h"
#import "WikipediaViewController.h"

@interface ViewController()
@property (weak, nonatomic) IBOutlet UILabel *labelOne;
@property (weak, nonatomic) IBOutlet UILabel *labelTwo;
@property (weak, nonatomic) IBOutlet UILabel *labelThree;
@property (weak, nonatomic) IBOutlet UILabel *labelFour;
@property (weak, nonatomic) IBOutlet UILabel *labelFive;
@property (weak, nonatomic) IBOutlet UILabel *labelSix;
@property (weak, nonatomic) IBOutlet UILabel *labelSeven;
@property (weak, nonatomic) IBOutlet UILabel *labelEight;
@property (weak, nonatomic) IBOutlet UILabel *labelNine;

@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;

@property CGPoint originalCenter;

@property NSArray *xoArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.originalCenter = self.whichPlayerLabel.center;

    self.xoArray = @[@"X",@"O"];

    self.whichPlayerLabel.text = self.xoArray[1];

    if (self.whichPlayerLabel.text == self.xoArray[0]) {
        self.whichPlayerLabel.textColor = [UIColor blueColor];
    } else if (self.whichPlayerLabel.text == self.xoArray[1]){
        self.whichPlayerLabel.textColor = [UIColor redColor];
    }




}

-(IBAction)findLabelUsingPoint:(UITapGestureRecognizer *)sender   {

    if (sender.state == UIGestureRecognizerStateEnded) {

        [UIView animateWithDuration:1.0 animations:^{
            self.whichPlayerLabel.center = self.originalCenter;
        }];
    }

        CGPoint point = [sender locationInView:self.view];
        self.whichPlayerLabel.center = point;
        //if whichPlayerlabel touches a box changes that box

        if (CGRectContainsPoint(self.labelOne.frame, point)) {
            self.whichPlayerLabel.center = point;
            self.labelOne.text = self.whichPlayerLabel.text;
            self.labelOne.textColor = self.whichPlayerLabel.textColor;

            if(self.whichPlayerLabel.text == self.xoArray[0]) {
                self.whichPlayerLabel.text = @"O";
                self.whichPlayerLabel.textColor = [UIColor redColor];
            }   else  {
                    self.whichPlayerLabel.text = @"X";
                    self.whichPlayerLabel.textColor = [UIColor blueColor];
                }
            }

                if (CGRectContainsPoint(self.labelTwo.frame, point)) {
                    self.whichPlayerLabel.center = point;
                    self.labelTwo.text = self.whichPlayerLabel.text;
                    self.labelTwo.textColor = self.whichPlayerLabel.textColor;

                    if (self.whichPlayerLabel.text == self.xoArray[0]) {
                        self.whichPlayerLabel.text = @"O";
                        self.whichPlayerLabel.textColor = [UIColor redColor];
                    }else{
                        self.whichPlayerLabel.text = @"X";
                        self.whichPlayerLabel.textColor = [UIColor blueColor];
                    }
                }
                    if (CGRectContainsPoint(self.labelThree.frame, point)) {
                        self.whichPlayerLabel.center = point;
                        self.labelThree.text = self.whichPlayerLabel.text;
                        self.labelThree.textColor = self.whichPlayerLabel.textColor;

                        if (self.whichPlayerLabel.text == self.xoArray[0]) {
                            self.whichPlayerLabel.text = @"O";
                            self.whichPlayerLabel.textColor = [UIColor redColor];
                        }else{
                            self.whichPlayerLabel.text = @"X";
                            self.whichPlayerLabel.textColor = [UIColor blueColor];
                        }
                    }
                        if (CGRectContainsPoint(self.labelFour.frame, point)) {
                            self.whichPlayerLabel.center = point;
                            self.labelFour.text = self.whichPlayerLabel.text;
                            self.labelFour.textColor = self.whichPlayerLabel.textColor;

                            if (self.whichPlayerLabel.text == self.xoArray[0]) {
                                self.whichPlayerLabel.text = @"O";
                                self.whichPlayerLabel.textColor = [UIColor redColor];
                            }else{
                                self.whichPlayerLabel.text = @"X";
                                self.whichPlayerLabel.textColor = [UIColor blueColor];
                            }
                        }
                            if (CGRectContainsPoint(self.labelFive.frame, point)) {
                                self.whichPlayerLabel.center = point;
                                self.labelFive.text = self.whichPlayerLabel.text;
                                self.labelFive.textColor = self.whichPlayerLabel.textColor;

                                if (self.whichPlayerLabel.text == self.xoArray[0]) {
                                    self.whichPlayerLabel.text = @"O";
                                    self.whichPlayerLabel.textColor = [UIColor redColor];
                                }else{
                                    self.whichPlayerLabel.text = @"X";
                                    self.whichPlayerLabel.textColor = [UIColor blueColor];
                                }
                            }
                                if (CGRectContainsPoint(self.labelSix.frame, point)) {
                                    self.whichPlayerLabel.center = point;
                                    self.labelSix.text = self.whichPlayerLabel.text;
                                    self.labelSix.textColor = self.whichPlayerLabel.textColor;

                                    if (self.whichPlayerLabel.text == self.xoArray[0]) {
                                        self.whichPlayerLabel.text = @"O";
                                        self.whichPlayerLabel.textColor = [UIColor redColor];
                                    }else{
                                        self.whichPlayerLabel.text = @"X";
                                        self.whichPlayerLabel.textColor = [UIColor blueColor];
                                    }
                                }
                                    if (CGRectContainsPoint(self.labelSeven.frame, point)) {
                                        self.whichPlayerLabel.center = point;
                                        self.labelSeven.text = self.whichPlayerLabel.text;
                                        self.labelSeven.textColor = self.whichPlayerLabel.textColor;

                                        if (self.whichPlayerLabel.text == self.xoArray[0]) {
                                            self.whichPlayerLabel.text = @"O";
                                            self.whichPlayerLabel.textColor = [UIColor redColor];
                                        }else{
                                            self.whichPlayerLabel.text = @"X";
                                            self.whichPlayerLabel.textColor = [UIColor blueColor];
                                        }
                                    }
                                        if (CGRectContainsPoint(self.labelEight.frame, point)) {
                                            self.whichPlayerLabel.center = point;
                                            self.labelEight.text = self.whichPlayerLabel.text;
                                            self.labelEight.textColor = self.whichPlayerLabel.textColor;

                                            if (self.whichPlayerLabel.text == self.xoArray[0]) {
                                                self.whichPlayerLabel.text = @"O";
                                                self.whichPlayerLabel.textColor = [UIColor redColor];
                                            }else{
                                                self.whichPlayerLabel.text = @"X";
                                                self.whichPlayerLabel.textColor = [UIColor blueColor];
                                            }
                                        }
                                            if (CGRectContainsPoint(self.labelNine.frame, point)) {
                                                self.whichPlayerLabel.center = point;
                                                self.labelNine.text = self.whichPlayerLabel.text;
                                                self.labelNine.textColor = self.whichPlayerLabel.textColor;

                                                if (self.whichPlayerLabel.text == self.xoArray[0]) {
                                                    self.whichPlayerLabel.text = @"O";
                                                    self.whichPlayerLabel.textColor = [UIColor redColor];
                                                }else{
                                                    self.whichPlayerLabel.text = @"X";
                                                    self.whichPlayerLabel.textColor = [UIColor blueColor];
                                }
                }
//x horzontal first row
    if (self.labelOne.text && self.labelTwo.text == self.xoArray[0]){
    }
    if (self.labelOne.text && self.labelTwo.text && self.labelThree.text == self.xoArray[0]) {

        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"X Wins" message:@"We have a Winner!" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
        [alert show];
        }
//x vert first column
    if (self.labelOne.text && self.labelFour.text == self.xoArray[0]) {
    }
    if (self.labelOne.text && self.labelFour.text && self.labelSeven.text == self.xoArray[0])   {

        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"X Wins" message:@"We have a Winner!" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
    [alert show];
}

}

//if (self.labelOne.text == self.xoArray[0] && self.labelTwo == self.xoArray[0] && self.labelThree == self.xoArray[0]) {
//    NSLog(@"Game to X");

@end
