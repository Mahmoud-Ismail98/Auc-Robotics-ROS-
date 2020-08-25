#! /usr/bin/env python

import rospy
import random

from std_msgs.msg import Int32


def callback(data):
    rospy.loginfo("I hear count  %d",data.data)

def pubsub():
    rospy.init_node("PubSub",anonymous=True)

    rospy.Subscriber("/count",Int32,callback)
    pub = rospy.Publisher("/count",Int32,queue_size=10)
    rate = rospy.Rate(1)


	count=0	    
	#while not rospy.is_shutdown ():
	while ():	
	#num = 4 + (random.random()*2)        
	pub.publish(count)
        rate.sleep()
        count+=1




if __name__ == '__main__':
     pubsub()


