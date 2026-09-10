import rospy

if __name__ == '__main__':
    rospy.init_node('rename_param_py')
    rospy.set_param('A', 10)
    rospy.set_param('/B', 10)
    rospy.set_param('~C', 10)
