"""autogenerated by genpy from ros_lab2task2a/Rsimulation.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class Rsimulation(genpy.Message):
  _md5sum = "f271c12fe38e96cd7bb1b6a75df6ce5d"
  _type = "ros_lab2task2a/Rsimulation"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """Header Rsimulation
uint32 left_pressed
uint32 right_pressed
uint32 sonar_value
uint32 light_value

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

"""
  __slots__ = ['Rsimulation','left_pressed','right_pressed','sonar_value','light_value']
  _slot_types = ['std_msgs/Header','uint32','uint32','uint32','uint32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       Rsimulation,left_pressed,right_pressed,sonar_value,light_value

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Rsimulation, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.Rsimulation is None:
        self.Rsimulation = std_msgs.msg.Header()
      if self.left_pressed is None:
        self.left_pressed = 0
      if self.right_pressed is None:
        self.right_pressed = 0
      if self.sonar_value is None:
        self.sonar_value = 0
      if self.light_value is None:
        self.light_value = 0
    else:
      self.Rsimulation = std_msgs.msg.Header()
      self.left_pressed = 0
      self.right_pressed = 0
      self.sonar_value = 0
      self.light_value = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.Rsimulation.seq, _x.Rsimulation.stamp.secs, _x.Rsimulation.stamp.nsecs))
      _x = self.Rsimulation.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_4I.pack(_x.left_pressed, _x.right_pressed, _x.sonar_value, _x.light_value))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.Rsimulation is None:
        self.Rsimulation = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.Rsimulation.seq, _x.Rsimulation.stamp.secs, _x.Rsimulation.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Rsimulation.frame_id = str[start:end].decode('utf-8')
      else:
        self.Rsimulation.frame_id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.left_pressed, _x.right_pressed, _x.sonar_value, _x.light_value,) = _struct_4I.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.Rsimulation.seq, _x.Rsimulation.stamp.secs, _x.Rsimulation.stamp.nsecs))
      _x = self.Rsimulation.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_4I.pack(_x.left_pressed, _x.right_pressed, _x.sonar_value, _x.light_value))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.Rsimulation is None:
        self.Rsimulation = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.Rsimulation.seq, _x.Rsimulation.stamp.secs, _x.Rsimulation.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Rsimulation.frame_id = str[start:end].decode('utf-8')
      else:
        self.Rsimulation.frame_id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.left_pressed, _x.right_pressed, _x.sonar_value, _x.light_value,) = _struct_4I.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
_struct_4I = struct.Struct("<4I")
