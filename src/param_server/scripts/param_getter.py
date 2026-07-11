#! /usr/bin/env python3

import rospy

if __name__ == '__main__':
    rospy.init_node("param_get");
    n = rospy.get_param("name", "no_name")
    rospy.loginfo("name = %s", n)
    n2 = rospy.get_param("name2", "no_name")
    rospy.loginfo("name2 = %s", n2)
    

    n3 = rospy.get_param_cached("name", "no_name")
    n4 = rospy.get_param_cached("name2", "no_name")
    rospy.loginfo("name3 = %s", n3)
    rospy.loginfo("name4 = %s", n4)

    names = rospy.get_param_names()
    for name in names:
        rospy.loginfo("name = %s", name)

    rospy.loginfo(rospy.has_param("name"))
    rospy.loginfo(rospy.has_param("name2"))

    rospy.loginfo(rospy.search_param("name"))
    rospy.loginfo(rospy.search_param("name2"))