//
//  AppMacro.h
//  ios-base-pj
//
//  Created by easonyi on 17/5/2021.
//

#ifndef AppMacro_h
#define AppMacro_h

// block宏定义
typedef void(^Block)(void);

//弱引用
#define WeakSelf(type)  __weak typeof(type) weak##type = type;
//强引用
#define StrongSelf(type)  __strong typeof(type) strong##type = type;

#endif /* AppMacro_h */
