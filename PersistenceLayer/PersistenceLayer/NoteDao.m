//
//  NoteDao.m
//  PresentationLayer
//
//  Created by zhangbinbin on 2017/3/23.
//  Copyright © 2017年 zhangbinbin. All rights reserved.
//

#import "NoteDao.h"

@implementation NoteDao

+ (NoteDao*)sharedManager{
    static NoteDao* sharedManager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        NSDate *date1 = [dateFormatter dateFromString:@"2010-08-04 16:01:03"];
        Note* note1 = [[Note alloc] init];
        note1.date = date1;
        note1.content = @"Welcome to MyNotes.";
        
        NSDate *date2 = [dateFormatter dateFromString:@"2011-12-04 16:01:03"];
        Note* note2 = [[Note alloc] init];
        note2.date = date2;
        note2.content = @"  使用MyNotes ";
        
        sharedManager = [[self alloc] init];
        
        sharedManager.listData = [[NSMutableArray alloc] init];
        [sharedManager.listData addObject:note1];
        [sharedManager.listData addObject:note2];
    });
    
    return sharedManager;
}

//插入备 录的方法
-(int) create:(Note*)model{
    [self.listData addObject:model];
    return 0;
}
//删除备 录的方法
-(int) remove:(Note*)model{
    for (int i = 0; i < self.listData.count; i++) {
        //比较日期主键是 相等
        if ([model.date isEqualToDate:model.date]){
            [self.listData removeObject: model];
            break;
        }
    }
    return 0;
}

//修改备 录的方法
-(int) modify:(Note*)model{
    for (Note* note in self.listData) {
        //比较日期主键是 相等
        if ([note.date isEqualToDate:model.date]){
            note.content = model.content;
            break; }
    }
    return 0;
}
//查询所愿数据的方法
-(NSMutableArray*) findAll{
    return self.listData;
}
//按 主键查询数据的方法
-(Note*) findById:(Note*)model{
    for (Note* note in self.listData) {
        //比较日期主键是 相等
        if ([note.date isEqualToDate:model.date]){
            return note;
        }
    }
    return nil;
}

@end
