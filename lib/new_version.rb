# coding: utf-8
require "new_version/version"
require 'mechanize'

module NewVersion
  class << self
    def get(type)
      self.send(type)
    end

    def git
      agent = Mechanize.new
      page = agent.get('https://git-scm.com/')
      page.search('span.version').text.strip
    end
    
    def ruby
      agent = Mechanize.new
      page = agent.get('https://www.ruby-lang.org/ja/downloads/')
      text = page.search('p.summary').text
      text.scan(/[\d\.]+/)[0]
    end

    def python
      agent = Mechanize.new
      page = agent.get('https://www.python.org/downloads/')
      text = page.search('div.download-os-source p.download-buttons a.button').text
      text.scan(/[\d\.]+/)[0]
    end
  end

end
