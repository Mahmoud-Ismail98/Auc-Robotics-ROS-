#! /usr/bin/env python

import rospy
from light_robot.msg import complex

def callback(comp):
    rospy.loginfo("real is %d, img is %d",comp.real,comp.imaginary)


def listener():
    rospy.init_node("complexnode2",anonymous=True)
    rospy.Subscriber("/compnum",complex,callback)
    rospy.spin()
    

listener()
