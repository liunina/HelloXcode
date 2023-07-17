//___FILEHEADER___

#import "___FILEBASENAME___.h"
#import "___VARIABLE_productName___CellModel.h"

@interface ___VARIABLE_productName:identifier___ViewModel ()
@property (nonatomic, strong) NSObject *model;
@property (nonatomic, strong) NSMutableArray <___VARIABLE_productName___CellModel *>*cellModels;
@end

@implementation ___VARIABLE_productName___ViewModel

- (instancetype)initWithModel:(NSObject *)model {
    self = [super init];
    if (self) {
        self.model = model;
        [self onInit];
    }
    return self;
}

- (void)onInit {
    NSMutableArray *cellModels = @[].mutableCopy;
    
    for (int i = 0; i < 10; i++) {
        ___VARIABLE_productName___CellModel *cellModel = [[___VARIABLE_productName___CellModel alloc] initWithModel:self];
        [cellModels addObject:cellModel];
    }
    
    [self.cellModels addObjectsFromArray:cellModels];
}

#pragma mark - ___VARIABLE_productName:identifier___ViewModelDatasource

- (NSInteger)numberOfSections {
    return 1;
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section {
    return self.cellModels.count;
}

- (___VARIABLE_productName___CellModel *)itemForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row < self.cellModels.count) {
        return self.cellModels[indexPath.row];
    }
    return nil;
}

- (CGFloat)heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    ___VARIABLE_productName___CellModel *cellModel = [self itemForRowAtIndexPath:indexPath];
    return cellModel.rowHeight;
}

- (void)onSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ___VARIABLE_productName___CellModel *cellModel = [self itemForRowAtIndexPath:indexPath];
}

#pragma mark - getter/setter

- (NSMutableArray *)cellModels {
    if (!_cellModels) {
        _cellModels = @[].mutableCopy;
    }
    return _cellModels;
}

@end
