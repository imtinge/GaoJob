create_account = User.create([email: 'imtinge@163.com', password: '123456', password_confirmation: '123456', is_admin: 'true'])
puts 'Admin account is created successfully!'

job_info = [
  'RoR工程师',
  '文案设计',
  'UI设计师',
  'Android开发工程师',
  '产品经理',
  '前端开发工程师',
  '市场营销',
  'php后台研发工程师',
  'python工程师',
  '高级JAVA研发工程师',
  '高级数据挖掘工程师',
  '高级客服经理'
]
for i in 1..10 do
  Job.create!([title: job_info[rand(job_info.length)], description: job_info[rand(job_info.length)], wage_upper_bound: rand(40..79) * 1000, wage_lower_bound: rand(20..39) * 1000, is_hidden: 'false'])
end
for i in 1..10 do
  Job.create!([title: job_info[rand(job_info.length)], description: job_info[rand(job_info.length)], wage_upper_bound: rand(40..79) * 1000, wage_lower_bound: rand(20..39) * 1000, is_hidden: 'true'])
end

puts '10 Public jobs created.'
puts '10 Hidden jobs created.'
