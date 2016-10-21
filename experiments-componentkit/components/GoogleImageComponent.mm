//
//  GoogleImageComponent.m
//  experiments-componentkit
//
//  Created by Andrew Ashurow on 20.10.16.
//  Copyright © 2016 Andrew Ashurow. All rights reserved.
//

#import "GoogleImageComponent.h"

@implementation GoogleImageComponent


+ (instancetype)newWithText:(NSString *)text {
    return [super newWithComponent:
            [CKInsetComponent
             newWithInsets:{.top = 70, .bottom = 70, .left = 20, .right = 20}
             component:
             [CKStackLayoutComponent
              newWithView:{}
              size:{}
              style:{}
              children:{
                  {[CKLabelComponent
                    newWithLabelAttributes:{
                        .string = text,
                        .font = [UIFont fontWithName:@"Baskerville" size:30]
                    }
                    viewAttributes:{
                        {@selector(setBackgroundColor:), [UIColor clearColor]},
                        {@selector(setUserInteractionEnabled:), @NO},
                    }
                    size:{ }],
                      .alignSelf = CKStackLayoutAlignSelfCenter
                  }
              }]]];
}


//- (CKComponentLayout)layoutThatFits:(CKSizeRange)constrainedSize
//                         parentSize:(CGSize)parentSize{
//    
//}

@end
