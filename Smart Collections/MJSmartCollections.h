//
//  MJSmartCollections.h
//  Smart Collections
//
//  Created by Mejdej on 05/05/17.
//  Copyright (c) 2017 Mejdej. All rights reserved.
//

#import "MJSmartArray.h"
#import "__MJStop.h"

#ifndef Smart_Collections_MJSmartCollections_h
#define Smart_Collections_MJSmartCollections_h


#define A(...) [MJSmartArray arrayWithObjects:__VA_ARGS__, [__MJStop stop]]
#define Anull(...) [MJSmartArray arrayWithNullObjects:__VA_ARGS__, [__MJStop stop]]

#define MA(...) [MJSmartArray mutableArrayWithObjects:__VA_ARGS__, [__MJStop stop]]
#define MAnull(...) [MJSmartArray mutableArrayWithNullObjects:__VA_ARGS__, [__MJStop stop]]


#endif
