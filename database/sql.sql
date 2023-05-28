-- nghĩa roles
use building_management;

INSERT INTO roles (`id`, `name`)
VALUES ('1', 'ROLE_ADMIN')
, ('2', 'ROLE_EMPLOYEE');

-- nghĩa app user
INSERT INTO app_users (`id`, `deleted`, `is_enabled`, `password`, `username`, `verification_code`)
VALUES ('1', 0, 1, '$2a$12$.Mfx0vhTiWRZL723RZD4.uROZM6QVKpYJ4ZM.JSuc54IJVMz7rJAi', 'admin', null)
, ('2', 0, 1, '$2a$12$.Mfx0vhTiWRZL723RZD4.uROZM6QVKpYJ4ZM.JSuc54IJVMz7rJAi', 'hung', null);

 -- nghĩa app user role
 INSERT INTO app_users_roles (`app_users_id`, `roles_id`) 
 VALUES ('1', '1')
  , ('2', '2');
  
  INSERT INTO `employee` (`employee_id`, `employee_address`, `employee_code`, `employee_date_of_birth`, `employee_delete_flag`, `employee_email`, `employee_gender`, `employee_image`, `employee_name`, `employee_phone`, `employee_start_date`,`employee_position_id`)
 VALUES (1, 'dn', '12455555', '1992-10-10', 0, 'hjj@gmail.com',null, null, 'nghia',null, null,1);
 INSERT INTO `employee` (`employee_id`, `employee_address`, `employee_code`, `employee_date_of_birth`, `employee_delete_flag`, `employee_email`, `employee_gender`, `employee_image`, `employee_name`, `employee_phone`, `employee_start_date`, `employee_position_id`)
 VALUES (2, 'dn', '12455555', '1992-10-10', 0, 'hjj@gmail.com',null, null, 'hung',null, null,1);
