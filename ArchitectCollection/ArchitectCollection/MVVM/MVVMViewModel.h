//
//  MVVMViewModel.h
//  ArchitectCollection
//
//  Created by berlinbli on 2021/3/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class MVVMViewController;

@interface MVVMViewModel : NSObject

- (instancetype)initWithVc:(MVVMViewController *)vc;

@end

NS_ASSUME_NONNULL_END
