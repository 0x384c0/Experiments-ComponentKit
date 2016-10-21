//
//  GoogleImageComponent.h
//  experiments-componentkit
//
//  Created by Andrew Ashurow on 20.10.16.
//  Copyright © 2016 Andrew Ashurow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ComponentKit/ComponentKit.h>

@interface GoogleImageComponent : CKCompositeComponent

/** Returns a new component. */
+ (instancetype)newWithText:(NSString *)text;

///** Returns a layout for the component and its children. */
//- (CKComponentLayout)layoutThatFits:(CKSizeRange)constrainedSize
//                         parentSize:(CGSize)parentSize;


@end