-- vy
INSERT INTO customer (`customer_id`, `customer_address`, `customer_code`, `customer_date_of_birth`, `customer_delete_flag`, `customer_email`, `customer_identify_number`, `customer_name`, `customer_phone`, `customer_status`) 
VALUES 
(1, '12 Lê Quý Kỳ, Đà Nẵng', 'KH-0001', '01-01-1994', b'0', 'hoadeptrai@gmail.com', '3434343434', 'Nguyễn Đình Hòa', '0905123456', 'Đang Thuê')
, (2, '12 Nguyễn Phước Nguyên', 'KH-0002', '01-01-1998', b'0', 'nhanvanlam@gmail.com', '2345543332', 'Lê Đình Quốc','0901231231', 'Đã Thuê')
, (3, '141 Lý Tự Trọng', 'KH-0003', '01-01-1963', b'0', 'cuongle@gmail.com', '2017123678', 'Lê Thiện Cường', '0905181346', 'Đang Thuê')
, (4, '12 Lê Văn Quý', 'KH-0021', '01-01-1988', b'0', 'tiennguyen@gmail.com', '4356173849', 'Nguyễn Văn Tiến', '0901231231', 'Đang Thuê')
, (5, '100 Trường Chinh', 'KH-0023', '01-01-1990', b'0', 'dinhcuu@gmail.com', '9876543219', 'Nguyễn Đình Cựu', '0901456231', 'Đang Thuê')
, (6, '20 Bắc Đẩu', 'KH-0041', '01-03-1993', b'0', 'hoanguyen123@gmail.com', '4359683849', 'Lê Thị Hoaaaaaaaaaaaaaaaaaaaa', '0905931231', 'Đã Thuê')
, (7, '12 Nguyễn Văn Thoại', 'KH-0005', '01-01-1992', b'0', 'mienthao92@gmail.com', '1992617384', 'Nguyễn Miên Thảo', '0903231231', 'Đã Thuê')
, (8, '12 Hải Sơn', 'KH--0056', '01-01-1984', b'0', 'vinhwaky@gmail.com', '1236173849', 'Đặng Ngọc Vinh', '0906231231', 'Đang Thuê')
, (9, '50 Trần Hưng Đạo', 'KH-0013', '01-01-1998', b'0', 'daitrang@gmail.com', '1998173849', 'Trần Đài Trang', '0902231256', 'Đang Thuê')
, (10, '10 Lương Thế Vinh', 'KH--0010', '10-01-1992', b'0', 'thuytam@gmail.copm', '1992173849', 'Nguyễn Thúy Tâm', '0905231256', 'Đã Thuê')
, (11, '141B Lý Tự Trọng', 'KH-0131', '13-01-1994', b'0', 'letranthaovy1326@gmail.com', '2016121211', 'Lê Trần Thảo Vy', '0706123123', 'Đang Thuê')
, (12, 'K10 Hải Sơn', 'KH-0041', '10-11-1994', b'0', 'bamlee@gmil.com', '2344765515', 'Lê Thị Ngọc Chiến', '0901324334', 'Đang Thuê')
, (13, '100 Hoàng Diệu', 'KH-0025', '01-01-1991', b'0', 'myle@gmail.com', '1991234456', 'Lê Trần Minh Hiệp', '0905678456', 'Đã Thuê')
, (14, '100 Hoàng Diệu', 'KH-0028', '01-09-1991', b'0', 'datnguyen@gmail.com', '1991566777', 'Nguyễn Đạt', '0706234891', 'Đã Thuê')
, (15, '15 Đống Đa', 'KH-0029', '01-08-1995', b'0', 'tieuphuonguyen@gmail.com', '1995213131', 'Tiêu Phương Uyên', '0905121899', 'Đã Thuê')
, (16, '5 Trần Cao Vân', 'KH-0005', '01-03-1997', b'0', 'trangnguyen@gmail.com', '1997986655', 'Nguyễn Trang', '0901987766', 'Đang Thuê');
-- Lanh position
INSERT INTO employee_position (`employee_position_id`, `employee_position_name`)
VALUES ('1', 'Quản Lý'),
('2', 'Nhân Viên');
-- Lanh employee
INSERT INTO employee (`employee_id`, `employee_address`, `employee_code`, `employee_date_of_birth`, `employee_delete_flag`, `employee_email`, `employee_gender`, `employee_image`, `employee_name`, `employee_phone`, `employee_start_date`, `app_user_id`, `employee_position_id`) 
VALUES 
-- ('1', 'Đà Năng', 'NV-0001', '16-10-1992', b'0', 'hieu@gmail.com', 'Nam', 'abc', 'Nguyễn Văn Hiếu', '0339234567','23-06-2022', '2', '1')
-- ,('2', 'Hà Nội', 'NV-0002', '16-10-1999', b'0', 'hoa@gmail.com', 'Nữ', 'abc', 'Nguyễn Thị Hoa', '033923432','23-06-2022', '2', '1'),
('3', 'Huế', 'NV-0003', '18-11-1999', b'0', 'huu@gmail.com', 'Nam', 'abc', 'Nguyễn Ngô Hữu', '033929992','23-06-2022', '2', '1')
,('4', 'Đà Năng', 'NV-0004', '19-11-1979', b'0', 'tay@gmail.com', 'Nam', 'abc', 'Nguyễn Ngô Anh Tây', '037777992','23-06-2022', '2', '1')
,('5', 'Đà Năng', 'NV-0005', '23-01-1979', b'0', 'duong@gmail.com', 'Nam', 'abc', 'Phùng Hải Dương ', '037778888','23-06-2022', '2', '1')
,('6', 'Huế', 'NV-0006', '23-11-1979', b'0', 'dong@gmail.com', 'Nam', 'abc', 'Nguyễn Hải Đông ', '0309999988','11-06-2022', '2', '1')
,('7', 'Hà Nội', 'NV-0007', '23-07-1999', b'0', 'chien@gmail.com', 'Nam', 'abc', 'Nguyễn Văn Chiến ', '0377777988','18-06-2022', '2', '1')
,('8', 'Đà Năng', 'NV-0008', '23-10-1999', b'0', 'cao@gmail.com', 'Nam', 'abc', 'Nguyễn Văn Cao ', '035555988','18-06-2022', '2', '1')
,('9', 'Huế', 'NV-0009', '11-10-1999', b'0', 'duy@gmail.com', 'Nam', 'abc', 'Nguyễn Văn Duy ', '035343488','18-06-2022', '2', '1')
,('10', 'Hà Nội', 'NV-0010', '22-10-1899', b'0', 'cong@gmail.com', 'Nam', 'abc', 'Nguyễn Văn Công ', '03323488','18-06-2022', '2', '1')
,('11', 'Đà Năng', 'NV-0011', '26-10-1999', b'0', 'du@gmail.com', 'Nam', 'abc', 'Phan Văn Dự ', '03323338','18-06-2022', '2', '1')
,('12', 'Huế', 'NV-0012', '30-10-1999', b'0', 'nghia@gmail.com', 'Nam', 'abc', 'Phan Văn Nghĩa ', '034444338','18-06-2022', '2', '1')
,('13', 'Đà Năng', 'NV-0013', '10-10-1889', b'0', 'mai@gmail.com', 'Nữ', 'abc', 'Phan Thị Mai ', '034466666','18-06-2022', '2', '1')
,('14', 'Huế', 'NV-0014', '11-10-2000', b'0', 'thao@gmail.com', 'Nữ', 'abc', 'Phan Thị Mai Thảo ', '0999996666','18-06-2022', '2', '1')
,('15', 'Đà Năng', 'NV-0020', '18-12-2005', b'0', 'nga@gmail.com', 'Nữ', 'abc', 'Phan Thị Thanh Nga ', '09766665506','18-06-2022', '2', '1');

  -- Of Duy
INSERT INTO floors_status (`floor_status_id`, `floor_status_name`)
VALUES ('1', 'Chưa bàn giao')
, ('2', 'Đang vào ở')
, ('3', 'Đang sửa chữa');

