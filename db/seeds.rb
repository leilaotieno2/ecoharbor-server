
Department.delete_all

departments_data = [
  { department_name: 'Information Technology', department_code: 'IT01', head_of_department: 'Rubi Wimsett', total_assets: 43, asset_total_value: '918.04' },
  { department_name: 'Finance', department_code: 'FI02', head_of_department: 'Hedwig Perrottet', total_assets: 67, asset_total_value: '203.83' },
  { department_name: 'Human Resources', department_code: 'HR03', head_of_department: 'Meghan Scafe', total_assets: 56, asset_total_value: '1777.77' },
  { department_name: 'Operations', department_code: 'OP04', head_of_department: 'Giffard Slad', total_assets: 56, asset_total_value: '1909.07' },
  { department_name: 'Facilities Management', department_code: 'FM05', head_of_department: 'Cecilio Roggerone', total_assets: 19, asset_total_value: '632.10' },
  { department_name: 'Procurement', department_code: 'PR06', head_of_department: 'Isadora Martinie', total_assets: 19, asset_total_value: '1071.52' },
  { department_name: 'Marketing', department_code: 'MA07', head_of_department: 'Dorthy Hacon', total_assets: 23, asset_total_value: '1788.63' },
  { department_name: 'Sales', department_code: 'SA08', head_of_department: 'Edita Middlemist', total_assets: 43, asset_total_value: '1423.18' },
  { department_name: 'Customer Service', department_code: 'CS09', head_of_department: 'Dorothy Vivers', total_assets: 30, asset_total_value: '858.27' },
  { department_name: 'Research and Development', department_code: 'RD10', head_of_department: 'Cristin Shute', total_assets: 61, asset_total_value: '32.85' },
  { department_name: 'Legal', department_code: 'LE11', head_of_department: 'Ashlee Cheine', total_assets: 43, asset_total_value: '1210.00' },
  { department_name: 'Quality Assurance', department_code: 'QA12', head_of_department: 'Nickolaus Hillen', total_assets: 13, asset_total_value: '1481.39' },
  { department_name: 'Repair and Maintenance', department_code: 'RM7', head_of_department: 'Aile Burry', total_assets: 33, asset_total_value: '485.45' }
]

Department.create(departments_data)
puts "Created #{Department.count} departments"

Employee.delete_all

employees_data = [
  { first_name: 'Simonette', last_name: 'Pagin', email: 'qjcun4@ecoharb.com', phone_number: '3917017188', password: 'abc123,', employment_date: '2004-08-29', department_id: 1 },
  { first_name: 'Erv', last_name: 'Cartin', email: 'owjyi3@ecoharb.com', phone_number: '3082975792', password: 'abc123', employment_date: '2016-10-25', department_id: 2 },
  { first_name: 'Germain', last_name: 'Gusticke', email: 'yuzfm1@ecoharb.com', phone_number: '6839896145', password: 'abc123', employment_date: '2005-01-08', department_id: 3},
  { first_name: 'Yevette', last_name: 'Fennelow', email: 'tmstr2@ecoharb.com', phone_number: '5301509488', password: 'abc123', employment_date: '2006-05-20', department_id: 4 },
  { first_name: 'Robbin', last_name: 'Denson', email: 'nnsbw1@ecoharb.com', phone_number: '2585132940', password: 'abc123', employment_date: '2018-09-24', department_id: 5 },
  { first_name: 'Boyce', last_name: 'Kuhne', email: 'vyynd0@ecoharb.com', phone_number: '5812559884', password: 'abc123', employment_date: '1998-10-20', department_id: 6 },
]
# Normal, Finance, Procurement.
Employee.create(employees_data)
puts "Created #{Employee.count} employees"

#

# AssetsDirectory.destroy_all

