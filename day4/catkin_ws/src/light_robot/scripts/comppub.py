 
#! /usr/bin/env python

import rospy
import random

from light_robot.msg import complex 

def talker():
    rospy.init_node("complexnode1",anonymous=True)
    pub = rospy.Publisher("/compnum",complex,queue_size=10)
    rate = rospy.Rate(1)


    complex_num = complex() 

    while not rospy.is_shutdown():
      complex_num.real =2.8+(2*random.random())
      complex_num.img = 7.6+(2*random.randdom())

        rospy.loginfo(complex_num)
        pub.publish(complex_num)
        rate.sleep()
    



if __name__ == "__main__":

  try:
    talker()
  except rospy.ROSInterruptException:
    pass
