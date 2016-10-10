//
//  HPPoint.h
//  HPSphereTagCloudView
//
//  Created by Jason on 2016/10/10.
//  Copyright © 2016年 Jason. All rights reserved.
//

#ifndef HPPoint_h
#define HPPoint_h


struct HPPoint {
    CGFloat x;
    CGFloat y;
    CGFloat z;
};

typedef struct HPPoint HPPoint;


HPPoint HPPointMake(CGFloat x, CGFloat y, CGFloat z) {
    HPPoint point;
    point.x = x;
    point.y = y;
    point.z = z;
    return point;
}


#endif /* HPPoint_h */
