//
//  TableViewCell.m
//  Timeline
//
//  Created by YaSha_Tom on 2017/8/18.
//  Copyright © 2017年 YaSha-Tom. All rights reserved.
//

#import "TableViewCell.h"
#import <Masonry.h>

@implementation TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.roundView = [[UIView alloc]init];
        self.roundView.backgroundColor = [UIColor redColor];
        self.roundView.layer.masksToBounds = YES;
        self.roundView.layer.cornerRadius = 12;
        self.roundView.layer.borderWidth = 1;
        [self.contentView addSubview:self.roundView];
        [self.roundView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).offset(8);
            make.left.mas_equalTo(self.mas_left).offset(15);
            make.size.mas_equalTo(CGSizeMake(24, 24));
        }];
        
        self.titleLabel = [[UILabel alloc]init];
        self.titleLabel.font = [UIFont systemFontOfSize:15];
        [self addSubview:self.titleLabel];
        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).offset(8);
            make.left.mas_equalTo(self.roundView.mas_right).offset(20);
            make.size.mas_equalTo(CGSizeMake(200, 20));
        }];
        
        self.contentlabel = [[UILabel alloc]init];
        self.contentlabel.textAlignment = NSTextAlignmentLeft;
        self.contentlabel.numberOfLines = 0;
        self.contentlabel.font = [UIFont systemFontOfSize:15];
        [self.contentView addSubview:self.contentlabel];
        [self.contentlabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.contentView.mas_top).offset(30);
            make.left.mas_equalTo(self.roundView.mas_right).offset(20);
            make.bottom.mas_equalTo(self.contentView.mas_bottom).offset(-5);
            make.right.mas_equalTo(self.contentView.mas_right).offset(-5);
            make.width.mas_equalTo(235);
            
        }];

        
//
//        self.titleLabel = [[UILabel alloc]init];
//        self.titleLabel.font = [UIFont systemFontOfSize:16];
//        self.titleLabel.backgroundColor = [UIColor grayColor];
//        [self.contentView addSubview:self.titleLabel];
//        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.mas_equalTo(self.mas_top).offset(15);
//            make.left.mas_equalTo(self.roundView.mas_right).offset(15);
//            make.size.mas_equalTo(CGSizeMake(200, 30));
//        }];
//        
//        self.contentLanel = [[UILabel alloc]init];
//        self.contentLanel.font = [UIFont systemFontOfSize:15];
//        self.contentLanel.numberOfLines = 0;
//        self.contentLanel.backgroundColor = [UIColor greenColor];
//        [self.contentView addSubview:self.contentLanel];
//        [self.contentLanel mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.mas_equalTo(self.titleLabel.mas_bottom).offset(5);
//            make.left.mas_equalTo(self.roundView.mas_right).offset(15);
//            make.right.mas_equalTo(self.contentView.mas_right).offset(-5);
//            make.bottom.mas_equalTo(self.contentView.mas_bottom).offset(-5);
//            make.width.mas_equalTo(@200);
//        }];
//        
        _onLine = [[UILabel alloc]init];
        _onLine.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:_onLine];
        [_onLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.mas_left).offset(27);
            make.size.mas_equalTo(CGSizeMake(1, 15));
        }];

        _downLine = [[UILabel alloc]init];
        _downLine.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:_downLine];
        [_downLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.roundView.mas_bottom);
            make.left.mas_equalTo(self.mas_left).offset(27);
            make.bottom.mas_equalTo(self.mas_bottom);
            make.width.mas_equalTo(@1);
        }];
        
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
