//
//  AddStudentViewController.h
//  StudentStore
//
//  Created by james on 14-8-11.
//  Copyright (c) 2014年 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Student.h"

@interface AddStudentViewController : UIViewController

@property (nonatomic, strong) IBOutlet UITextField *nameTextField;
@property (nonatomic, strong) IBOutlet UITextField *ageTextField;
@property (nonatomic, strong) IBOutlet UITextField *genderTextField;

@property (nonatomic, strong) Student *student;

- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;

@end
