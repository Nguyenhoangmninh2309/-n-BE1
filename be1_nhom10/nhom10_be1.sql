-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 13, 2022 lúc 03:48 AM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhom8_be1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_id` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'SamSung'),
(2, 'Oppo'),
(3, 'Apple'),
(4, 'Acer'),
(5, 'Lenovo'),
(6, 'Dell'),
(7, 'Sony'),
(8, 'Ezviz'),
(9, 'Tapo'),
(10, 'MSI');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `manu_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `feature` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `selling` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `image`, `description`, `feature`, `created_at`, `selling`) VALUES
(1, 'Điện thoại SamSung', 1, 1, 20990000, 'samsungp1.jpg', '                                                Có lẽ điện thoại gập đã không còn là cái tên quá xa lạ bởi nhiều ông lớn trong ngành sản xuất thiết bị di động đã cho ra mắt khá nhiều sản phẩm có thiết kế tương tự, gần đây nhất thì có sự góp mặt của chiếc flagship đến từ nhà Samsung mang tên Galaxy Z Flip4. Ngay từ những giây phút đầu tiên sử dụng chiếc Galaxy Z Flip4 mình đã cảm nhận được sự khác biệt của nó so với thế hệ trước, máy bây giờ đã vuông vắn hơn nhờ tạo hình vát phẳng ở hai mặt và các cạnh.                                                 ', 1, '2021-02-24 04:58:13', 1),
(2, 'Điện thoại Samsung Galaxy S22+ 5G 256GB', 1, 1, 22490000, 'samsungp2.jpg', 'Điểm ấn tượng đầu tiên trên Galaxy S22+ 5G đó chính là phần cụm camera đã được hãng cải tiến vô cùng xịn sò. Trong đó, camera chính 50 MP với cảm biến điểm ảnh lớn vì thế mà nó có thể thu được nhiều ánh sáng, đồng nghĩa những bức ảnh chụp đêm ở trên chiếc máy sẽ được sáng rõ và chất lượng hơn.Điện thoại camera góc siêu rộng 12 MP giúp mở rộng trường nhìn dễ dàng lưu lại những khoảnh khắc thiên nhiên hùng vĩ, những bức ảnh chụp nhóm. Camera tele 10 MP có khả năng thu phóng quang học 3x mọi chi tiết ở xa đều có thu lại với chất lượng tốt.\r\n\r\n', 1, '2022-10-08 05:24:18', 1),
(3, 'Điện thoại Samsung Galaxy S22+ 5G 128GB', 1, 1, 21990000, 'samsungp2.jpg', 'Galaxy S22+ 5G thiết kế bền bỉ với khung viền từ hợp kim Armor Aluminum cứng cáp, trang bị kính cường lực Gorilla Glass Victus+ giúp hạn chế trầy xước cho bạn thoải mái sử dụng thiết bị.Phần cạnh viền vẫn được bo cong dù không quá nhiều, nhưng vẫn cho trải nghiệm cầm khá tốt, trọng lượng nhẹ chỉ 195 g giúp bạn thoải mái mang đi bất cứ đâu.Máy sử dụng màn hình nốt ruồi với kích thước 6.6 inch, độ phân giải Full HD+ cùng thiết kế tràn viền giúp mở rộng tối đa không gian hiển thị. Từ đó người dùng có thể thoải mái tận hưởng những chương trình giải trí cực kỳ hấp dẫn.\r\n\r\n', 1, '2022-10-15 13:02:32', 1),
(4, 'Điện thoại OPPO Reno8 Pro 5G', 2, 1, 18990000, 'oppop1.jpg', 'Sản phẩm lần này sử dụng kiểu thiết kế vuông vức hợp xu hướng, cùng với đó là khung viền kim loại và mặt kính cường lực Gorilla Glass 5 giúp cho thiết bị có được độ bền bỉ cao hơn.Điểm thú vị ở phần mặt lưng máy là cụm camera được tạo hình liền mạch và sử dụng kiểu thiết kế nổi 3D.Với một màn hình có kích thước lên đến 6.7 inch giúp người dùng có thể thỏa sức trải nghiệm chơi game hay xem phim được đã mắt nhờ nội dung được hiển thị to rõ cùng một không gian thao tác cực kỳ rộng lớn.\r\n\r\n', 1, '2021-11-29 13:02:32', 0),
(5, 'Điện thoại OPPO Reno6 Pro 5G', 2, 1, 14990000, 'oppop2.jpg', 'Reno6 Pro 5G trang bị bộ vi xử lý mạnh mẽ Snapdragon 870 đến từ Qualcomm, đạt tốc độ xử lý cao trên xung nhịp lên đến 3.2 GHz, hiệu suất CPU tăng lên 12% và GPU 10% so với thế hệ chipset tiền nhiệm, mang đến trải nghiệm ấn tượng trên từng tác vụ giải trí lẫn công việc.\r\nĐồng thời, Snapdragon 870 cũng tỏa nhiệt ít hơn so với Snapdragon 888 nên bạn sẽ cảm thấy điện thoại trong tình trạng mát mẻ hơn khi dùng lâu.', 0, '2022-01-09 13:02:32', 1),
(6, 'Điện thoại iPhone 13 Pro 128GB ', 3, 1, 25990000, 'iphonep1.jpg', 'iPhone 13 Pro không có nhiều sự thay đổi về thiết kế, khi máy vẫn sở hữu kiểu dáng tương tự như điện thoại iPhone 12 Pro với các cạnh viền vuông vắn và hai mặt kính cường lực cao cấp. Sở hữu 5 phiên bản màu gồm xanh dương, bạc, vàng đồng, xám và xanh lá cho bạn tùy chọn theo sở thích của mình. Máy đạt tiêu chuẩn kháng nước và bụi IP68 có khả năng chống lại một số hạt bụi, và được bảo vệ khi rơi xuống nước ở độ sâu đến 6 mét trong 30 phút theo chuẩn IEC 60529, thoải mái nhắn tin khi lỡ ra ngoài gặp mưa, chụp ảnh tự tin khi đi hồ bơi, bãi biển,...\r\n\r\n', 1, '2022-11-08 13:02:32', 1),
(7, 'Điện thoại iPhone 14 Plus 128GB', 3, 1, 25790000, 'iphonep1.jpg', 'Được chế tác với kiểu dáng tương tự như thế hệ tiền nhiệm iPhone 13, tinh tế theo từng đường nét với khung nhôm chắc chắn, mặt trước và sau được trang bị kính cường lực vừa tăng tính thẩm mỹ vừa tăng độ bền cho thiết bị.\r\nMàu sắc là phần luôn được đổi mới ở các thế hệ iPhone, mỗi dòng thường sẽ có 1 màu sắc đặc biệt ghi dấu ấn riêng. iPhone 14 năm nay sẽ có 5 màu với tone dịu nhẹ như: Đen, trắng, xanh dương, tím nhạt và đỏ. Các màu đều mang một phong cách trẻ trung, phù hợp với hầu như tất cả mọi phong cách người dùng. ', 1, '2022-11-22 13:02:32', 1),
(8, 'Điện thoại iPhone 14 Plus 256GB', 3, 1, 27990000, 'iphonep3.jpg', 'Khung của smartphone này được làm bằng chất liệu nhôm cao cấp để mang đến độ bền cao, chống ăn mòn, chịu nhiệt tốt hay mang lại cái nhìn bóng đẹp tự nhiên từ mọi góc nhìn. Mặt trước và sau bằng kính cường lực, bề mặt kính ở màn hình phủ \"tấm chắn\" Ceramic Shield cứng cáp có khả năng chịu tác động tốt.Với những bạn có nhu cầu cao hơn về chụp ảnh thì người dùng cũng có thể tham khảo thêm phiên bản iPhone 14 Pro Max, máy hỗ trợ camera chính có độ phân giải 48 MP.\r\n\r\n', 1, '2022-11-05 13:02:32', 0),
(9, 'Điện thoại iPhone 13 Pro Max 256GB', 3, 1, 30990000, 'iphonep4.jpg', 'iPhone 13 Pro Max vẫn sẽ kế thừa thiết kế đặc trưng của iPhone 12 Series, vẫn là một sản phẩm với khung viền được hoàn thiện từ thép không gỉ, hai mặt trước sau được trang bị kính cường lực bóng bẩy.\r\nĐiểm thay đổi lớn trên 13 Pro Max có thể là phần module camera được làm to hơn khá nhiều, phần cạnh viền máy được vát phẳng sang trọng cùng bốn góc được làm bo cong nhẹ, phủ một lớp mờ giúp hạn chế bám bụi bẩn và vân tay.\r\n', 1, '2022-01-01 13:02:32', 0),
(10, 'Điện thoại OPPO A55 ', 2, 1, 4190000, 'oppop3.jpg', 'OPPO A55 4G có 3 phiên bản màu độc đáo là xanh lá, xanh dương và màu đen. Thiết kế cong 3D cùng kích thước mỏng nhẹ, OPPO A55 4G vừa vặn trong tay người cầm, cho từng thao tác trải nghiệm thoải mái và chắc chắn.Ở bản màu đen, mặt lưng sử dụng chất liệu nhựa nhám với bề mặt cực mịn, cho cảm giác cầm nắm chắc tay và hạn chế bám vân tay hoàn hảo. Bản màu xanh dương là một sự sáng tạo của OPPO với mặt lưng sáng bóng có khả năng phản quang tốt tạo hiệu ứng màu sắc cầu vồng lung linh, đẹp mắt trên nền xanh trẻ trung.\r\n\r\n', 0, '2021-11-09 13:02:32', 0),
(11, 'Laptop Acer TravelMate B3 TMB311 31 C2HB N4020/4GB/128GB/Win11', 4, 2, 5990000, 'acerp1.jpg', 'Acer TravelMate B3 có khối lượng máy chỉ 1.4 kg, độ dày 20.99 mm, thiết kế thanh lịch, đẹp mắt với lớp vỏ nhựa màu đen đơn giản kèm logo hãng tinh tế ở góc trái trên mặt lưng, dễ dàng cùng bạn xuất hiện ở mọi nơi.Được tối giản cả ở bàn phím, laptop dùng hệ bàn phím có hành trình tốt, độ nhạy cao, cho thao tác soạn thảo nhanh êm và nhạy, đáp ứng nhu cầu học tập, làm việc.\r\n', 0, '2020-11-21 13:02:32', 0),
(12, 'Laptop Acer Aspire 7 Gaming A715 42G R4XX R5 5500U/8GB/256GB/4GB GTX1650/Win11', 4, 2, 14990000, 'acerp2.jpg', 'Laptop AMD Ryzen 5 5500U cùng card rời NVIDIA GeForce GTX 1650 4 GB, mang đến khả năng thiết kế 2D, render video ngắn,... ổn định trên các phần mềm Adobe hay giải trí với các tựa game kịch tính trên thị trường hiện nay một cách mượt mà.\r\nChiếc laptop Acer Aspire còn sở hữu RAM 8 GB và SSD 256 GB đáp ứng tốt nhu cầu đa nhiệm, hỗ trợ bạn thao tác mọi việc nhanh chóng và hiệu quả hơn.\r\nPhiên bản laptop này với khối lượng 2.1 kg và dày 22.9 mm, được chế tác từ chất liệu nhựa bền bỉ, dễ dàng để bạn mang đi khắp mọi nơi.', 0, '2021-11-21 13:02:32', 1),
(13, 'Laptop Lenovo Ideapad 3 15ITL6 i3 1115G4/8GB/512GB/Win11', 5, 2, 10990000, 'lenovop1.jpg', 'Chất liệu vỏ nhựa mang đến khối lượng nhẹ hơn, chỉ 1.65 kg và dày 19.9 mm giúp mình cảm thấy thoải mái khi bỏ gọn gàng trong balo để mang đến trường. Dù là nhựa nhưng độ hoàn thiện của máy rất tốt, cứng cáp chứ không ọp ẹp nha.Các chi tiết giả vân xước phay đem đến sự thời thượng, tinh tế cho người dùng. Cảm nhận cầm nắm chắc tay, lớp vỏ máy hoàn thiện cao tạo nên cảm giác mát mẻ khi chạm vào mặt lưng. Phần logo của hãng được đặt lệch một bên góc khá quen thuộc của nhà Lenovo . \r\n\r\n', 1, '2022-11-06 13:02:32', 1),
(14, 'Laptop Lenovo Ideapad Gaming 3 15IAH7 i5 12500H/8GB/512GB/4GB RTX3050/120Hz/Win11', 5, 2, 26190000, 'lenovop2.jpg', 'Sở hữu cho mình cân nặng 2.315 kg và độ dày 21.8 mm, mức trọng lượng này có phần nặng hơn so với người đàn anh của mình tuy nhiên không nhiều. Với hiệu năng mạnh mẽ từ chiếc máy này, thêm một ít khối lượng cũng không làm chúng ta quá khó khăn khi di chuyển. Các thao tác gập lên, gập xuống của bản lề trên máy được hoàn thiện rất tốt, mình có thể cảm thấy được sự mượt mà và trơn tru. Tuy nhiên, bản lề chưa thật sự tạo cho mình cảm giác chắc chắn, màn hình có phần hơi rung nhẹ với các tác động.\r\n\r\n', 0, '2021-11-20 13:02:32', 1),
(15, 'Laptop Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H/8GB/512GB/144Hz/4GB GTX1650/Win11', 4, 2, 19490000, 'acerp3.jpg', 'Laptop Acer Nitro với tính bền bỉ vượt bậc khi được trang bị lớp vỏ nhựa chắc chắn cùng khối lượng không quá nặng cho một chiếc laptop gaming 2.2 kg và dày 23.9 mm, sẵn sàng cùng bạn đi đến bất kỳ đâu, phục vụ tốt cho cả nhu cầu công việc hay giải trí, cho phép bạn chiến game ở khắp mọi nơi trong cuộc hành trình.Bàn phím Fullsize được thiết kế đèn nền chuyển màu RGB của laptop Acer được thiết kế tinh tế nhưng vẫn tôn lên nét mạnh mẽ của một chiếc gaming mạnh mẽ, với các phím có độ nảy tốt, cho bạn thoải mái sử dụng cả trong điều kiện ánh sáng kém mà không lo nhầm lẫn.\r\n\r\n', 1, '2021-11-22 13:02:32', 0),
(16, 'Laptop Dell Gaming G15 5511 i5 11400H/8GB/256GB/4GB RTX3050/120Hz/OfficeHS/Win11', 6, 2, 26210000, 'dellp1.jpg', 'Đến với chiếc laptop, ngôn ngữ thiết kế đã được thay đổi so với các phiên bản tiền nhiệm, hầm hố hơn, các đường nét cắt xẻ tăng thêm phần gaming cho chiếc máy. Lớp vỏ nhựa màu xám bao bọc bên ngoài chiếc laptop Dell Gaming này mang đến sự bền bỉ hoàn mỹ cùng khối lượng 2.81 kg và dày 25 mm, với mình đây là một con số vừa đủ để có thể mang theo bên người, phục vụ cho nhu cầu làm việc cũng như giải trí cho bản thân. ', 1, '2022-11-22 13:02:32', 0),
(17, 'Laptop Dell Gaming G15 5515 R5 5600H/16GB/512GB/4GB RTX3050/120Hz/OfficeHS/Win11', 6, 2, 23490000, 'dellp2.jpg', 'Laptop Dell Gaming hoàn thiện từ chất liệu nhựa cao cấp, bền bỉ, phủ gam màu xám thời thượng, thu hút bạn từ cái nhìn đầu tiên, thích hợp với đa dạng đối tượng người dùng bởi phong cách gaming hiện đại, không quá hầm hố.\r\nKhối lượng 2.8 kg và độ dày 26.9 mm tạo cảm giác cứng cáp hơn cho máy, nhưng vẫn vừa vặn nằm gọn trong balo, tiện lợi cùng bạn di chuyển mọi lúc mọi nơi để học tập, làm việc cũng như chơi game giải trí hoàn hảo.\r\n', 1, '2022-11-27 13:02:32', 0),
(18, 'Laptop Dell Gaming Alienware m15 R6 i7 11800H/32GB/1TB SSD/6GB RTX3060/165Hz/Office H&S/Win11', 6, 2, 61990000, 'dellp3.jpg', 'Laptop Dell Alienware m15 R6 có một thiết kế bo tròn cứng cáp, dù là laptop gaming nhưng với sự bo tròn ở góc cạnh cũng như các chi tiết ở cổng giao tiếp tăng thêm phần mềm mại cho tổng thể. Chiếc máy được chế tác từ lớp vỏ kim loại đem đến một diện mạo thời thượng cho dòng laptop gaming Alienware. Bên cạnh đó, chiếc máy dày 19.2 mm và nặng 2.69 kg, theo cảm nhận của mình thì chiếc máy không quá cồng kềnh, cầm nắm chắc chắn, gọn gàng dễ dàng mang theo bên mình.', 1, '2022-11-13 13:02:32', 0),
(19, 'Tai nghe Bluetooth AirPods Pro (2nd Gen) MagSafe Charge Apple MQD83 Trắng', 3, 3, 6490000, 'airportp1.jpg', 'AirPods Pro 2 được tích hợp con chip Apple H2 có thể mang lại dải âm rõ ràng, chi tiết với khả năng hiển thị từng nốt cao và âm bass sâu một cách đầy đủ. Mọi âm thanh thông qua Airpods Pro 2 đều sống động hơn bao giờ hết. Ngoài ra, Chip Apple H2 còn mang đến khả năng khử tiếng ồn thông minh và giúp kéo dài tuổi thọ pin ấn tượng.\r\nTính năng Adaptive EQ có thể dễ dàng điều chỉnh sao cho phù hợp với từng bản nhạc bạn đang nghe nhằm cá nhân hóa trải nghiệm nghe nhạc của bạn.', 0, '2021-11-14 13:02:32', 0),
(20, 'Tai nghe Bluetooth AirPods Pro Wireless Charge Apple MWP22 Trắng', 3, 3, 4990000, 'airportp2.jpg', 'AirPods Pro được nâng cấp mạnh mẽ ở chất lượng âm thanh, cho âm bass mạnh mẽ hơn, chân thực hơn, độ chi tiết cao hơn, nhất là công nghệ Adaptive EQ, cho phép tự động điều chỉnh tần số âm thanh của bản nhạc theo hình dạng tai người dùng, mang lại trải nghiệm âm thanh tốt nhất.\r\nCó chip H1 chất lượng cao, xử lý âm thanh kỹ thuật số, tốc độ kết nối cực kì nhanh, cho độ trễ gần như bằng không.', 1, '2022-11-13 13:02:32', 0),
(21, 'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 Pro R510N', 1, 3, 4990000, 'airportp3.jpg', 'Nhìn tổng thể, Galaxy Buds 2 Pro có ngoại hình tương tự như thế hệ tiền nhiệm. Phần hộp sạc vẫn giữ vẻ ngoài khá quen thuộc với thiết kế nhỏ nhắn, liền mạch đi cùng với nhiều phiên bản màu sắc cực “trendy”.\r\nTuy nhiên, theo như hãng công bố, phần củ tai của phiên bản mới này lại sở hữu kích thước nhỏ hơn 15% so với Galaxy Buds Pro. Điều này tạo cho bạn cảm giác thoải mái và ôm khít vào trong khuôn tai trong suốt thời gian trải nghiệm.', 1, '2021-11-17 13:02:32', 1),
(22, 'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 Pro R510N Trắng', 1, 3, 4990000, 'airportp4.jpg', 'Điều mình chú ý đầu tiên chính là tổng quan thiết kế của bộ tai nghe này, toàn bộ hộp sạc và tai nghe đều được bao phủ bởi màu trắng trang nhã, thanh lịch. Phần logo Samsung in ở mặt trên hộp sạc càng làm thiết kế trở nên tinh tế hơn. Với mình, đây không chỉ là một chiếc tai nghe mà nó còn là một món phụ kiện thời trang sang chảnh.Khi mở hộp sạc ra, mình có thể dễ dàng mở bằng một tay và nó cho mình cảm giác phần bản lề chắc chắn, tiếng “tách” khi đóng hộp nghe khá vui tai.\r\n\r\n', 0, '2021-11-01 13:02:32', 1),
(23, 'Tai nghe chụp tai Bluetooth AirPods Max Apple', 3, 3, 9790000, 'tainghep1.jpg', 'Tai Bluetooth AirPods Max Apple MGYH3/ MGYJ3/ MGYL3 dễ dàng cuốn hút bạn ngay từ cái nhìn đầu tiên, với nét sang trọng và cực kỳ tinh tế đến từ sự tối giản trong thiết kế và màu sắc, tạo sự khác biệt ấn tượng với các sản phẩm tai nghe hiện có trên thị trường.Phần chụp tai bọc vải êm ái đính hút nam châm với củ tai dễ tháo rời vệ sinh. Bạn sẽ bất ngờ vì sự êm ái và rất nhẹ nhàng, thoải mái khi mang chiếc tai nghe trên đầu, trái với cảm nhận độ nặng ban đầu khi cầm trên tay.', 1, '2021-11-01 13:02:32', 1),
(24, 'Tai nghe chụp tai Bluetooth AirPods Max Apple MGYH3 ', 3, 3, 12590000, 'tainghep2.jpg', 'Thiết kế thời thượng, độc đáo, phần đệm tai dày dặn, êm ái, bao trọn vành tai cho cảm giác thoải mái khi đeo.\r\nTai nghe có phần gọng được làm từ kim loại chắc chắn kèm theo tấm lưới uốn cong nâng đỡ tai nghe, tránh làm đau phần đầu tiếp xúc.\r\nNghe nhạc, xem phim thoải mái với âm thanh sống động, rõ nét tới từng chi tiết nhờ được trang bị các công nghệ hiện đại như: Công nghệ chống ồn chủ động (ANC), Spatial Audio.\r\nLinh hoạt tuỳ chỉnh chất âm theo cấu tạo tai từng người nhằm đem lại trải nghiệm thanh tốt nhất.', 0, '2021-11-02 13:02:32', 0),
(25, 'Tai nghe chụp tai Bluetooth AirPods Max Apple MGYJ3', 3, 3, 12590000, 'tainghep3.jpg', 'Tai nghe sở hữu thiết kế đẹp mắt, màu sắc thời thượng, sang chảnh, dễ dàng gấp gọn khi cần cất giữ hoặc mang theo trong mọi chuyến hành trình.\r\nTai nghe chụp tai (Over-ear) với phần đệm tai mềm mại hoàn toàn ôm trọn phần tai, cho cảm giác đeo cực kỳ thoải mái.\r\nCông nghệ Spatial Audio cùng màng loa lớn cho chất âm to rõ, dải âm rộng, âm bass đầm, âm treble trong trẻo giúp tai nghe truyền tải âm thanh chân thực, sống động.\r\nKết hợp cùng công nghệ chống ồn chủ động (ANC) giúp ngăn chặn hầu như toàn bộ tạp âm từ môi trường, tập trung tận hưởng không gian âm nhạc riêng bạn.\r\n', 1, '2021-11-03 13:02:32', 0),
(26, 'Tai nghe Bluetooth True Wireless OPPO ENCO Buds 2 ETE41', 2, 3, 1290000, 'airportp5.jpg', 'Phần hộp đựng của tai nghe Bluetooth True Wireless OPPO ENCO Buds 2 ETE41 mang kiểu dáng thiết kế dạng tròn trông khá lạ mắt với khối lượng gọn nhẹ. Nắp hộp có thể đóng, mở dễ dàng cùng phần bản lề vô cùng chắc chắn. Sở hữu bề mặt bóng bao bọc trọn vẹn hộp đựng giúp tai nghe thêm phần thời thượng, sang chảnh, phù hợp với mọi đối tượng.\r\n\r\nPhần đệm núm tai nghe vừa khít vào tai cộng thêm phần housing được thiết kế khá dài giúp hạn chế rơi, tuột và cho khả năng sử dụng thoải mái trong mọi hoạt động kể cả chơi thể thao hoặc chạy bộ nhiều giờ liền.', 0, '2020-11-01 13:02:32', 0),
(27, 'Camera IP Ngoài Trời 360 Độ 4MP Ezviz C8W ', 8, 4, 2090000, 'camp1.jpg', 'Bạn có thể nghe và nói chuyện với người nhà, chào đón khách đến thăm hoặc từ chối những vị khách không mời mà đến thông qua ứng dụng EZVIZ trên điện thoại thông minh của mình.\r\nCamera cung cấp khả năng xoay chéo 105 độ và xoay ngang 360 độ, dễ dàng bao quát các diện tích rộng và giảm đáng kể các điểm mù.\r\nNhờ vào thuật toán AI tích hợp sẵn, camera ngoài trời này có thể phân biệt hình dáng con người với vật nuôi hoặc vật thể, do đó bạn sẽ được thông báo khi có sự việc quan trọng nào xảy ra.', 0, '2022-11-07 13:02:32', 1),
(28, 'Camera IP 360 Độ 2K Pro Ezviz Home BHR4193GL ', 8, 4, 1590000, 'camp2.jpg', 'Camera IP Mi Home 360 Độ 2K Pro Xiaomi BHR4193GL thiết kế nhỏ gọn, kiểu dáng hiện đại, tinh tế, sử dụng để bàn, kệ tủ hay lắp gắn trần dễ dàng, quan sát hiệu quả, chất lượng hình ảnh tốt, chống rung hiệu quả.Dữ liệu quan sát đạt độ phân giải ấn tượng lên đến 2K (2304 x 1296) mang đến khung hình sắc nét trong từng chi tiết, không nhòe mờ cả khi được phóng lớn, hỗ trợ tích cực khi cần tầm soát thông tin trên dữ liệu lưu trữ.\r\n\r\n', 0, '2022-11-18 13:02:32', 1),
(29, 'Camera IP Ngoài Trời 3MP Ezviz C3TN', 8, 4, 1430000, 'camp3.jpg', ' Camera Ezviz có thể nhận diện con người trong khung hình và sẽ thông báo về điện thoại thông qua ứng dụng Ezviz được cài đặt trên điện thoại.\r\nĐược trang bị micro và loa ngoài, người dùng có thể đàm thoại 2 chiều qua camera ngoài trời này, cùng với khả năng lọc nhiễu tốt cho âm thoại rõ ràng, rành mạch.\r\nHỗ trợ đèn hồng ngoại giúp camera có thể quan sát tốt trong điều kiện thiếu sáng, thu giữ hình ảnh rõ ràng, chi tiết để kiểm soát hiệu quả an ninh cả ngày và đêm.\r\n\r\n \r\n \r\n\r\n', 0, '2022-11-03 13:02:32', 0),
(30, 'Camera IP 1080P Ezviz CS-CV246 ', 8, 4, 1070000, 'camp4.jpg', 'Camera IP 1080P Ezviz CS-CV246 Trắng thiết kế nhỏ gọn với hình ảnh sắc nét Full HD - 1080p, có thể gắn bất cứ vị trí nào như văn phòng, cửa hàng hay gia đình.\r\nThiết kế camera Ezviz dạng hình tròn với khả năng quan sát toàn cảnh với góc nhìn 90 độ và góc xoay ngang 340 độ và xoay dọc 120 độ.Tích hợp tính năng phát hiện và bám theo chuyển động thông minh, người dùng có thể bật tính năng báo động cho camera, khi phát hiện có chuyển động thì ngay lập tức camera sẽ gửi thông báo đến phần mềm Ezviz trên điện thoại hoặc Ezviz Studio trên máy tính của bạn.\r\n\r\n', 0, '2020-11-01 13:02:32', 1),
(31, 'Camera IP Ngoài Trời 4MP TP-Link Tapo C320WS ', 9, 4, 1170000, 'camp5.jpg', ' Camera ngoài trời trang bị công nghệ nhìn đêm Starlight Night Vision có độ nhạy cao, chụp ảnh chất lượng cao hơn ngay cả trong điều kiện ánh sáng yếu.\r\nTầm nhìn ban đêm rõ ràng với đầy đủ màu sắc, camera TP-Link cung cấp tầm nhìn xa hồng ngoại đến 30 m cho bạn video đầy đủ chi tiết ngay cả vào ban đêm.\r\nBạn có thể khởi động còi báo động tích hợp để ngăn chặn kẻ xấu và còi báo động cũng có thể tự hoạt động với các tính năng phát hiện chuyển động khác nhau của người lạ trước tầm nhìn camera.', 1, '2022-11-07 13:02:32', 0),
(32, 'Camera IP 360 Độ 1536P TP-Link Tapo C210 ', 9, 4, 900000, 'camp6.jpg', 'TP-Link Tapo C210 quay bao quát toàn bộ không gian, không những giúp bạn thu thập dữ liệu giá trị tối ưu mà còn tiết kiệm chi phí khi không cần phải mua nhiều camera giám sát cho 1 khu vực nhất định. \r\nSố lượng điểm ảnh 2048 x 1536, bất kỳ hoạt động gì diễn ra trước ống kính camera đều được thu lại rõ ràng với độ chuẩn xác cao, giúp bạn nhận ra nhanh các nguy hiểm có thể xảy ra, bảo vệ gia đình mình tốt hơn.', 1, '2021-11-01 13:02:32', 0),
(33, 'Camera IP 360 Độ 1080P TP-Link Tapo TC70 ', 9, 4, 800000, 'camp7.jpg', 'TP-Link Tapo TC70 giúp người sử dụng nắm bắt tốt mọi diễn biến xung quanh khu vực quan sát, góc quan sát rộng mang đến dữ liệu quan sát giá trị, đồng thời giảm đầu tư cho việc lắp đặt nhiều camera trong 1 khu vực cần giám sát.Dữ liệu với độ phân giải cao đảm bảo cho chất lượng hình ảnh không bị nhòe khi phóng lớn, hỗ trợ tích cực khi cần kiểm tra, theo dõi chi tiết các chuyển động, vật thể trên màn hình, phục vụ nhu cầu giám sát an ninh.', 1, '2020-11-17 13:02:32', 0),
(34, 'Chuột Bluetooth Apple MK2E3', 3, 5, 2240000, 'phukienp1.jpg', 'Chuột Bluetooth này trọng lượng chỉ 80 g, kích thước gọn tay cầm, tạo tư thế cầm nắm thoải mái, chắc chắn, tránh gây mỏi cổ tay khi dùng lâu.\r\nPhần chân đế được tối ưu để dùng tốt trên mọi chất liệu mặt bàn, giúp chuột di chuyển nhanh nhạy và chuẩn xác theo từng lệnh thao tác.\r\nDễ dàng liên kết chuột với các thiết bị và bắt đầu sử dụng ngay ở mọi nơi, mọi lúc, không đầu cắm, không dây nối vướng víu, dùng linh hoạt, hiệu quả cao.\r\n\r\n', 1, '2022-11-30 13:02:32', 0),
(35, 'Bàn phím Magic Keyboard Apple MK2A3 Trắng ', 3, 5, 2390000, 'phukienp2.jpg', 'Thiết kế đẹp mắt, bàn phím gọn nhẹ, màu trắng trang nhã, sang trọng.\r\nPhản hồi nhanh chóng, chính xác cho bạn thoải mái thực hiện mọi tác vụ kể cả đồ hoạ hoặc chơi game.\r\nTương thích với các thiết bị nhà Apple chạy hệ điều hành từ macOS 11.3 trở lên, iPadOS 14.5 trở lên và iOS 14.5 trở lên.\r\nBàn phím không dây, kết nối với thiết bị thông qua Bluetooth hiện đại.\r\nBàn phím Apple này hoạt động bằng pin sạc, khi hết pin bạn có thể sạc lại thông qua cáp sạc đi kèm.', 1, '2022-11-02 13:02:32', 1),
(36, 'Bàn phím Apple Magic Keyboard với phím số MQ052 Bạc', 3, 5, 3110000, 'phukienp3.jpg', 'Thiết kế sang trọng với tông màu trắng xám, đồng thời, sử dụng chất liệu cao cấp, bền bỉ cho thời gian sử dụng lâu dài.\r\nBàn phím mỏng nhẹ, chỉ khoảng 390 g, cho phép bạn dễ dàng mang theo trong mọi chuyến hành trình của mình.\r\nBàn phím Magic mang đến cho bạn trải nghiệm gõ chính xác và thoải mái, tốc độ phản hồi của phím nhanh giúp tối ưu trải nghiệm sử dụng,\r\nBàn phím Apple tự động ghép nối với chiếc MacBook, iPad và iPhone của bạn thông qua Bluetooth từ lần sử dụng thứ ', 0, '2020-11-10 13:02:32', 0),
(37, 'Chuột Có dây Gaming MSI Clutch GM08 Đen ', 10, 5, 420000, 'phukienp4.jpg', 'Chuột MSI này được chế tạo tỉ mỉ với lớp vảy rồng độc quyền đem đến độ cầm chắc tay khi sử dụng chuột. Thiết kế đa dác đặc biệt trên các nút cho phép bạn bấm nhanh và dễ dàng.\r\nChuột có mức thiết lập mặc định DPI của phần cứng từ 200 - 3200, thông số tối đa tốc độ DPI lên đến 4200 điều chỉnh bằng phần mềm.\r\nNgay lập tức chuyển đổi giữa 5 mức thiết lập tốc độ DPI để điều chỉnh độ chính xác cho mọi tình huống.', 1, '2022-11-12 15:30:54', 1),
(38, 'Chuột Có dây Gaming MSI Clutch GM11 Đen', 10, 5, 590000, 'phukienp5.jpg', 'Chuột MSI này sở hữu thiết kế đối xứng, phù hợp với cả người dùng thuận tay phải và thuận tay trái.\r\nChuột gaming này kết hợp công tắc từ OMRON đạt độ bền hơn 10 triệu cú nhấn chuột cùng mắt đọc quang học của Pixart với tốc độ lên đến 5000 DPI.\r\nTất cả các thiết lập chi tiết như điều khiển ánh sáng, gán chức năng cho nút, thiết lập mức tốc độ DPI và lưu trữ tổ hợp macro có thể được tiến hành nhờ vào phần mềm Dragon Center.', 0, '2022-11-02 15:32:42', 0),
(39, 'Bàn di chuột Apple Magic Trackpad 2 MK2D3 Bạc ', 3, 5, 2990000, 'phukienp7.jpg', 'Bàn di chuột Apple được tạo với độ nghiêng nhẹ, giúp thao tác di chuột trở nên thoải mái hơn. \r\nBàn di chuột được trang bị cảm ứng đa điểm, người dùng có thể dễ dàng phóng to, thu nhỏ, cuộn, xoay,... kiểm soát và tương tác tốt với nội dung trên màn hình.\r\nMagic Trackpad 2 tự động ghép nối với iMac của bạn, vì vậy bạn có thể bắt đầu làm việc ngay lập tức khi khởi động thiết bị.', 1, '2021-11-02 15:32:42', 1),
(40, 'Bàn phím Có dây Gaming MSI Vigor GK30 US Đen ', 10, 5, 970000, 'phukien6.jpg', 'Thiết kế phím nổi chống nước không chỉ giúp bàn phím đẹp hơn, mà còn giúp cho bạn dễ dàng lau chùi bàn phím hơn khi dính bẩn.\r\nBàn phím MSI được trang bị các switch tịnh tiến tương tự switch cơ học với ba bộ phận đem đến trải nghiệm gõ phím chắc chắn với độ bền hơn 12 triệu lần nhấn.\r\nNgoài ra, với các phím tắt tiện lợi bạn dễ dàng thay đổi nhanh tốc độ, hướng hay chế độ đèn mà không cần cài đặt phần mềm. Phía trên của bàn phím là dãy phím tắt điều chỉnh âm lượng.', 0, '2022-11-15 15:32:42', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(1, 'Điện thoại'),
(2, 'Laptop'),
(3, 'Tai nghe'),
(4, 'Camera'),
(5, 'Phụ kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `id_review` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name_reviewer` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `star` int(5) NOT NULL,
  `id_product` int(11) NOT NULL,
  PRIMARY KEY (`id_review`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `review`
--

INSERT INTO `review` (`id_review`, `email`, `name_reviewer`, `content`, `star`, `id_product`) VALUES
(1, '1211tt@mail.com.vn', 'rivewer_1', 'Giảm giá mạnh, thời lượng pin siêu dài, kiểu dáng sang trọng, thời thượng và sự tinh xảo đến từng đường nét.', 4, 1),
(2, '2211tt@mail.com.vn', 'rivewer_2', 'Hiệu năng màn hình camera đều tuyệt vời, cảm giác mượt mà rất xứng đáng với số tiền bỏ ra', 4, 2),
(3, '3211tt@mail.com.vn', 'rivewer_3', 'Máy chạy mượt, pin trâu, camera sắt nét nhưng sạc lâu lâu bị tê nha. Rò điện', 3, 3),
(4, '4211tt@mail.com.vn', 'rivewer_4', 'Màn hình lớn tha hồ trải nghiệm, siêu nét và độ sáng tối đa đạt mức khó tin, pin thì siêu dài, siêu bền. Thiết kế sang trọng, lịch lãm.', 5, 4),
(5, '5211tt@mail.com.vn', 'rivewer_5', 'Tạm được', 2, 5),
(6, '6211tt@mail.com.vn', 'riviewer_6', 'Tuyệt vời', 5, 6),
(7, '7211tt@mail.com.vn', 'riviewer_7', 'Điện thoại đẹp,mạnh lắm chơi game coi phim rất mươt rất ưng, đã mua đc ba ngày', 4, 7),
(8, '8211tt@mail.com.vn', 'riviewer_8', 'nhân viên nhiệt tình nhưng chưa hiểu hết kiến thức máy', 3, 8),
(9, '9211tt@mail.com.vn', 'riviewer_9', 'Mới 1 ngày mà xuống 1 tr', 3, 9),
(10, '10211tt@mail.com.vn', 'riviewer_10', 'Tạm được', 2, 10),
(11, '11211tt@mail.com.vn', 'riviewer_11', 'không hiểu sao máy lag kinh khủng laptop gaming khong chơi được game', 1, 11),
(12, '12211tt@mail.com.vn', 'riviewer_12', 'Dễ dàng cài đặt các phần mềm đồ họa đỉnh cao hay những tựa game nặng 1 cách thoải mái', 4, 12),
(13, '13211tt@mail.com.vn', 'riviewer_13', 'Máy hiệu năng tốt thiết kế phần tản nhiệt khá độc và lạ mắt', 4, 13),
(14, '14211tt@mail.com.vn', 'riviewer_14', 'ản phẩm có hiệu suất chơi game vượt trội, đồng thời mang đến sự linh hoạt khi chạy các ứng dụng nặng.', 3, 14),
(15, '15211tt@mail.com.vn', 'riviewer_15', 'Good', 4, 15),
(16, '16211tt@mail.com.vn', 'riviewer_16', 'Tuyệt vời', 5, 16),
(17, '17211tt@mail.com.vn', 'riviewer_17', 'Tuyệt vời', 5, 17),
(18, '18211tt@mail.com.vn', 'riviewer_18', 'Tuyệt vời', 5, 18),
(19, '19211tt@mail.com.vn', 'riviewer_19', 'tai nghe được trang bị công nghệ Bluetooth 5.2 và công nghệ truyền đồng bộ hai tai giúp mang lại kết nối không dây ổn định và âm thanh đồng bộ.', 4, 19),
(20, '20211tt@mail.com.vn', 'riviewer_20', 'am thanh ổn. Nói chung với mức giá như này thì mình không đòi hỏi gì hơn.', 4, 20),
(21, '21211tt@mail.com.vn', 'riviewer_21', 'tai nghe siêu nhẹ, chất lượng âm thanh vượt trội', 4, 21),
(22, '22211tt@mail.com.vn', 'riviewer_22', 'đeo lâu ko có cảm giác bị đau tai, khá là êm và nhẹ nhàng', 4, 22),
(23, '23211tt@mail.com.vn', 'riviewer_23', 'tạm ổn với tầm giá này thì rất OK nhân viên rất nhiệt tình', 5, 23),
(24, '24211tt@mail.com.vn', 'riviewer_24', 'chiếc tai có trọng lượng tai nghe siêu nhẹ, tuổi thọ pin ấn tượng và chất lượng âm thanh vượt trội.', 3, 24),
(25, '25211tt@mail.com.vn', 'riviewer_25', 'Sản phẩm xài rất tốt. Mình đã mua 2 chiếc. Nghe rất rõ, đàm thoại tốt. Mọi người nên mua nhé!', 4, 25),
(26, '26211tt@mail.com.vn', 'riviewer_26', 'Sản phẩm có tính năng nhận và kết thúc cuộc gọi rất tiện lợi, thiết kế hai đầu tai giống như hai hạt đậu ôm gọn trong tai tạo cảm giác thoải mái khi đeo.', 5, 26),
(27, '27211tt@mail.com.vn', 'riviewer_27', 'Sản phẩm Đem tới chế độ xem toàn cảnh 360° với độ nét cao và tầm nhìn rõ nét vào ban đêm', 4, 27),
(28, '28211tt@mail.com.vn', 'riviewer_28', 'Chất lượng hình ảnh cực kỳ sắc nét, shop giao hàng nhanh', 5, 28),
(29, '29211tt@mail.com.vn', 'riviewer_29', 'Camera kết nối nhanh và lưu trữ, màu sắc khá tốt. Có cả dây kết nối', 3, 29),
(30, '30211tt@mail.com.vn', 'riviewer_30', 'Camera ok, hình ảnh rõ nhưng âm thanh chưa được tốt', 1, 30),
(31, '31211tt@mail.com.vn', 'riviewer_31', 'Camera ok, hình ảnh rõ nhưng âm thanh chưa được tốt', 2, 31),
(32, '32211tt@mail.com.vn', 'riviewer_32', 'Sản phẩm đúng chất lượng, hình ảnh rõ nét trong tầm giá', 5, 32),
(33, '33211tt@mail.com.vn', 'riviewer_33', 'Sản phẩm đúng chất lượng, hình ảnh rõ nét trong tầm giá', 4, 33),
(34, '34211tt@mail.com.vn', 'riviewer_34', 'dùng công nghệ kết nối không dây tốc độ cao 2.4GHz kết hợp với đầu thu tín hiệu nhỏ gọn, hoạt động ổn định', 4, 34),
(35, '35211tt@mail.com.vn', 'riviewer_35', 'Tương thích với nhiều thiết bị với chân USB thông dụng', 5, 35),
(36, '36211tt@mail.com.vn', 'riviewer_36', 'Không hài lòng', 1, 36),
(37, '37211tt@mail.com.vn', 'riviewer_37', 'Hài lòng', 2, 37),
(38, '38211tt@mail.com.vn', 'riviewer_38', 'Hài lòng', 3, 38),
(39, '39211tt@mail.com.vn', 'riviewer_39', 'Chính sách bảo hành khi mua hàng rất đầy đủ', 5, 39),
(40, '40211tt@mail.com.vn', 'riviewer_40', 'Thái độ phục vụ kém', 1, 40),
(47, '21211tt1838@mail.tdc.edu.vn', 'retre', 'ert', 3, 4),
(46, '21211TT1838@mail.tdc.edu.vn', 'wqe', 'dsfdsf', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `role`) VALUES
(1, 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 0),
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
