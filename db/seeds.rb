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
job_locations = [
  '北京',
  '上海',
  '广州',
  '深圳',
  '重庆',
  '成都',
  '贵阳',
  '大连',
  '西安',
  '天津',
  '杭州',
]
company_names = [
  '搜狐',
  'IBM',
  '阿里巴巴',
  '华为',
  'HP',
  '腾讯',
  '百度',
  '知乎',
  '用友',
  '去哪儿',
  '中兴',
]

for i in 1..15 do
  job_title = job_info[rand(job_info.length)]
  Job.create!(title: job_title, description: job_title, company_name: company_names[rand(company_names.length)], location: job_locations[rand(job_locations.length)], wage_upper_bound: rand(40..79) * 1000, wage_lower_bound: rand(20..39) * 1000, is_hidden: 'false')
end
for i in 1..15 do
  job_title = job_info[rand(job_info.length)]
  Job.create!(title: job_title, description: job_title, company_name: company_names[rand(company_names.length)], location: job_locations[rand(job_locations.length)], wage_upper_bound: rand(40..79) * 1000, wage_lower_bound: rand(20..39) * 1000, is_hidden: 'true')
end

puts '15 Public jobs created.'
puts '15 Hidden jobs created.'
