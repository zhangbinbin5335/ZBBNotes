//
//  NoteBL.m
//  BusinessLogicLayer
//
//  Created by zhangbinbin on 2017/3/23.
//  Copyright © 2017年 zhangbinbin. All rights reserved.
//

#import "NoteBL.h"

@implementation NoteBL

//插入备 录的方法
-(NSMutableArray*) createNote:(Note*)model
{
    NoteDao *dao = [NoteDao sharedManager];
    [dao create:model];
    return [dao findAll];
}
//删除备 录的方法
-(NSMutableArray*) remove:(Note*)model
{
    NoteDao *dao = [NoteDao sharedManager];
    [dao remove:model];
    return [dao findAll];
}
//查询  数据的方法
-(NSMutableArray*) findAll
{
    NoteDao *dao = [NoteDao sharedManager];
    return [dao findAll];
}

@end
