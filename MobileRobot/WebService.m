//
//  WebService.m
//  MobileRobot
//
//  Created by Adam Shiemke on 11/21/15.
//  Copyright © 2015 Adam Shiemke. All rights reserved.
//

#import "WebService.h"
#import "AFNetworking.h"

static const NSString *baseURL = @"http://robot.boulderfoodrescue.org";

static const NSString *tokenDefaultsKey = @"com.BFR.logintokenkey";

@implementation WebService

+ (void) loginWithUsername:(NSString*)username andPassword:(NSString*)password withCompletion:(void (^)(NSError *error))copmletion{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    NSString *url = [NSString stringWithFormat:@"%@/volunteers/sign_in.json?email=%@&password=%@", baseURL, username, password];
    [manager POST:url parameters:nil success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        
    } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
        
    }];
}

+ (void) listRoutesForCurrentUserWithCopmletion:(void (^)(NSError *error, NSArray *shifts))copmletion{
    
}

+ (void) getInfoForRouteWithCompletion:(void (^)(NSError *error, NSArray *locations))copmletion{
    
}

@end