assets_directory_data = [
  { asset_name: 'Vending Machines', asset_image: 'https://shorturl.at/bfnyH', category_name: 'Kitchen Appliances', category_code: 'RE3', condition: 'Under Maintenance', purchase_value: '$40311.66', current_value: '$293542.87', quantity_in_stock: 1, department_id: 12 },
  { asset_name: 'Fire Doors', asset_image: 'https://shorturl.at/ghjsO', category_name: 'Safety Equipment', category_code: 'OT6', condition: 'Broken', purchase_value: '$25412.49', current_value: '$147207.28', quantity_in_stock: 12, department_id: 9 },
  { asset_name: 'QR code scanner', asset_image: 'https://m.media-amazon.com/images/I/51q7+JIw6DL.jpg', category_name: 'Tools and Equipment', category_code: 'NO1', condition: 'Under Maintenance', purchase_value: '$11968.49', current_value: '$526584.26', quantity_in_stock: 7, department_id: 10 },
  { asset_name: 'Conference Chairs', asset_image: 'https://shorturl.at/bkz89', category_name: 'Furniture and Fixtures', category_code: 'BB5', condition: 'Broken', purchase_value: '$45011.98', current_value: '$434727.79', quantity_in_stock: 7, department_id: 6 },
  { asset_name: 'Vault', asset_image: 'https://shorturl.at/pwAS8', category_name: 'Safety Equipment', category_code: 'FJ5', condition: 'Poor', purchase_value: '$42316.13', current_value: '$9892.53', quantity_in_stock: 6, department_id: 7 },
  { asset_name: 'Elevator Belt', asset_image: 'https://t.ly/cx-x9', category_name: 'Tools and Equipment', category_code: 'TE3', condition: 'Fair', purchase_value: '$33102.15', current_value: '$449450.78', quantity_in_stock: 33, department_id: 8 },
  { asset_name: 'Whiteboard', asset_image: 'https://t.ly/6WQc0', category_name: 'Furniture and Fixtures', category_code: 'DV1', condition: 'New', purchase_value: '$21111.82', current_value: '$234215.29', quantity_in_stock: 1, department_id: 13 },
  { asset_name: 'Document Shelves', asset_image: 'https://t.ly/7sJvK', category_name: 'Office Supplies', category_code: 'YD9', condition: 'Under Maintenance', purchase_value: '$40650.44', current_value: '$74051.62', quantity_in_stock: 3, department_id: 11 },
  { asset_name: 'Ceiling Fans', asset_image: 'https://t.ly/HE4Q2', category_name: 'Electronics', category_code: 'OR8', condition: 'Disposed', purchase_value: '$33277.16', current_value: '$345639.60', quantity_in_stock: 1, department_id: 2 },
  {  asset_name: 'Server Racks', asset_image: 'https://t.ly/cKEay', category_name: 'Computers and Accessories', category_code: 'QV9', condition: 'Good', purchase_value: '$31199.22', current_value: '$333609.09', quantity_in_stock: 12, department_id: 11 },
  {  asset_name: 'Laptop', asset_image: 'https://t.ly/ewElO', category_name: 'Computers and Accessories', category_code: 'KK1', condition: 'Poor', purchase_value: '$22206.14', current_value: '$131110.62', quantity_in_stock: 2, department_id: 11 },
  {  asset_name: 'Shipping Containers', asset_image: 'https://t.ly/hUN4u', category_name: 'Furniture and Fixtures', category_code: 'DB6', condition: 'Good', purchase_value: '$38406.89', current_value: '$212147.69', quantity_in_stock: 6, department_id: 3 },
  {  asset_name: 'Lounge Sofa', asset_image: 'https://t.ly/p5J11', category_name: 'Furniture and Fixtures', category_code: 'WH8', condition: 'Good', purchase_value: '$42387.07', current_value: '$231646.55', quantity_in_stock: 7, department_id: 6 },
  {  asset_name: 'TV Set', asset_image: 'https://t.ly/iMUGx', category_name: 'Electronics', category_code: 'RG9', condition: 'Under Maintenance', purchase_value: '$26863.72', current_value: '$270019.66', quantity_in_stock: 7, department_id: 9 },
  {  asset_name: 'Hammer', asset_image: 'https://t.ly/HX7pR', category_name: 'Construction Equipment', category_code: 'CO4', condition: 'New', purchase_value: '$289.32', current_value: '$329548.68', quantity_in_stock: 7, department_id: 9 },
  {  asset_name: 'Metal Cutter', asset_image: 'https://t.ly/SvP_z', category_name: 'Machinery', category_code: 'CG5', condition: 'New', purchase_value: '$53256.14', current_value: '$126340.28', quantity_in_stock: 1, department_id: 7 },
  {  asset_name: 'Safety Helmets', asset_image: 'https://t.ly/kTtuX', category_name: 'Tools and Equipment', category_code: 'AQ7', condition: 'New', purchase_value: '$2075.51', current_value: '$422167.15', quantity_in_stock: 2, department_id: 6 },
  {  asset_name: 'Executive Desk', asset_image: 'https://t.ly/kdxlv', category_name: 'Furniture and Fixtures', category_code: 'LU4', condition: 'Under Maintenance', purchase_value: '$19817.83', current_value: '$371008.26', quantity_in_stock: 2, department_id: 6 },
  {  asset_name: 'Refrigerator', asset_image: 'https://t.ly/9nDTe', category_name: 'Kitchen Appliances', category_code: 'YZ7', condition: 'Broken', purchase_value: '$32791.92', current_value: '$261186.54', quantity_in_stock: 5, department_id: 13 },
  {  asset_name: 'Outdoor Benches', asset_image: 'https://t.ly/hvQfZ', category_name: 'Furniture and Fixtures', category_code: 'WH9', condition: 'Broken', purchase_value: '$36853.02', current_value: '$228152.71', quantity_in_stock: 7, department_id: 3 },
  {  asset_name: 'Pendant Lights', asset_image: 'https://t.ly/8R2nQ', category_name: 'Furniture and Fixtures', category_code: 'XD6', condition: 'Disposed', purchase_value: '$30171.68', current_value: '$240260.13', quantity_in_stock: 7, department_id: 2 },
  {  asset_name: 'Kitchen Cabinet', asset_image: 'https://t.ly/JlKWJ', category_name: 'Kitchen Appliances', category_code: 'CF9', condition: 'Good', purchase_value: '$1324.77', current_value: '$102301.96', quantity_in_stock: 12, department_id: 13 },
  {  asset_name: 'Office Decorations', asset_image: 'https://t.ly/VoWc7', category_name: 'Furniture and Fixtures', category_code: 'YK5', condition: 'Poor', purchase_value: '$1756.25', current_value: '$18510.82', quantity_in_stock: 45, department_id: 13 },
  {  asset_name: 'Microscope', asset_image: 'https://t.ly/eDJxD', category_name: 'Laboratory Equipment', category_code: 'GN1', condition: 'Good', purchase_value: '$42660.48', current_value: '$104924.12', quantity_in_stock: 45, department_id: 3 },
  {  asset_name: 'Projector', asset_image: 'https://t.ly/Xya30', category_name: 'Electronics', category_code: 'YX2', condition: 'New', purchase_value: '$52404.30', current_value: '$496852.18', quantity_in_stock: 33, department_id: 11 },
  {  asset_name: 'Bookshelves', asset_image: 'https://t.ly/2qIeo', category_name: 'Furniture and Fixtures', category_code: 'KK0', condition: 'Under Maintenance', purchase_value: '$33796.01', current_value: '$189286.11', quantity_in_stock: 33, department_id: 7 },
  {  asset_name: 'Stethoscope', asset_image: 'https://t.ly/vZ9gy', category_name: 'Medical Equipment', category_code: 'PX3', condition: 'Good', purchase_value: '$42490.78', current_value: '$381492.62', quantity_in_stock: 7, department_id: 6 },
  {  asset_name: 'Access Control System', asset_image: 'https://t.ly/DDGsL', category_name: 'Electronics', category_code: 'YZ5', condition: 'Broken', purchase_value: '$30437.17', current_value: '$318892.98', quantity_in_stock: 12, department_id: 10 },
  {  asset_name: 'Printer', asset_image: 'https://t.ly/4o3iO', category_name: 'Electronics', category_code: 'BZ3', condition: 'Broken', purchase_value: '$50019.11', current_value: '$307616.58', quantity_in_stock: 33, department_id: 9 },
  {  asset_name: 'Security Cameras', asset_image: 'https://t.ly/8FzZR', category_name: 'Audio-Visual Equipment', category_code: 'UC1', condition: 'Under Maintenance', purchase_value: '$37381.00', current_value: '$405105.73', quantity_in_stock: 33, department_id: 2 },
  {  asset_name: 'Training Room Equipment', asset_image: 'https://t.ly/2B91G', category_name: 'Tools and Equipment', category_code: 'WH3', condition: 'New', purchase_value: '$7585.76', current_value: '$539516.88', quantity_in_stock: 12, department_id: 7 },
  {  asset_name: 'Piano', asset_image: 'https://t.ly/mKieI', category_name: 'Musical Instruments', category_code: 'HL6', condition: 'New', purchase_value: '$3276.78', current_value: '$348946.91', quantity_in_stock: 13, department_id: 4 },
  {  asset_name: 'Staff Bus', asset_image: 'https://t.ly/Wv5yX', category_name: 'Vehicles', category_code: 'UV6', condition: 'Under Maintenance', purchase_value: '$55377.59', current_value: '$130226.41', quantity_in_stock: 2, department_id: 13 },
  {  asset_name: 'Company Van', asset_image: 'https://t.ly/DooJb', category_name: 'Vehicles', category_code: 'WJ4', condition: 'Good', purchase_value: '$16612.07', current_value: '$433839.80', quantity_in_stock: 17, department_id: 11 }
]

