require 'net/http'

urls = [
    'https://www.xiongyuchi.top/', 
    'https://www.xiongyuchi.top/2020/05/30/javascript-3-bian-liang-zuo-yong-yu-he-nei-cun-wen-ti/',
    'https://www.xiongyuchi.top/2020/05/23/javascript-2-ji-ben-yu-fa-gai-nian/',
    'https://www.xiongyuchi.top/2020/05/23/javascript-1-zai-html-zhong-shi-yong-javascript/',
    'https://www.xiongyuchi.top/2020/05/22/rails-migrate-guan-yu-mysql-lock-de-yi-dian-wen-ti/',
    'https://www.xiongyuchi.top/2020/05/22/rails-shi-yong-puma-dai-zheng-shu-qi-dong/',
    'https://www.xiongyuchi.top/2020/05/22/rubymine-zhi-xing-bin-mu-lu-xia-zhi-ling-wu-quan-xian-de-jie-jue-fang-an/',
    'https://www.xiongyuchi.top/2020/05/22/rails-test-deng-ming-ling-qia-si-chang-yong-de-jie-jue-fang-an/',
    'https://www.xiongyuchi.top/2020/05/22/rails-he-http422-na-dian-shi-er/',
    'https://www.xiongyuchi.top/2020/05/22/linux-xia-an-zhuang-ruby/',
]

uri = URI.parse('http://data.zz.baidu.com/urls?site=https://www.xiongyuchi.top&token=DvZkCgrHlG96xLwD')

req = Net::HTTP::Post.new(uri.request_uri)

req.body = urls.join("\n")

req.content_type = 'text/plain'

res = Net::HTTP.start(uri.hostname, uri.port) { |http| http.request(req) }

puts res.body