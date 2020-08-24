#! /usr/bin/env python

import rospy
from light_robot.msg import complex


def callback(complex):

   rospy.loginfo(" %d + %d i",complex.real,complex.img)   
   
def listener():
   rospy.init_node('listener', anonymous=True)   

   rospy.Subscriber("/Num", complex, callback)

   rospy.spin()
   
if __name__ == '__main__':
       listener()
