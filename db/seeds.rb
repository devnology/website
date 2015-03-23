require 'redcarpet'

admin = Admin.find_by_email('admin@devnology.nl')

unless admin
  Admin.create!(name: 'Administrator',
                email: 'admin@devnology.nl',
                password: 'randompassword')
end

renderer = Redcarpet::Render::HTML.new
markdown = Redcarpet::Markdown.new(renderer)

Dir['app/posts/*.md'].each do |fname|
  file = File.open(fname, "r")
  contents = file.read

  created_at = File.basename(fname)[0..9]
  title = contents.lines[2].scan(/"([^"]*)"/)[0][0]
  content = markdown.render(contents.lines[5..-1].join(""))

  Blog.create!(created_at: created_at.to_time,
               updated_at: created_at.to_time,
               title: title,
               content: content)

  file.close
end
