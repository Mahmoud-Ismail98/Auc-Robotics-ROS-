#include "ros/ros.h"
#include "std_msgs/Int8.h"

using namespace std;

void chatterCallback(const std_msgs::Int8::ConstPtr& msg)
{

  ROS_INFO("I heard: [%d]", msg->data);

}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "listener");

  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("chatter", 1000, chatterCallback);

  ros::spin();

  return 0;
}