AssetsDirectory.create(assets_directory_data)
puts "#{AssetsDirectory.count} assets directories created"
# # seeds.rb

approvals_data = [
  { approval_id: 1, request_id: 1, approval_status: 'rejected', approval_date: '4/9/2011', comments: 'vel ipsum praesent blandit lacinia erat vestibulum' },
  { approval_id: 2, request_id: 2, approval_status: 'rejected', approval_date: '2/7/2013', comments: 'mi pede malesuada in imperdiet et' },
  { approval_id: 3, request_id: 3, approval_status: 'approved', approval_date: '5/24/1981', comments: 'consequat in consequat ut nulla sed accumsan felis ut' },
  { approval_id: 4, request_id: 4, approval_status: 'approved', approval_date: '8/13/2018', comments: 'id justo sit amet sapien dignissim' },
  { approval_id: 5, request_id: 5, approval_status: 'approved', approval_date: '8/1/2012', comments: 'sagittis nam congue risus semper porta volutpat quam pede lobortis' },
  { approval_id: 6, request_id: 6, approval_status: 'rejected', approval_date: '6/7/2023', comments: 'nulla dapibus dolor vel est donec odio justo sollicitudin' },
  { approval_id: 7, request_id: 7, approval_status: 'pending', approval_date: '8/26/2012', comments: 'condimentum neque sapien placerat ante nulla justo aliquam quis' },
  { approval_id: 8, request_id: 8, approval_status: 'rejected', approval_date: '3/4/2003', comments: 'maecenas pulvinar lobortis est phasellus sit amet erat nulla' },
  { approval_id: 9, request_id: 9, approval_status: 'pending', approval_date: '1/24/2015', comments: 'suscipit ligula in lacus curabitur at ipsum ac tellus' },
  { approval_id: 10, request_id: 10, approval_status: 'rejected', approval_date: '8/23/1983', comments: 'vel enim sit amet nunc viverra' },
  { approval_id: 11, request_id: 11, approval_status: 'rejected', approval_date: '12/13/2005', comments: 'adipiscing elit proin risus praesent lectus vestibulum quam' },
  { approval_id: 12, request_id: 12, approval_status: 'rejected', approval_date: '5/4/2010', comments: 'est phasellus sit amet erat nulla tempus' },
  { approval_id: 13, request_id: 13, approval_status: 'rejected', approval_date: '9/30/2020', comments: 'non mi integer ac neque duis bibendum' },
  { approval_id: 14, request_id: 14, approval_status: 'pending', approval_date: '12/20/2004', comments: 'dictumst etiam faucibus cursus urna' },
  { approval_id: 15, request_id: 15, approval_status: 'pending', approval_date: '6/19/1984', comments: 'blandit ultrices enim lorem ipsum dolor sit' },
  { approval_id: 16, request_id: 16, approval_status: 'pending', approval_date: '10/16/2012', comments: 'fusce lacus purus aliquet at feugiat non' },
  { approval_id: 17, request_id: 17, approval_status: 'rejected', approval_date: '9/9/1986', comments: 'hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc' },
  { approval_id: 18, request_id: 18, approval_status: 'approved', approval_date: '8/7/2006', comments: 'erat volutpat in congue etiam justo etiam pretium' },
  { approval_id: 19, request_id: 19, approval_status: 'approved', approval_date: '5/14/2021', comments: 'aliquam convallis nunc proin at turpis a pede' },
  { approval_id: 20, request_id: 20, approval_status: 'rejected', approval_date: '4/16/2021', comments: 'nec molestie sed justo pellentesque viverra pede' },
  { approval_id: 21, request_id: 21, approval_status: 'pending', approval_date: '12/6/2000', comments: 'dictumst aliquam augue quam sollicitudin' },
  { approval_id: 22, request_id: 22, approval_status: 'pending', approval_date: '4/1/2013', comments: 'arcu adipiscing molestie hendrerit at vulputate vitae' },
  { approval_id: 23, request_id: 23, approval_status: 'rejected', approval_date: '11/16/1980', comments: 'non interdum in ante vestibulum ante ipsum primis in faucibus' },
  { approval_id: 24, request_id: 24, approval_status: 'rejected', approval_date: '8/3/1998', comments: 'quam nec dui luctus rutrum nulla tellus in sagittis dui' },
  { approval_id: 25, request_id: 25, approval_status: 'pending', approval_date: '6/10/1983', comments: 'primis in faucibus orci luctus et' },
  { approval_id: 26, request_id: 26, approval_status: 'pending', approval_date: '4/25/2010', comments: 'etiam justo etiam pretium iaculis justo in hac habitasse platea' },
  { approval_id: 27, request_id: 27, approval_status: 'approved', approval_date: '5/2/2023', comments: 'quis lectus suspendisse potenti in eleifend quam a' },
  { approval_id: 28, request_id: 28, approval_status: 'pending', approval_date: '3/1/2019', comments: 'sed tristique in tempus sit amet sem fusce consequat' },
  { approval_id: 29, request_id: 29, approval_status: 'rejected', approval_date: '7/14/2009', comments: 'mi in porttitor pede justo eu' },
  { approval_id: 30, request_id: 30, approval_status: 'rejected', approval_date: '7/10/2015', comments: 'luctus et ultrices posuere cubilia curae' },
  { approval_id: 31, request_id: 31, approval_status: 'rejected', approval_date: '12/13/2002', comments: 'tellus nisi eu orci mauris lacinia sapien' },
  { approval_id: 32, request_id: 32, approval_status: 'approved', approval_date: '9/1/1988', comments: 'maecenas leo odio condimentum id luctus nec molestie' },
  { approval_id: 33, request_id: 33, approval_status: 'pending', approval_date: '8/9/2000', comments: 'integer a nibh in quis justo maecenas rhoncus aliquam' },
  { approval_id: 34, request_id: 34, approval_status: 'pending', approval_date: '5/3/1994', comments: 'id lobortis convallis tortor risus dapibus augue vel accumsan tellus' },
  { approval_id: 35, request_id: 35, approval_status: 'rejected', approval_date: '1/14/1998', comments: 'sed sagittis nam congue risus semper porta' },
  { approval_id: 36, request_id: 36, approval_status: 'approved', approval_date: '2/5/1989', comments: 'consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices' },
  { approval_id: 37, request_id: 37, approval_status: 'rejected', approval_date: '4/27/2021', comments: 'dapibus augue vel accumsan tellus nisi eu' },
  { approval_id: 38, request_id: 38, approval_status: 'approved', approval_date: '12/9/2002', comments: 'quisque id justo sit amet sapien dignissim vestibulum vestibulum' },
  { approval_id: 39, request_id: 39, approval_status: 'pending', approval_date: '9/2/1992', comments: 'nullam molestie nibh in lectus pellentesque at nulla' },
  { approval_id: 40, request_id: 40, approval_status: 'pending', approval_date: '10/24/2008', comments: 'ipsum aliquam non mauris morbi' },

]

