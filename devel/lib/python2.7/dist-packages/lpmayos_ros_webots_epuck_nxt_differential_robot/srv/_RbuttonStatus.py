"""autogenerated by genpy from lpmayos_ros_webots_epuck_nxt_differential_robot/RbuttonStatusRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RbuttonStatusRequest(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "lpmayos_ros_webots_epuck_nxt_differential_robot/RbuttonStatusRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RbuttonStatusRequest, self).__init__(*args, **kwds)

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
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
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
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
"""autogenerated by genpy from lpmayos_ros_webots_epuck_nxt_differential_robot/RbuttonStatusResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RbuttonStatusResponse(genpy.Message):
  _md5sum = "3fcbc751b1d12b64a9eafc04beea4662"
  _type = "lpmayos_ros_webots_epuck_nxt_differential_robot/RbuttonStatusResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool left_pressed
bool right_pressed
uint32 sonar
uint32 light


"""
  __slots__ = ['left_pressed','right_pressed','sonar','light']
  _slot_types = ['bool','bool','uint32','uint32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       left_pressed,right_pressed,sonar,light

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RbuttonStatusResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.left_pressed is None:
        self.left_pressed = False
      if self.right_pressed is None:
        self.right_pressed = False
      if self.sonar is None:
        self.sonar = 0
      if self.light is None:
        self.light = 0
    else:
      self.left_pressed = False
      self.right_pressed = False
      self.sonar = 0
      self.light = 0

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
      buff.write(_struct_2B2I.pack(_x.left_pressed, _x.right_pressed, _x.sonar, _x.light))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 10
      (_x.left_pressed, _x.right_pressed, _x.sonar, _x.light,) = _struct_2B2I.unpack(str[start:end])
      self.left_pressed = bool(self.left_pressed)
      self.right_pressed = bool(self.right_pressed)
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
      buff.write(_struct_2B2I.pack(_x.left_pressed, _x.right_pressed, _x.sonar, _x.light))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 10
      (_x.left_pressed, _x.right_pressed, _x.sonar, _x.light,) = _struct_2B2I.unpack(str[start:end])
      self.left_pressed = bool(self.left_pressed)
      self.right_pressed = bool(self.right_pressed)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_2B2I = struct.Struct("<2B2I")
class RbuttonStatus(object):
  _type          = 'lpmayos_ros_webots_epuck_nxt_differential_robot/RbuttonStatus'
  _md5sum = '3fcbc751b1d12b64a9eafc04beea4662'
  _request_class  = RbuttonStatusRequest
  _response_class = RbuttonStatusResponse
