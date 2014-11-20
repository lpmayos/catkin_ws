/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by gensrv_cpp from file /home/upf/code/catkin_ws/src/ros_webots_epuck_nxt_differential_robot/srv/RsonarStatus.srv
 *
 */


#ifndef ROS_WEBOTS_EPUCK_NXT_DIFFERENTIAL_ROBOT_MESSAGE_RSONARSTATUS_H
#define ROS_WEBOTS_EPUCK_NXT_DIFFERENTIAL_ROBOT_MESSAGE_RSONARSTATUS_H

#include <ros/service_traits.h>


#include <ros_webots_epuck_nxt_differential_robot/RsonarStatusRequest.h>
#include <ros_webots_epuck_nxt_differential_robot/RsonarStatusResponse.h>


namespace ros_webots_epuck_nxt_differential_robot
{

struct RsonarStatus
{

typedef RsonarStatusRequest Request;
typedef RsonarStatusResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct RsonarStatus
} // namespace ros_webots_epuck_nxt_differential_robot


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_webots_epuck_nxt_differential_robot::RsonarStatus > {
  static const char* value()
  {
    return "b2cb89f922c5d07784b533cfabb72389";
  }

  static const char* value(const ::ros_webots_epuck_nxt_differential_robot::RsonarStatus&) { return value(); }
};

template<>
struct DataType< ::ros_webots_epuck_nxt_differential_robot::RsonarStatus > {
  static const char* value()
  {
    return "ros_webots_epuck_nxt_differential_robot/RsonarStatus";
  }

  static const char* value(const ::ros_webots_epuck_nxt_differential_robot::RsonarStatus&) { return value(); }
};


// service_traits::MD5Sum< ::ros_webots_epuck_nxt_differential_robot::RsonarStatusRequest> should match 
// service_traits::MD5Sum< ::ros_webots_epuck_nxt_differential_robot::RsonarStatus > 
template<>
struct MD5Sum< ::ros_webots_epuck_nxt_differential_robot::RsonarStatusRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_webots_epuck_nxt_differential_robot::RsonarStatus >::value();
  }
  static const char* value(const ::ros_webots_epuck_nxt_differential_robot::RsonarStatusRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_webots_epuck_nxt_differential_robot::RsonarStatusRequest> should match 
// service_traits::DataType< ::ros_webots_epuck_nxt_differential_robot::RsonarStatus > 
template<>
struct DataType< ::ros_webots_epuck_nxt_differential_robot::RsonarStatusRequest>
{
  static const char* value()
  {
    return DataType< ::ros_webots_epuck_nxt_differential_robot::RsonarStatus >::value();
  }
  static const char* value(const ::ros_webots_epuck_nxt_differential_robot::RsonarStatusRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_webots_epuck_nxt_differential_robot::RsonarStatusResponse> should match 
// service_traits::MD5Sum< ::ros_webots_epuck_nxt_differential_robot::RsonarStatus > 
template<>
struct MD5Sum< ::ros_webots_epuck_nxt_differential_robot::RsonarStatusResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_webots_epuck_nxt_differential_robot::RsonarStatus >::value();
  }
  static const char* value(const ::ros_webots_epuck_nxt_differential_robot::RsonarStatusResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_webots_epuck_nxt_differential_robot::RsonarStatusResponse> should match 
// service_traits::DataType< ::ros_webots_epuck_nxt_differential_robot::RsonarStatus > 
template<>
struct DataType< ::ros_webots_epuck_nxt_differential_robot::RsonarStatusResponse>
{
  static const char* value()
  {
    return DataType< ::ros_webots_epuck_nxt_differential_robot::RsonarStatus >::value();
  }
  static const char* value(const ::ros_webots_epuck_nxt_differential_robot::RsonarStatusResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_WEBOTS_EPUCK_NXT_DIFFERENTIAL_ROBOT_MESSAGE_RSONARSTATUS_H