Approval.create(approvals_data)
# # seeds.rb

allocations_data = [
  { allocation_id: 1, asset_id: 9, employee_id: 9, quantity_allocated: 2, allocation_date: Date.new(2017, 2, 2), return_date: Date.new(2024, 2, 18) },
  { allocation_id: 2, asset_id: 1, employee_id: 13, quantity_allocated: 2, allocation_date: Date.new(2013, 12, 5), return_date: Date.new(2024, 3, 6) },
  { allocation_id: 3, asset_id: 43, employee_id: 8, quantity_allocated: 2, allocation_date: Date.new(2023, 1, 19), return_date: Date.new(2023, 12, 23) },
  { allocation_id: 4, asset_id: 9, employee_id: 19, quantity_allocated: 1, allocation_date: Date.new(2006, 5, 9), return_date: nil },
  { allocation_id: 5, asset_id: 34, employee_id: 9, quantity_allocated: 1, allocation_date: Date.new(1996, 10, 5), return_date: Date.new(2024, 8, 15) },
  { allocation_id: 6, asset_id: 32, employee_id: 19, quantity_allocated: 1, allocation_date: Date.new(2011, 9, 28), return_date: Date.new(2024, 5, 3) },
  { allocation_id: 7, asset_id: 45, employee_id: 5, quantity_allocated: 1, allocation_date: Date.new(1991, 12, 15), return_date: Date.new(2024, 4, 1) },
  { allocation_id: 8, asset_id: 32, employee_id: 1, quantity_allocated: 2, allocation_date: Date.new(2005, 1, 9), return_date: nil },
  { allocation_id: 9, asset_id: 11, employee_id: 2, quantity_allocated: 1, allocation_date: Date.new(2017, 8, 30), return_date: nil },
  { allocation_id: 10, asset_id: 8, employee_id: 19, quantity_allocated: 1, allocation_date: Date.new(1995, 6, 17), return_date: Date.new(2024, 5, 20) },
  { allocation_id: 11, asset_id: 56, employee_id: 9, quantity_allocated: 3, allocation_date: Date.new(2023, 2, 19), return_date: Date.new(2024, 9, 1) },
  { allocation_id: 12, asset_id: 11, employee_id: 13, quantity_allocated: 1, allocation_date: Date.new(2015, 4, 4), return_date: nil },
  { allocation_id: 13, asset_id: 43, employee_id: 17, quantity_allocated: 3, allocation_date: Date.new(1993, 5, 13), return_date: Date.new(2024, 2, 16) },
  { allocation_id: 14, asset_id: 34, employee_id: 5, quantity_allocated: 1, allocation_date: Date.new(2012, 8, 3), return_date: Date.new(2024, 5, 22) },
  { allocation_id: 15, asset_id: 4, employee_id: 19, quantity_allocated: 2, allocation_date: Date.new(1992, 2, 23), return_date: nil },
  { allocation_id: 16, asset_id: 21, employee_id: 8, quantity_allocated: 3, allocation_date: Date.new(2022, 1, 6), return_date: nil },
  { allocation_id: 17, asset_id: 13, employee_id: 6, quantity_allocated: 3, allocation_date: Date.new(2004, 7, 23), return_date: Date.new(2024, 6, 16) },
  { allocation_id: 18, asset_id: 4, employee_id: 6, quantity_allocated: 3, allocation_date: Date.new(2010, 3, 31), return_date: nil },
  { allocation_id: 19, asset_id: 3, employee_id: 1, quantity_allocated: 2, allocation_date: Date.new(1992, 10, 17), return_date: Date.new(2024, 5, 25) },
  { allocation_id: 20, asset_id: 21, employee_id: 5, quantity_allocated: 2, allocation_date: Date.new(2020, 3, 15), return_date: nil },
  { allocation_id: 21, asset_id: 7, employee_id: 6, quantity_allocated: 2, allocation_date: Date.new(1994, 9, 5), return_date: Date.new(2024, 7, 26) },
  { allocation_id: 22, asset_id: 1, employee_id: 19, quantity_allocated: 3, allocation_date: Date.new(2019, 7, 13), return_date: Date.new(2024, 2, 11) },
  { allocation_id: 23, asset_id: 7, employee_id: 8, quantity_allocated: 3, allocation_date: Date.new(2007, 12, 13), return_date: Date.new(2024, 8, 18) },
  { allocation_id: 24, asset_id: 8, employee_id: 4, quantity_allocated: 1, allocation_date: Date.new(1994, 3, 6), return_date: nil },
  { allocation_id: 25, asset_id: 13, employee_id: 13, quantity_allocated: 3, allocation_date: Date.new(1993, 12, 6), return_date: Date.new(2024, 9, 5) },
  { allocation_id: 26, asset_id: 5, employee_id: 3, quantity_allocated: 3, allocation_date: Date.new(1991, 6, 29), return_date: Date.new(2024, 7, 5) },
  { allocation_id: 27, asset_id: 45, employee_id: 2, quantity_allocated: 1, allocation_date: Date.new(2016, 10, 12), return_date: nil },
  { allocation_id: 28, asset_id: 13, employee_id: 17, quantity_allocated: 2, allocation_date: Date.new(2015, 1, 4), return_date: nil },
  { allocation_id: 29, asset_id: 43, employee_id: 6, quantity_allocated: 1, allocation_date: Date.new(2012, 11, 8), return_date: Date.new(2023, 12, 31) },
  { allocation_id: 30, asset_id: 34, employee_id: 1, quantity_allocated: 2, allocation_date: Date.new(2002, 11, 2), return_date: Date.new(2024, 1, 29) }
]

