//
//  vehicleIncludes.h
//  Delivery
//
//  Created by Grant Jennings on 1/12/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//



// This is a conglomerated include for multiple types of car for easy addition to the car creator class.
// Make sure to add the car to both the enum and the switch-case!

#ifndef Delivery_vehicleIncludes_h
#define Delivery_vehicleIncludes_h
#import "whiteTruck.h"
#import "sportsCar.h"
#import "policeCar.h"
#import "pickupTruck.h"
#import "lightRunner.h"
#import "jeep.h"

typedef enum {
    defaultVehicleEnum,
    whiteTruckEnum,
    sportsCarEnum, // Add from here
    policeCarEnum,
    pickupTruckEnum,
    lightRunnerEnum,
    jeepEnum,
    
    
    
} vehicleType;


#endif
