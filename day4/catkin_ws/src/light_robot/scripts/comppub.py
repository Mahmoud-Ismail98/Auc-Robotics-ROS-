#!/usr/bin/env python

import rospy
import random

from light_robot.msg import complex 
    

rospy.init_node('sender') 

pub = rospy.Publisher('/Num', complex, queue_size=1) 

rate = rospy.Rate(1) 

complex = complex() 

while not rospy.is_shutdown():

  complex.real = input("integer=")

  complex.img = input("complex =")

  rospy.loginfo(complex)

  pub.publish(complex)

  rate.sleep()