Allocation.create(allocations_data)

# # seeds.rb

repairs_data = [
  { repair_id: 1, asset_id: 29, quantity: 1, checkin_date: Date.new(2023, 10, 2), checkout_date: Date.new(2023, 10, 16), department_name: 'Legal' },
  { repair_id: 2, asset_id: 25, quantity: 1, checkin_date: Date.new(2023, 10, 2), checkout_date: Date.new(2023, 11, 1), department_name: 'Information Technology' },
  { repair_id: 3, asset_id: 34, quantity: 1, checkin_date: Date.new(2023, 10, 1), checkout_date: nil, department_name: 'Customer Service' },
  { repair_id: 4, asset_id: 3, quantity: 1, checkin_date: Date.new(2023, 10, 2), checkout_date: Date.new(2023, 10, 8), department_name: 'Repair and Maintenance' },
  { repair_id: 5, asset_id: 25, quantity: 1, checkin_date: Date.new(2023, 10, 1), checkout_date: Date.new(2023, 10, 6), department_name: 'Information Technology' },
  { repair_id: 6, asset_id: 11, quantity: 3, checkin_date: Date.new(2023, 10, 2), checkout_date: Date.new(2023, 10, 22), department_name: 'Operations' },
  { repair_id: 7, asset_id: 5, quantity: 2, checkin_date: Date.new(2023, 10, 1), checkout_date: Date.new(2023, 10, 25), department_name: 'Legal' },
  { repair_id: 8, asset_id: 11, quantity: 1, checkin_date: Date.new(2023, 10, 1), checkout_date: Date.new(2023, 10, 12), department_name: 'Finance' },
  { repair_id: 9, asset_id: 7, quantity: 2, checkin_date: Date.new(2023, 10, 2), checkout_date: nil, department_name: 'Facilities Management' },
  { repair_id: 10, asset_id: 9, quantity: 1, checkin_date: Date.new(2023, 10, 2), checkout_date: Date.new(2023, 10, 8), department_name: 'Operations' },
  { repair_id: 11, asset_id: 78, quantity: 3, checkin_date: Date.new(2023, 10, 2), checkout_date: Date.new(2023, 10, 22), department_name: 'Quality Assurance' },
  { repair_id: 12, asset_id: 56, quantity: 1, checkin_date: Date.new(2023, 10, 1), checkout_date: Date.new(2023, 10, 7), department_name: 'Facilities Management' },
  { repair_id: 13, asset_id: 32, quantity: 3, checkin_date: Date.new(2023, 10, 2), checkout_date: Date.new(2023, 10, 29), department_name: 'Repair and Maintenance' },
  { repair_id: 14, asset_id: 25, quantity: 1, checkin_date: Date.new(2023, 10, 2), checkout_date: Date.new(2023, 10, 24), department_name: 'Legal' },
  { repair_id: 15, asset_id: 4, quantity: 1, checkin_date: Date.new(2023, 10, 2), checkout_date: Date.new(2023, 10, 8), department_name: 'Customer Service' },
  { repair_id: 16, asset_id: 9, quantity: 3, checkin_date: Date.new(2023, 10, 2), checkout_date: Date.new(2023, 10, 10), department_name: 'Operations' },
  { repair_id: 17, asset_id: 29, quantity: 3, checkin_date: Date.new(2023, 10, 1), checkout_date: Date.new(2023, 10, 31), department_name: 'Quality Assurance' },
  { repair_id: 18, asset_id: 7, quantity: 1, checkin_date: Date.new(2023, 10, 2), checkout_date: Date.new(2023, 11, 2), department_name: 'Human Resources' },
  { repair_id: 19, asset_id: 19, quantity: 1, checkin_date: Date.new(2023, 10, 2), checkout_date: Date.new(2023, 10, 10), department_name: 'Sales' },
  { repair_id: 20, asset_id: 39, quantity: 1, checkin_date: Date.new(2023, 10, 1), checkout_date: Date.new(2023, 10, 31), department_name: 'Information Technology' }
]

