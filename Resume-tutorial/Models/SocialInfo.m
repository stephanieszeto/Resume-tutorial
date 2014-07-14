//
//  SocialInfo.m
//  Resume-tutorial
//
//  Created by Stephanie Szeto on 7/9/14.
//  Copyright (c) 2014 projects. All rights reserved.
//

#import "SocialInfo.h"

@implementation SocialInfo

+ (SocialInfo *)socialInfoWithTitle:(NSString *)title iconNamed:(NSString *)iconName url:(NSString *)url {
    SocialInfo *info = [self new];
    info.title = title;
    info.icon = [UIImage imageNamed:iconName];
    info.url = url;
    
    return info;
}

+ (NSArray *)allSocialInfo {
    static NSArray *all;
    
    if (!all) {
        all = @[[self socialInfoWithTitle:@"GitHub" iconNamed:@"GitHubIcon" url:@"http://github.com/stephanieszeto"],
                
                [self socialInfoWithTitle:@"LinkedIn" iconNamed:@"LinkedInIcon" url:@"http://linkedin.com/in/stephanieszeto"],
                
                [self socialInfoWithTitle:@"Twitter" iconNamed:@"TwitterIcon" url:@"http://twitter.com/stephszeto"]];
    }
    
    return all;
}

@end

