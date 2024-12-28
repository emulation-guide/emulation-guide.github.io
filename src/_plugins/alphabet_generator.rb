class AlphabetGenerator < Jekyll::Generator
  priority :normal

  def generate(site)
    site.pages << AlphabetPage.new(site, site.source, "/games/no/", "#")
    entries = ('A'..'Z').to_a
    entries.each do |entry|
      site.pages << AlphabetPage.new(site, site.source, "/games/#{entry.downcase}/", entry)
    end
  end
end

class AlphabetPage < Jekyll::Page
  def initialize(site, base, dir, entry)
    @site = site
    @base = base
    @dir = dir
    @name = 'index.md'
    self.process(@name)
    self.data = {
      'title' => entry,
      'parent' => 'Games'
    }
    self.content = "# #{entry}"
  end
end
