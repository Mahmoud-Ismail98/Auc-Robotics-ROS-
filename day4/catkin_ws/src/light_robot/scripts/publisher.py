#! /usr/bin/env python

import rospy
from std_msgs.msg import Int64

def talker():
    rospy.init_node("nodecount1",anonymous=True)
    pub = rospy.Publisher("/count1",Int64,queue_size=10)
    rate = rospy.Rate(1)

    count= 0
    while not rospy.is_shutdown():
        rospy.loginfo(count)
        pub.publish(count)
        rate.sleep()
        count+=1

if __name__ == "__main__":
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
