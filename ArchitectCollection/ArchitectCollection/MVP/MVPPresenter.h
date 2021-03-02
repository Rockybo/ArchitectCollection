//
//  MVPPresenter.h
//  ArchitectCollection
//
//  Created by berlinbli on 2021/3/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class MVPViewController;

@interface MVPPresenter : NSObject

- (instancetype)initWithVc:(MVPViewController *)vc;

@end

NS_ASSUME_NONNULL_END
