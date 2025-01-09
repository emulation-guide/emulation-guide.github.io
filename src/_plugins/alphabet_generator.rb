class AlphabetGenerator < Jekyll::Generator
  priority :normal

  def generate(site)
    entries = ['0-9'] + ('A'..'Z').to_a

    entries.each do |entry|
      dir_path = File.join(site.source, "games", entry.downcase)
      md_files = Dir.glob(File.join(dir_path, "*.md"))
      unless md_files.empty?
        site.pages << AlphabetPage.new(site, site.source, "/games/#{entry.downcase}/", entry)
      end
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
      'parent' => 'Games',
      'layout' => 'default'
    }
    self.content = "# Games: #{entry}"
  end
end
