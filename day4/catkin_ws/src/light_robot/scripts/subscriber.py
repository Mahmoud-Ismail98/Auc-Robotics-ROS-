#! /usr/bin/env python


import rospy
from std_msgs.msg import Int64

def callback(data):
    rospy.loginfo("count %d",data.data)


def listener():
    rospy.init_node("nodecount2",anonymous=True)
    rospy.Subscriber("/count1",Int64,callback)
    rospy.spin()


if __name__ == "__main__": 
 listener()
