//
//  NoteBL.h
//  BusinessLogicLayer
//
//  Created by zhangbinbin on 2017/3/23.
//  Copyright © 2017年 zhangbinbin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PersistenceLayer.h"

@interface NoteBL : NSObject

//插入备 录的方法
-(NSMutableArray*) createNote:(Note*)model;
//删除备 录的方法
-(NSMutableArray*) remove:(Note*)model;
//查询  数据的方法
-(NSMutableArray*) findAll;

@end
