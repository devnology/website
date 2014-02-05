admin = Admin.find_by_email('admin@devnology.nl')

unless admin
  Admin.create!(name: 'Administrator',
                email: 'admin@devnology.nl',
                password: 'randompassword')
end