Repair.create(repairs_data)



requests_data = [
  { request_id: 1, asset_id: 1, urgency: 'Low', quantity: 1, reason: 'odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit', employee_id: 10 },
  { request_id: 2, asset_id: 2, urgency: 'Low', quantity: 2, reason: 'sed sagittis nam congue risus semper porta volutpat quam', employee_id: 11 },
  { request_id: 3, asset_id: 3, urgency: 'Low', quantity: 1, reason: 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', employee_id: 8 },
  { request_id: 4, asset_id: 4, urgency: 'High', quantity: 2, reason: 'sollicitudin mi sit amet lobortis sapien sapien non mi', employee_id: 6 },
  { request_id: 5, asset_id: 5, urgency: 'Low', quantity: 1, reason: 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere', employee_id: 12 },
  { request_id: 6, asset_id: 6, urgency: 'Critical', quantity: 1, reason: 'praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget', employee_id: 8 },
  { request_id: 7, asset_id: 7, urgency: 'High', quantity: 1, reason: 'turpis integer aliquet massa id lobortis convallis', employee_id: 3 },
  { request_id: 8, asset_id: 8, urgency: 'Low', quantity: 1, reason: 'ultrices vel augue vestibulum ante ipsum primis', employee_id: 7 },
  { request_id: 9, asset_id: 9, urgency: 'Medium', quantity: 1, reason: 'convallis duis consequat dui nec nisi volutpat eleifend donec', employee_id: 3 },
  { request_id: 10, asset_id: 10, urgency: 'Critical', quantity: 3, reason: 'nunc proin at turpis a pede posuere nonummy integer non', employee_id: 11 },
  { request_id: 11, asset_id: 11, urgency: 'Critical', quantity: 1, reason: 'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna', employee_id: 6 },
  { request_id: 12, asset_id: 12, urgency: 'High', quantity: 3, reason: 'quisque porta volutpat erat quisque erat eros viverra eget congue eget', employee_id: 6 },
  { request_id: 13, asset_id: 13, urgency: 'High', quantity: 2, reason: 'nulla eget eros elementum pellentesque quisque porta volutpat erat quisque', employee_id: 4 },
  { request_id: 14, asset_id: 14, urgency: 'High', quantity: 2, reason: 'gravida nisi at nibh in hac habitasse platea dictumst aliquam', employee_id: 4 },
  { request_id: 15, asset_id: 15, urgency: 'Critical', quantity: 1, reason: 'semper sapien a libero nam dui proin leo odio', employee_id: 10 },
  { request_id: 16, asset_id: 16, urgency: 'Critical', quantity: 1, reason: 'aliquet at feugiat non pretium', employee_id: 11 },
  { request_id: 17, asset_id: 17, urgency: 'Low', quantity: 3, reason: 'ligula pellentesque ultrices phasellus id sapien in', employee_id: 10 },
  { request_id: 18, asset_id: 18, urgency: 'Low', quantity: 1, reason: 'tristique in tempus sit amet sem fusce consequat', employee_id: 7 },
  { request_id: 19, asset_id: 19, urgency: 'Medium', quantity: 2, reason: 'penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum', employee_id: 11 },
  { request_id: 20, asset_id: 20, urgency: 'High', quantity: 1, reason: 'justo eu massa donec dapibus duis at velit eu', employee_id: 13 },
  { request_id: 21, asset_id: 21, urgency: 'Low', quantity: 3, reason: 'quis turpis eget elit sodales scelerisque mauris sit amet', employee_id: 15 },
  { request_id: 22, asset_id: 22, urgency: 'High', quantity: 1, reason: 'sit amet consectetuer adipiscing elit proin interdum mauris', employee_id: 17 },
  { request_id: 23, asset_id: 23, urgency: 'Critical', quantity: 2, reason: 'at velit eu est congue elementum in hac habitasse platea dictumst morbi', employee_id: 1 },
  { request_id: 24, asset_id: 24, urgency: 'Critical', quantity: 2, reason: 'quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue', employee_id: 5 },
  { request_id: 25, asset_id: 25, urgency: 'Low', quantity: 1, reason: 'ante nulla justo aliquam quis turpis eget elit', employee_id: 4 },
  { request_id: 26, asset_id: 26, urgency: 'Critical', quantity: 1, reason: 'nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit', employee_id: 11 },
  { request_id: 27, asset_id: 27, urgency: 'Critical', quantity: 1, reason: 'massa id lobortis convallis tortor', employee_id: 10 },
  { request_id: 28, asset_id: 28, urgency: 'Critical', quantity: 1, reason: 'mauris non ligula pellentesque ultrices phasellus id sapien', employee_id: 4 },
  { request_id: 29, asset_id: 29, urgency: 'Low', quantity: 1, reason: 'parturient montes nascetur ridiculus mus etiam vel augue vestibulum', employee_id: 3 },
  { request_id: 30, asset_id: 30, urgency: 'High', quantity: 1, reason: 'nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue', employee_id: 2 }]

Request.create(requests_data)



 puts "good"