INSERT INTO floors_type (`floor_type_id`, `floor_type_name`)
VALUES ('1', 'Tầng trệt')
, ('2', 'Tầng trên')
, ('3', 'Tầng hầm')
, ('4', 'Tầng lửng')
, ('5', 'Tầng thượng');

INSERT INTO floors (`floor_id`, `floor_code`, `floor_name`, `floor_area`, `floor_delete_flag`, `floor_capacity`, `floor_status_id`, `floor_type_id`)
VALUES ('1', 'MTL001', 'Tầng 1', '100', 0, '10', '1', '1')
, ('2', 'MTL002', 'Tầng 2', '200', 0, '20', '2', '2')
, ('3', 'MTL003', 'Tầng 3', '300', 0, '30', '3', '3')
, ('4', 'MTL004', 'Tầng 4', '400', 0, '40', '1', '4')
, ('5', 'MTL005', 'Tầng 5', '500', 0, '50', '2', '5');

-- phien pascaes_status
INSERT INTO spaces_status (`space_status_id`, `spacer_status_name`) VALUES
(1, 'Chưa vào ở'),
(2, 'Đã vào ở'),
(3, 'Chưa bàn giao'),
(4, 'Đang sửa chữa');
-- phien pascaes_type
INSERT INTO spaces_type (`space_type_id`, `space_type_name`) VALUES
(1, 'Mặt đứng'),
(2, 'Mặt tiền'),
(3, 'Mặt cắt');
-- phien pascaes
INSERT INTO spaces (`space_area`, `space_code`, `space_delete_flag`, `space_image`, `space_manager_fee`, `space_note`, `space_price`, `floor_id`, `space_status_id`, `space_type_id`) VALUES
('50', 'MB-001', 1, 'https://firebasestorage.googleapis.com/v0/b/building-manager-6262e.appspot.com/o/5b0b905d673[…]?alt=media&token=024a8daa-b510-428a-b10b-0e9758b2b290', 1000000, 'Đã cho thuê', 3000000, 1, 1, 1),
('60', 'MB-002', 1, 'https://firebasestorage.googleapis.com/v0/b/building-manager-6262e.appspot.com/o/5b0b905d673[…]?alt=media&token=024a8daa-b510-428a-b10b-0e9758b2b290', 2000000, 'chưa thuê', 4000000, 1, 2, 2),
('70', 'MB-003', 1, 'https://firebasestorage.googleapis.com/v0/b/building-manager-6262e.appspot.com/o/5b0b905d673[…]?alt=media&token=024a8daa-b510-428a-b10b-0e9758b2b290', 3000000, 'Đang sửa', 5000000, 2, 3, 3),
('80', 'MB-004', 1, 'https://firebasestorage.googleapis.com/v0/b/building-manager-6262e.appspot.com/o/5b0b905d673[…]?alt=media&token=024a8daa-b510-428a-b10b-0e9758b2b290', 4000000, 'không có', 6000000, 2, 3, 2),
('90', 'MB-004', 1, 'https://firebasestorage.googleapis.com/v0/b/building-manager-6262e.appspot.com/o/5b0b905d673[…]?alt=media&token=024a8daa-b510-428a-b10b-0e9758b2b290', 5000000, 'không có', 7000000, 3, 3, 3),
('100', 'MB-005', 1, 'https://firebasestorage.googleapis.com/v0/b/building-manager-6262e.appspot.com/o/5b0b905d673[…]?alt=media&token=024a8daa-b510-428a-b10b-0e9758b2b290', 5000000, 'không có', 9000000, 3, 2, 1),
('50', 'MB-006', 1, 'https://firebasestorage.googleapis.com/v0/b/building-manager-6262e.appspot.com/o/5b0b905d673[…]?alt=media&token=024a8daa-b510-428a-b10b-0e9758b2b290', 1000000, 'không có', 5000000, 4, 2, 2),
('80', 'MB-007', 1, 'https://firebasestorage.googleapis.com/v0/b/building-manager-6262e.appspot.com/o/5b0b905d673[…]?alt=media&token=024a8daa-b510-428a-b10b-0e9758b2b290', 1000000, 'không có', 6000000, 4, 2, 1);

-- Dong contract
INSERT INTO contract (`contract_id`, `check_flag`, `contract_code`, `contract_content`, `contract_date_end`, `contract_date_start`, `contract_delete_flag`, `contract_deposit`, `contract_expired`, `contract_image_url`, `contract_tax_code`, `contract_total`, `price`, `customer_id`, `employee_id`, `space_id`) 
VALUES ('1', '0', 'HD-0001', 'cccc', '2022-10-09', '2020-09-09', b'0', '1211', '24', 'ccccc', '1111', '12000', '1000', '1', '1', '1')
, ('2', '0', 'HD-0002', 'cccc', '2022-05-09', '2022-03-09', b'0', '1211', '2', 'ccccc', '1111', '12000', '1000', '2', '2', '2')
, ('3', '0', 'HD-0003', 'cccc', '2022-05-09', '2022-03-09', b'0', '1211', '2', 'ccccc', '1111', '12000', '1000', '3', '3', '3');