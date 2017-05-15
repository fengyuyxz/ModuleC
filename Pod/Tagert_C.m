//
//  Tagert_C.m
//  ModuleC
//
//  Created by yanxuezhou on 2017/5/15.
//  Copyright © 2017年 yanxuezhou. All rights reserved.
//

#import "Tagert_C.h"
#import "ModulCContoller.h"
@implementation Tagert_C
-(UIViewController *)action_modulC{
    return [[ModulCContoller alloc] initWithNibName:@"ModulCContoller" bundle:nil];
}
@end
