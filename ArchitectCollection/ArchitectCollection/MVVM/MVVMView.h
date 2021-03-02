//
//  MVVMView.h
//  ArchitectCollection
//
//  Created by berlinbli on 2021/3/2.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class MVVMViewModel;

@protocol MVVMViewDelegate <NSObject>

- (void)viewChangeData;

@end

@interface MVVMView : UIView

@property (nonatomic, weak) MVVMViewModel *viewModel;
@property (nonatomic, weak) id<MVVMViewDelegate> delegate;


@end

NS_ASSUME_NONNULL_END
