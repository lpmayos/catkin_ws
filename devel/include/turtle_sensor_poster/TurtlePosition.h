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
 * Auto-generated by gensrv_cpp from file /home/upf/code/catkin_ws/src/turtle_sensor_poster/srv/TurtlePosition.srv
 *
 */


#ifndef TURTLE_SENSOR_POSTER_MESSAGE_TURTLEPOSITION_H
#define TURTLE_SENSOR_POSTER_MESSAGE_TURTLEPOSITION_H

#include <ros/service_traits.h>


#include <turtle_sensor_poster/TurtlePositionRequest.h>
#include <turtle_sensor_poster/TurtlePositionResponse.h>


namespace turtle_sensor_poster
{

struct TurtlePosition
{

typedef TurtlePositionRequest Request;
typedef TurtlePositionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct TurtlePosition
} // namespace turtle_sensor_poster


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::turtle_sensor_poster::TurtlePosition > {
  static const char* value()
  {
    return "2b71e7da7070ce1a7abc2fb513bda0ec";
  }

  static const char* value(const ::turtle_sensor_poster::TurtlePosition&) { return value(); }
};

template<>
struct DataType< ::turtle_sensor_poster::TurtlePosition > {
  static const char* value()
  {
    return "turtle_sensor_poster/TurtlePosition";
  }

  static const char* value(const ::turtle_sensor_poster::TurtlePosition&) { return value(); }
};


// service_traits::MD5Sum< ::turtle_sensor_poster::TurtlePositionRequest> should match 
// service_traits::MD5Sum< ::turtle_sensor_poster::TurtlePosition > 
template<>
struct MD5Sum< ::turtle_sensor_poster::TurtlePositionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::turtle_sensor_poster::TurtlePosition >::value();
  }
  static const char* value(const ::turtle_sensor_poster::TurtlePositionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::turtle_sensor_poster::TurtlePositionRequest> should match 
// service_traits::DataType< ::turtle_sensor_poster::TurtlePosition > 
template<>
struct DataType< ::turtle_sensor_poster::TurtlePositionRequest>
{
  static const char* value()
  {
    return DataType< ::turtle_sensor_poster::TurtlePosition >::value();
  }
  static const char* value(const ::turtle_sensor_poster::TurtlePositionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::turtle_sensor_poster::TurtlePositionResponse> should match 
// service_traits::MD5Sum< ::turtle_sensor_poster::TurtlePosition > 
template<>
struct MD5Sum< ::turtle_sensor_poster::TurtlePositionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::turtle_sensor_poster::TurtlePosition >::value();
  }
  static const char* value(const ::turtle_sensor_poster::TurtlePositionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::turtle_sensor_poster::TurtlePositionResponse> should match 
// service_traits::DataType< ::turtle_sensor_poster::TurtlePosition > 
template<>
struct DataType< ::turtle_sensor_poster::TurtlePositionResponse>
{
  static const char* value()
  {
    return DataType< ::turtle_sensor_poster::TurtlePosition >::value();
  }
  static const char* value(const ::turtle_sensor_poster::TurtlePositionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TURTLE_SENSOR_POSTER_MESSAGE_TURTLEPOSITION_H