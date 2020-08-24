#!/usr/bin/env python

import rospy

from light_robot.srv import WordCount,WordCountResponse ,WordCountRequest


def count_words(request):

    print "Returning [%s = %d]"%(request.words, len(request.words.split()))
    return WordCountResponse(len(request.words.split()))


def service_server():
	rospy.init_node('service_server')
	service = rospy.Service('word_count', WordCount, count_words)
    	print("Ready to count the words")
	rospy.spin()



if __name__ == "__main__":
    service_server()
