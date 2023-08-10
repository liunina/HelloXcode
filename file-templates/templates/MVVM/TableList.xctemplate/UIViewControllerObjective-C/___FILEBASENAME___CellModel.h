//___FILEHEADER___

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class ___VARIABLE_productName___Cell, ___VARIABLE_productName___CellModel;
@protocol ___VARIABLE_productName___CellModelDatasource <NSObject>
/// 行高
@property (nonatomic, assign, readonly) CGFloat rowHeight;

@end

@protocol ___VARIABLE_productName___CellModelDelegate <NSObject>

@optional

/// 点击cell事件
/// - Parameters:
///   - cell: 视图
///   - cellModel: 视图模型
- (void)cell:(___VARIABLE_productName___Cell *)cell onSelectRowWithCellModel:(___VARIABLE_productName___CellModel *)cellModel;

@end

//@class <#type#>;
@interface ___VARIABLE_productName___CellModel : NSObject<___VARIABLE_productName___CellModelDatasource>
@property (nullable, nonatomic, weak) IBOutlet id<___VARIABLE_productName___CellModelDelegate> delegate;
@property (nonatomic, strong, readonly) NSObject *model;

/// 通过模型构建视图模型
/// - Parameter model: <#model description#>
- (instancetype)initWithModel:(NSObject *)model;

@end

NS_ASSUME_NONNULL_END
