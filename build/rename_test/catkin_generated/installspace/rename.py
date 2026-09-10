import rospy
from std_msgs.msg import String


def rename():
    rospy.init_node("rename_node_py")
    # 全局
    pub = rospy.Publisher("/chatter", String, queue_size=10)
    # 相对
    # pub = rospy.Publisher("chatter", String, queue_size=10)
    # 私有
    # pub = rospy.Publisher("~chatter", String, queue_size=10)

    while not rospy.is_shutdown():
        pass

if __name__ == "__main__":
    rename()
