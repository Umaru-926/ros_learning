import rospy
from ser_and_cli.srv import number, numberRequest, numberResponse
# from ser_and_cli.srv import *

def addNumber(request):
    response = numberResponse()
    response.sum = request.num1 + request.num2
    rospy.loginfo("num1 = %d, num2 = %d, sum = %d", request.num1, request.num2, response.sum)
    return response

if __name__ == '__main__':
    rospy.init_node("add_two_number")
    rospy.Service("addTwoNumbers", number, addNumber)
    rospy.spin()