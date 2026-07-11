#! /usr/bin/env python3
import rospy

if __name__ == '__main__':
    rospy.init_node("param_set")
    rospy.set_param("name", "xiaolaba")

    