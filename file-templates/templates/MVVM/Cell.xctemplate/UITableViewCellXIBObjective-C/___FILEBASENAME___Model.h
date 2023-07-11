//___FILEHEADER___

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class ___VARIABLE_productName:identifier___, ___VARIABLE_productName:identifier___Model;
@protocol ___VARIABLE_productName:identifier___ModelDatasource <NSObject>
/// 行高
@property (nonatomic, assign, readonly) CGFloat rowHeight;

@end

@protocol ___VARIABLE_productName:identifier___ModelDelegate <NSObject>

@optional

/// 点击cell事件
/// - Parameters:
///   - cell: 视图
///   - cellModel: 视图模型
- (void)cell:(___VARIABLE_productName:identifier___ *)cell onSelectRowWithCellModel:(___VARIABLE_productName:identifier___Model *)cellModel;

@end

// @class <#type#>;
@interface ___VARIABLE_productName:identifier___Model : NSObject<___VARIABLE_productName:identifier___ModelDatasource>
@property (nullable, nonatomic, weak) IBOutlet id<___VARIABLE_productName:identifier___ModelDelegate> delegate;

/// 通过模型视图模型构建
/// - Parameter model: <#model description#>
- (instancetype)initWithModel:(NSObject *)model;

@end


NS_ASSUME_NONNULL_END
