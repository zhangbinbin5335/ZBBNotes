//
//  NoteDao.h
//  PresentationLayer
//
//  Created by zhangbinbin on 2017/3/23.
//  Copyright © 2017年 zhangbinbin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Note.h"

@interface NoteDao : NSObject

//保存数据列表
@property (nonatomic,strong) NSMutableArray* listData;

+ (NoteDao*)sharedManager;

//插入备 录的方法
-(int) create:(Note*)model;
//删除备 录的方法
-(int) remove:(Note*)model;
//修改备 录的方法
-(int) modify:(Note*)model;
//查询  数据的方法
-(NSMutableArray*) findAll;
//按 主键查询数据的方法
-(Note*) findById:(Note*)model;

@end
