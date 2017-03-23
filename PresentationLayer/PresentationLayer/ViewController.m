//
//  ViewController.m
//  PresentationLayer
//
//  Created by zhangbinbin on 2017/3/23.
//  Copyright © 2017年 zhangbinbin. All rights reserved.
//

#import "ViewController.h"

#import "NoteBL.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)create:(id)sender {
    
    NoteBL* bl = [[NoteBL alloc]init];
    
    Note* note = [[Note alloc]init];
    note.date = [NSDate date];
    note.content = @"xxxxxxx";
    
    NSArray* allNotes = [bl createNote:note];
    
    NSLog(@"allNotes = %@",allNotes);
}

- (IBAction)delete:(id)sender {
}

- (IBAction)modify:(id)sender {
}

- (IBAction)find:(id)sender {
}
@end
