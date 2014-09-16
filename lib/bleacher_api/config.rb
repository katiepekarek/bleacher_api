class BleacherApi
  module Config
    class <<self
      
      def url(url=nil, ssl=false)
        @url = url unless url.nil?
        protocol = ssl ? 'https' : 'http'
        @url || "#{protocol}://bleacherreport.com"
      end
      
      def token(token=nil)
        @token = token unless token.nil?
        @token
      end
    end
  end
end