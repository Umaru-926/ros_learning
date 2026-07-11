#! /usr/bin/env python3

import rospy

if __name__ == '__main__':
    rospy.init_node("param_delete")
    try:
        rospy.delete_param("name")
    except Exception as e:
        rospy.loginfo("no name")
    
