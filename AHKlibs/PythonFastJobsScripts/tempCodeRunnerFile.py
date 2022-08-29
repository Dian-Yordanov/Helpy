import configparser
import ctypes.wintypes
from datetime import datetime

CSIDL_PERSONAL = 5
SHGFP_TYPE_CURRENT = 0

buf= ctypes.create_unicode_buffer(ctypes.wintypes.MAX_PATH)
ctypes.windll.shell32.SHGetFolderPathW(None, CSIDL_PERSONAL, None, SHGFP_TYPE_CURRENT, buf)
path = buf.value + "\AHKassociatedFiles\\resources\AutohotkeyIniFile.ini"
try:
    from configparser import ConfigParser
except ImportError:
    from ConfigParser import ConfigParser  # ver. < 3.0
config = ConfigParser()
config.read(path)
string_val = config.get('AutohotkeyConfig', 'DateForTimeManagementSoftware')
print(string_val)
string_valY = string_val[0:4]
string_valM = string_val[4:6]
string_valD = string_val[6:8]
string_valYMD = string_valY + "-" + string_valM + "-" + string_valD
datetime_object = datetime.strptime(string_valYMD, '%Y-%m-%d')
import datetime
datetime_objectString = datetime_object + datetime.timedelta(days=1)
print(datetime_objectString)
string_valY = str(datetime_objectString)[0:4]
string_valM = str(datetime_objectString)[5:7]
string_valD = str(datetime_objectString)[8:10]
string_valYMD = string_valY + string_valM + string_valD
print(string_valYMD)
config.set('AutohotkeyConfig', 'DateForTimeManagementSoftware', string_valYMD)
with open(path, 'w') as configfile:
    config.write(configfile)