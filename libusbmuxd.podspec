Pod::Spec.new do |s|

  s.name = "libusbmuxd"
  s.version = "1.0.0" 
  s.summary = "A client library for applications to handle usbmux protocol connections with iOS devices."
 
  s.homepage = "https://github.com/wtsnz/libusbmuxd" 
  s.license = {
    :type => 'GPL', 
    :text => <<-LICENSE 
 The contents of this package are licensed under the GNU General Public License,
 versions 2 or 3 (see COPYING.GPLv2 and COPYING.GPLv3), except for libuxbmuxd
 which is licensed under the GNU Lesser General Public License, version 2.1 or,
 at your option, any later version (see COPYING.LGPLv2.1). If a more permissive
 license is specified at the top of a source file, it takes precedence over this.
 LICENSE
 }
 
  s.author = 'Will Townsend' 
  s.ios.deployment_target = '9.2'
  s.osx.deployment_target = '10.10'
  s.source = { :git => "https://github.com/wtsnz/libusbmuxd.git", :tag => "v#{s.version}"}
  s.source_files = 'src/*.{h,c,m,cpp}', 'include/*.h', 'common/*.{h,c,m,cpp}'
  s.dependency 'libplist'
  s.public_header_files = 'include/usbmuxd.h'
  s.xcconfig = {"GCC_PREPROCESSOR_DEFINITIONS" => 'HAVE_PLIST HAVE_STPNCPY HAVE_CLOCK_GETTIME PACKAGE_STRING=\"1.2.1\"',  "HEADER_SEARCH_PATHS" => '"${PODS_ROOT}/libplist/include/"'}
end
 
 
