require "appium_lib"

def caps
{ caps: { deviceName: "emulador-5554",
          platformName: "Android",
          app: (File.join(File.dirname(__FILE__),"pontofacil.apk")) 
}
}

end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
