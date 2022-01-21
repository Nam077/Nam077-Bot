-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: sql6.freemysqlhosting.net
-- Thời gian đã tạo: Th1 21, 2022 lúc 02:53 PM
-- Phiên bản máy phục vụ: 5.5.62-0ubuntu0.14.04.1
-- Phiên bản PHP: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sql6467123`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banacount`
--

CREATE TABLE `banacount` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `psid` varchar(255) DEFAULT NULL,
  `reason` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `banacount`
--

INSERT INTO `banacount` (`id`, `name`, `psid`, `reason`) VALUES
(3, 'Bông Đặng', '4803914096335978', 'Bị Admin ban do vi phạm rules\nĐọc tại đây: https://by.com.vn/nvn-rules'),
(4, 'Triệu Quỳnh Mai', '4330768747051985', 'Bị Admin ban do vi phạm rules\nĐọc tại đây: https://by.com.vn/nvn-rules');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data`
--

CREATE TABLE `data` (
  `key` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `respone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` text,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `data`
--

INSERT INTO `data` (`key`, `respone`, `image`, `id`) VALUES
('chào ad', 'Chào bạn bot có thể giúp gì cho bạn nhỉ ^^\nBạn nhấn vào cái menu ở góc phải rồi chọn \"Khởi động lại bot\"\nHoặc gõ \"Bắt đầu\" để bắt đầu với Bot nhé ??', 'https://tinyurl.com/mvdy3vu6', 1),
('hello ad', 'Chào bạn bot có thể giúp gì cho bạn nhỉ ^^\nBạn nhấn vào cái menu ở góc phải rồi chọn \"Khởi động lại bot\"\nHoặc gõ \"Bắt đầu\" để bắt đầu với Bot nhé ??', 'https://tinyurl.com/mvdy3vu6', 2),
('ad ơi', 'Chào bạn bot có thể giúp gì cho bạn nhỉ ^^\nBạn nhấn vào cái menu ở góc phải rồi chọn \"Khởi động lại bot\"\nHoặc gõ \"Bắt đầu\" để bắt đầu với Bot nhé ??', 'https://tinyurl.com/mvdy3vu6', 3),
('bot ơi', 'Chào bạn bot có thể giúp gì cho bạn nhỉ ^^\nBạn nhấn vào cái menu ở góc phải rồi chọn \"Khởi động lại bot\"\nHoặc gõ \"Bắt đầu\" để bắt đầu với Bot nhé ??', 'https://tinyurl.com/mvdy3vu6', 4),
('alo', 'Chào bạn bot có thể giúp gì cho bạn nhỉ ^^\nBạn nhấn vào cái menu ở góc phải rồi chọn \"Khởi động lại bot\"\nHoặc gõ \"Bắt đầu\" để bắt đầu với Bot nhé ??', 'https://tinyurl.com/mvdy3vu6', 5),
('hi ad', 'Chào bạn bot có thể giúp gì cho bạn nhỉ ^^\nBạn nhấn vào cái menu ở góc phải rồi chọn \"Khởi động lại bot\"\nHoặc gõ \"Bắt đầu\" để bắt đầu với Bot nhé ??', 'https://tinyurl.com/mvdy3vu6', 6),
('hi bot', 'Chào bạn bot có thể giúp gì cho bạn nhỉ ^^\nBạn nhấn vào cái menu ở góc phải rồi chọn \"Khởi động lại bot\"\nHoặc gõ \"Bắt đầu\" để bắt đầu với Bot nhé ??', 'https://tinyurl.com/mvdy3vu6', 7),
('hello bot', 'Chào bạn bot có thể giúp gì cho bạn nhỉ ^^\nBạn nhấn vào cái menu ở góc phải rồi chọn \"Khởi động lại bot\"\nHoặc gõ \"Bắt đầu\" để bắt đầu với Bot nhé ??', 'https://tinyurl.com/mvdy3vu6', 8),
('chào bot', 'Chào bạn bot có thể giúp gì cho bạn nhỉ ^^\nBạn nhấn vào cái menu ở góc phải rồi chọn \"Khởi động lại bot\"\nHoặc gõ \"Bắt đầu\" để bắt đầu với Bot nhé ??', 'https://tinyurl.com/mvdy3vu6', 9),
('chào bạn', 'Chào bạn bot có thể giúp gì cho bạn nhỉ ^^\nBạn nhấn vào cái menu ở góc phải rồi chọn \"Khởi động lại bot\"\nHoặc gõ \"Bắt đầu\" để bắt đầu với Bot nhé ??', 'https://tinyurl.com/mvdy3vu6', 10),
('page ơi', 'Chào bạn bot có thể giúp gì cho bạn nhỉ ^^\nBạn nhấn vào cái menu ở góc phải rồi chọn \"Khởi động lại bot\"\nHoặc gõ \"Bắt đầu\" để bắt đầu với Bot nhé ??', 'https://tinyurl.com/mvdy3vu6', 11),
('cảm ơn', 'Ngại quá đi, rất vui khi giúp được bạn nè^^', 'https://tinyurl.com/2p84xkzt', 12),
('thanks', 'Ngại quá đi, rất vui khi giúp được bạn nè^^', 'https://tinyurl.com/2p84xkzt', 13),
('thank you', 'Ngại quá đi, rất vui khi giúp được bạn nè^^', 'https://tinyurl.com/2p84xkzt', 14),
('cám ơn', 'Ngại quá đi, rất vui khi giúp được bạn nè^^', 'https://tinyurl.com/2p84xkzt', 15),
('củm ơn', 'Ngại quá đi, rất vui khi giúp được bạn nè^^', 'https://tinyurl.com/2p84xkzt', 16),
('cảm ưn', 'Ngại quá đi, rất vui khi giúp được bạn nè^^', 'https://tinyurl.com/2p84xkzt', 17),
('tạm biệt', 'Tạm biệt bạn', '', 18),
('bye', 'Tạm biệt bạn', '', 19),
('giá việt hóa', 'Hiện tại bên mình nhận việt hóa với giá 50.000 đồng một font nhé.', '', 20),
('giá cả việt hóa', 'Hiện tại bên mình nhận việt hóa với giá 50.000 đồng một font nhé.', '', 21),
('việt hóa giá bao nhiêu', 'Hiện tại bên mình nhận việt hóa với giá 50.000 đồng một font nhé.', '', 22),
('font đẹp quá', 'Chuyện này bình thường rồi haha', '', 23),
('đẹp quá', 'Chuyện này bình thường rồi haha', '', 24),
('xinh xẻo', 'Chuyện này bình thường rồi haha', '', 25),
('xịn quá', 'Chuyện này bình thường rồi haha', '', 26),
('ui là trời', 'Chuyện này bình thường rồi haha', '', 27),
('u la', 'Chuyện này bình thường rồi haha', '', 28),
('ngủ ngon', 'Chúc bạn ngủ ngon lalala', '', 29),
('nn', 'Chúc bạn ngủ ngon lalala', '', 30),
('good night', 'Chúc bạn ngủ ngon lalala', '', 31),
('ngủ', 'Chúc bạn ngủ ngon lalala', '', 32),
('yêu ad', 'Mình cũng iu bạn ❤️ cơ mà bạn nào thì mình không nói :>', '', 33),
('iu ad', 'Mình cũng iu bạn ❤️ cơ mà bạn nào thì mình không nói :>', '', 34),
('yêu em', 'Mình cũng iu bạn ❤️ cơ mà bạn nào thì mình không nói :>', '', 35),
('yêu anh', 'Mình cũng iu bạn ❤️ cơ mà bạn nào thì mình không nói :>', '', 36),
('yêu bot', 'Mình cũng iu bạn ❤️ cơ mà bạn nào thì mình không nói :>', '', 37),
('bot là ai', 'Mình là NVN nè bạn :v', '', 38),
('ai vậy', 'Mình là NVN nè bạn :v', '', 39),
('người yêu chưa', 'Người yêu hả, bạn hỏi cô tên gì chứ mình nhiều lắm', '', 40),
('người yêu', 'Người yêu hả, bạn hỏi cô tên gì chứ mình nhiều lắm', '', 41),
('thích làm gì', 'Mình thích làm những thứ người khác không thích làm', '', 42),
('thích gì', 'Mình thích làm những thứ người khác không thích làm', '', 43),
('thích nghe nhạc gì', 'Thích nghe bài nào càng buồn càng tốt', '', 44),
('nghe nhạc gì', 'Thích nghe bài nào càng buồn càng tốt', '', 45),
('gửi nhạc', 'Tui hay nghe mấy bài của Andiez, Chillies, với của Vũ nữa bạn lên youtube search đi kaka', '', 46),
('đẹp trai', 'Èo không biết nhưng mà tui thấy tui là số 1 haha', '', 47),
('đẹp gái', 'Èo không biết nhưng mà tui thấy tui là số 1 haha', '', 48),
('xinh gái', 'Èo không biết nhưng mà tui thấy tui là số 1 haha', '', 49),
('xinh đẹp', 'Èo không biết nhưng mà tui thấy tui là số 1 haha', '', 50),
('dễ thương', 'Èo không biết nhưng mà tui thấy tui là số 1 haha', '', 51),
('đáng iu', 'Èo không biết nhưng mà tui thấy tui là số 1 haha', '', 52),
('hihi', 'Èo nghe cười mà mắc ghét chưa kìa', '', 53),
('haha', 'Èo nghe cười mà mắc ghét chưa kìa', '', 54),
('hehe', 'Èo nghe cười mà mắc ghét chưa kìa', '', 55),
('kk', 'Èo nghe cười mà mắc ghét chưa kìa', '', 56),
('hh', 'Èo nghe cười mà mắc ghét chưa kìa', '', 57),
('buồn quá', 'Sao vậy nè kể ad nghe xem nào :vv', '', 58),
('hix', 'Sao vậy nè kể ad nghe xem nào :vv', '', 59),
('hic', 'Sao vậy nè kể ad nghe xem nào :vv', '', 60),
('hát đi', 'Em on tóp không phải tren đing, không phải du túp không phải trên ding.\nEm on top em ở trên anh, bích tua li vơ tráp người ta gọi tên anh.\nBích xi ty bích xi ty boi.\n#RapperNamz', '', 61),
('hát nghe', 'Em on tóp không phải tren đing, không phải du túp không phải trên ding.\nEm on top em ở trên anh, bích tua li vơ tráp người ta gọi tên anh.\nBích xi ty bích xi ty boi.\n#RapperNamz', '', 62),
('bot được ai tạo', 'Tui được Nam siêu cấp vjp pro tạo ra nhé :vv', '', 63),
('bạn do ai tạo', 'Tui được Nam siêu cấp vjp pro tạo ra nhé :vv', '', 64),
('bot do ai tạo', 'Tui được Nam siêu cấp vjp pro tạo ra nhé :vv', '', 65),
('xin lỗi', 'Không xin lỗi gì hết phạt 5 trịu :>', '', 66),
('sorry', 'Không xin lỗi gì hết phạt 5 trịu :>', '', 67),
('cin lỗi', 'Không xin lỗi gì hết phạt 5 trịu :>', '', 68),
('are you ok', 'Ông định xàm què quá', '', 69),
('hdsd', 'Để dùng bot hãy làm theo các bước\nBước 1: Nhắn tin \"Bắt đầu\".\nBước 2: Click vào button để nhận các thông tin\nBước 3: Để lấy thông tin danh sách Bot font hỗ trợ nhắn tin\n\"Danh sách font\" hoặc \"List font\" để nhận danh sách font\nBước 4: Sau khi nhận được list nếu bạn cần font nào trong list ấy\nthì nhắn tin theo ví dụ.\nNếu bạn cần font NVN Parka thì gửi\n \"Bot ơi gửi tôi font NVN Parka\"\nNgay lập tức bot sẽ gửi font cho bạn.\n\nBạn cũng có thể đặt những câu hỏi khác với bot nhé\nVì bot thông minh lắm ahaha\n\nĐừng quên cảm ơn và like page để ủng hộ NVN FONT ngày càng phát triển nhé\n#NVNFONT', '', 70),
('hướng dẫn sử dụng', 'Để dùng bot hãy làm theo các bước\nBước 1: Nhắn tin \"Bắt đầu\".\nBước 2: Click vào button để nhận các thông tin\nBước 3: Để lấy thông tin danh sách Bot font hỗ trợ nhắn tin\n\"Danh sách font\" hoặc \"List font\" để nhận danh sách font\nBước 4: Sau khi nhận được list nếu bạn cần font nào trong list ấy\nthì nhắn tin theo ví dụ.\nNếu bạn cần font NVN Parka thì gửi\n \"Bot ơi gửi tôi font NVN Parka\"\nNgay lập tức bot sẽ gửi font cho bạn.\n\nBạn cũng có thể đặt những câu hỏi khác với bot nhé\nVì bot thông minh lắm ahaha\n\nĐừng quên cảm ơn và like page để ủng hộ NVN FONT ngày càng phát triển nhé\n#NVNFONT', '', 71),
('dùng như thế nào', 'Để dùng bot hãy làm theo các bước\nBước 1: Nhắn tin \"Bắt đầu\".\nBước 2: Click vào button để nhận các thông tin\nBước 3: Để lấy thông tin danh sách Bot font hỗ trợ nhắn tin\n\"Danh sách font\" hoặc \"List font\" để nhận danh sách font\nBước 4: Sau khi nhận được list nếu bạn cần font nào trong list ấy\nthì nhắn tin theo ví dụ.\nNếu bạn cần font NVN Parka thì gửi\n \"Bot ơi gửi tôi font NVN Parka\"\nNgay lập tức bot sẽ gửi font cho bạn.\n\nBạn cũng có thể đặt những câu hỏi khác với bot nhé\nVì bot thông minh lắm ahaha\n\nĐừng quên cảm ơn và like page để ủng hộ NVN FONT ngày càng phát triển nhé\n#NVNFONT', '', 72),
('dùng làm sao', 'Để dùng bot hãy làm theo các bước\nBước 1: Nhắn tin \"Bắt đầu\".\nBước 2: Click vào button để nhận các thông tin\nBước 3: Để lấy thông tin danh sách Bot font hỗ trợ nhắn tin\n\"Danh sách font\" hoặc \"List font\" để nhận danh sách font\nBước 4: Sau khi nhận được list nếu bạn cần font nào trong list ấy\nthì nhắn tin theo ví dụ.\nNếu bạn cần font NVN Parka thì gửi\n \"Bot ơi gửi tôi font NVN Parka\"\nNgay lập tức bot sẽ gửi font cho bạn.\n\nBạn cũng có thể đặt những câu hỏi khác với bot nhé\nVì bot thông minh lắm ahaha\n\nĐừng quên cảm ơn và like page để ủng hộ NVN FONT ngày càng phát triển nhé\n#NVNFONT', '', 73),
('tư vấn', 'Để dùng bot hãy làm theo các bước\nBước 1: Nhắn tin \"Bắt đầu\".\nBước 2: Click vào button để nhận các thông tin\nBước 3: Để lấy thông tin danh sách Bot font hỗ trợ nhắn tin\n\"Danh sách font\" hoặc \"List font\" để nhận danh sách font\nBước 4: Sau khi nhận được list nếu bạn cần font nào trong list ấy\nthì nhắn tin theo ví dụ.\nNếu bạn cần font NVN Parka thì gửi\n \"Bot ơi gửi tôi font NVN Parka\"\nNgay lập tức bot sẽ gửi font cho bạn.\n\nBạn cũng có thể đặt những câu hỏi khác với bot nhé\nVì bot thông minh lắm ahaha\n\nĐừng quên cảm ơn và like page để ủng hộ NVN FONT ngày càng phát triển nhé\n#NVNFONT', '', 74),
('ngu vậy', 'Ủa mắc chi chửi tui, bạn bị khùng à.', '', 75),
('đần vậy', 'Ủa mắc chi chửi tui, bạn bị khùng à.', '', 76),
('ngốc vậy', 'Ủa mắc chi chửi tui, bạn bị khùng à.', '', 77),
('ngu quá', 'Ủa mắc chi chửi tui, bạn bị khùng à.', '', 78),
('đần quá', 'Ủa mắc chi chửi tui, bạn bị khùng à.', '', 79),
('ngốc quá', 'Ủa mắc chi chửi tui, bạn bị khùng à.', '', 80),
('all font', 'Sao bạn khôn thế trời', '', 81),
('gửi all', 'Sao bạn khôn thế trời', '', 82),
('chúc ad', 'Cảm ơn bạn nhé, chúc bạn điều bạn chúc cũng xảy ra với bạn nha', '', 83),
('chúc bot', 'Cảm ơn bạn nhé, chúc bạn điều bạn chúc cũng xảy ra với bạn nha', '', 84),
('bot ăn', 'Mình chạy bằng điện bạn à :vv, nên là mình ăn điện 24/24 nha', '', 85),
('ad ăn', 'Mình chạy bằng điện bạn à :vv, nên là mình ăn điện 24/24 nha', '', 86),
('ăn rồi', 'Mình hỏi cho vui đấy ???, kệ bạn :vv', '', 87),
('ăn chưa', 'Mình hỏi cho vui đấy ???, kệ bạn :vv', '', 88),
('ăn rồi', 'Mình hỏi cho vui đấy ???, kệ bạn :vv', '', 89),
('ăn cơm rồi', 'Mình hỏi cho vui đấy ???, kệ bạn :vv', '', 90),
('crush có thích', 'Ai mà biết trời đi hỏi crush đi', '', 91),
('crush thích', 'Ai mà biết trời đi hỏi crush đi', '', 92),
('làm sao có người yêu', 'Đi mà kiếm ngồi đấy mà hỏi tui không biết đâu :))', '', 93),
('kiếm người yêu', 'Đi mà kiếm ngồi đấy mà hỏi tui không biết đâu :))', '', 94),
('kiếm bồ', 'Đi mà kiếm ngồi đấy mà hỏi tui không biết đâu :))', '', 95),
('mình khỏe', 'Hehe tuyệt quá :v ', '', 96),
('minh ổn', 'Hehe tuyệt quá :v ', '', 97),
('mình bình thường', 'Hehe tuyệt quá :v ', '', 98),
('mình nhọc', 'Hehe tuyệt quá :v ', '', 99),
('mình ốm', 'Hehe tuyệt quá :v ', '', 100),
('mình không khỏe', 'Vậy bạn nên nghỉ ngơi đi nha ??', '', 101),
('mình ốm', 'Vậy bạn nên nghỉ ngơi đi nha ??', '', 102),
('mình mệt', 'Vậy bạn nên nghỉ ngơi đi nha ??', '', 103),
('mình đau', 'Vậy bạn nên nghỉ ngơi đi nha ??', '', 104),
('khoẻ không', 'Mình luôn khỏe để giúp mọi người nè. Bạn khỏe không ? ( trả lời xưng mình đi để mình còn hiểu) :v', '', 105),
('sức khỏe', 'Mình luôn khỏe để giúp mọi người nè. Bạn khỏe không ? ( trả lời xưng mình đi để mình còn hiểu) :v', '', 106),
('khỏe hông', 'Mình luôn khỏe để giúp mọi người nè. Bạn khỏe không ? ( trả lời xưng mình đi để mình còn hiểu) :v', '', 107),
('chị hạ', 'Chị Hạ hả, đây là chị của tui này, mặc dù tui chưa gặp lần nào nhưng mà tui rất là quý chị, và chắc chắn chị rất xịn rồi. Tui là một người ít nói và sống kiểu nội tâm. Nên là tui ít khi nói chuyện của tui cho người khác lắm. \nNhưng mà nói chuyện với chị nó lạ lắm, có thể kể được hết chuyênn khó nói của mình ra mà không sợ bị chửi ngu như những người bạn trước kia của tui. Nếu mà chị đanh nhắn với con bot này thì em muốn nói là, \n\"Cảm ơn chị rất là nhiều suốt thời gian vừa qua đã giúp em nhiều thứ. Và chúc chị sớm mang rể về cho mẹ chị nha :v\"', 'https://tinyurl.com/44s6k997', 108),
('canva', 'Chào bạn để tham gia vui lòng tạo tài khoản canva sau đó click vào link này rồi ấn tham gia nhé: \nLink tham gia: https://by.com.vn/Canva-NVNFONT', '', 109);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listfont`
--

CREATE TABLE `listfont` (
  `id` int(11) NOT NULL,
  `list` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `listfont`
--

INSERT INTO `listfont` (`id`, `list`) VALUES
(1, 'NVN Vintage\n\nNVN Neography\n\nNVN Excellent Display\n\nNVN Astonia\n\nNVN Funky Signature\n\nNVN Hillstown\n\nNVN Cut Along\n\nNVN Helvetica\n\nNVN Futura\n\nNVN Parka\n\nNVN Aviorte\n\nNVN Argue\n\nNVN Cameo Sweet\n\nNVN Yellost\n\nNVN Cocogoose Vintage\n\nNVN Birdfly Regular\n\nNVN Bros Bear\n\nNVN Delirian Script\n\nNVN Bordemile\n\nNVN Billionthine\n\nNVN Borensa\n\nNVN Solange\n\nNVN Kingdrops\n\nNVN Black Mango\n\nNVN Controwell Script\n\nNVN Padlock\n\nNVN Azkia\n\nNVN Canopee\n\nNVN Sivellin\n\nNVN Hess Old Style RR\n\nNVN Encorpada Classic\n\nNVN Priori Sans OT\n\nNVN Thirsk\n\nNVN Nadianne Pro\n\nNVN Marseille Vintage\n\n'),
(2, 'NVN Frastha\n\nNVN Excellent Signature\n\nNVN Heykido\n\nNVN Boston Angel\n\nNVN Rockyeah Brush\n\nNVN Cordelia\n\nNVN KENJO\n\nNVN Bon Foyage\n\nNVN Motherland Signature\n\nNVN Tabac Glam G1\n\nNVN Space Galaxy\n\nNVN Erotique\n\nNVN Midnight Tales\n\nNVN Ametis Font\n\nNVN Quinzey\n\nNVN Swashington CP\n\nNVN Apollonius\n\nNVN Vicky Christina\n\nNVN Al Fresco\n\nNVN Maria\n\nNVN Bellerose\n\nNVN Overdrive Sunset\n\nNVN Gladiola\n\nNVN Beauty Nigella\n\nNVN Buinton\n\nNVN Novelia Pro A\n\nNVN Gladifilthefte\n\nNVN Allright\n\nNVN Signature 2\n\nNVN Lazy Ride Script\n\nNVN Wonder Shine\n\nNVN Go Around The Books\n\nNVN Kashima Brush\n\nNVN Operetta12\n\nNVN Square Slabserif 71\n\n'),
(3, 'NVN Little Princess\n\nNVN Verdana 8pt\n\nNVN The Tide\n\nNVN My Everything\n\nNVN Crowlen\n\nNVN Cutive Mono\n\nNVN Joshico\n\nNVN Dom Loves Mary Pro\n\nNVN Milko Denilo\n\nNVN DENSA\n\nNVN ROYAL\n\nNVN Geminian Script\n\nNVN Humble Hearts\n\nNVN Milotte\n\nNVN AMETIST 2\n\nNVN Helmswald Post\n\nNVN Space Quest\n\nNVN Anaximander Rough\n\nNVN Funboo\n\nNVN Bubble Jelly\n\nNVN Winslow Book\n\nNVN Daikon\n\nNVN CHINA FAD\n\nNVN PARNAS\n\nNVN Megatype\n\nNVN Pincoya\n\nNVN Concepts\n\nNVN Plain Jane\n\nNVN Northland\n\nNVN Knightorns\n\nNVN RopStone\n\nNVN Gorgeous\n\nNVN The Suster\n\nNVN Montereal\n\nNVN Greek Stone\n\n'),
(4, 'NVN Amalfi Coast\n\nNVN Brush Well\n\nNVN Brush Well\n\nPack share 2020\n\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nvnfont`
--

CREATE TABLE `nvnfont` (
  `name` text COLLATE utf8_unicode_ci,
  `key` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `message` longtext COLLATE utf8_unicode_ci,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `nvnfont`
--

INSERT INTO `nvnfont` (`name`, `key`, `link`, `image`, `message`, `id`) VALUES
('NVN Vintage', 'vintage', 'https://tinyurl.com/NVNVintAge', 'https://bit.ly/31R2TgJ', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 1),
('NVN Neography', 'neography', 'https://tinyurl.com/NVN-Neography', 'https://bit.ly/3yxy0cM', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 2),
('NVN Excellent Display', 'excellent', 'https://by.com.vn/NVN-Excellent', 'https://bit.ly/3pWZZik', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 3),
('NVN Astonia', 'astonia', 'https://by.com.vn/NVN-Astonia', 'https://bit.ly/3siaU9i', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 4),
('NVN Funky Signature', 'funky', 'https://by.com.vn/NVN-Funky', 'https://bit.ly/3GK9lEU', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 5),
('NVN Hillstown', 'hillstown', 'https://by.com.vn/NVNHillstown', 'https://bit.ly/321ORc6', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 6),
('NVN Cut Along', 'cut along', 'https://by.com.vn/NVN-CutAlong-', 'https://bit.ly/3224DDp', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 7),
('NVN Helvetica', 'helvetica', 'https://tinyurl.com/NVN-Helvetica', 'https://bit.ly/3IVUQzS', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 8),
('NVN Futura', 'futura', 'https://tinyurl.com/NVN-Futura', 'https://bit.ly/3IVUQzS', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 9),
('NVN Parka', 'parka', 'https://by.com.vn/NVNParka-Dl', 'https://bit.ly/3s2Bpzk', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 10),
('NVN Aviorte', 'aviorte', 'https://by.com.vn/NVN-Aviorte', 'https://bit.ly/3oZ9LBn', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 11),
('NVN Argue', 'argue', 'https://by.com.vn/NVN-Argue', 'https://bit.ly/3IVLwMo', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 12),
('NVN Cameo Sweet', 'cameo sweet', 'https://by.com.vn/NVN-CameoSweet', 'https://tinyurl.com/yc7ncv9y', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 13),
('NVN Yellost', 'yellost', 'http://tinyurl.com/NVN-Yellost', 'https://bit.ly/3J0fbUF', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 14),
('NVN Cocogoose Vintage', 'cocogoose', 'tinyurl.com/NVN-Cocogoose-Vintage', 'https://bit.ly/3q779Rb', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 15),
('NVN Birdfly Regular', 'birdfly', 'https://by.com.vn/NVN-Birdfly', 'https://bit.ly/325Sv4A', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 16),
('NVN Bros Bear', 'bros bear', 'https://by.com.vn/NVN-Bros-Bear', 'https://bit.ly/3yDJb3U', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 17),
('NVN Delirian Script', 'delirian', 'https://tinyurl.com/NVN-Delirian-Script', 'https://tinyurl.com/2p893szt', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 18),
('NVN Bordemile', 'bordemile', 'https://tinyurl.com/NVN-Bordemile', 'https://tinyurl.com/2p8cb8hj', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 19),
('NVN Billionthine', 'billionthine', 'https://tinyurl.com/NVN-Billionthine', 'https://tinyurl.com/bdz74nep', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 20),
('NVN Borensa', 'borensa', 'https://tinyurl.com/NVN-Borensa', 'https://tinyurl.com/ybczwnxt', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 21),
('NVN Solange', 'solange', 'https://bitly.com.vn/btcov0', 'https://tinyurl.com/3v3jc7ew', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 22),
('NVN Kingdrops', 'kingdrops', 'https://tinyurl.com/NVN-KingdropsEdit', 'https://tinyurl.com/ytx27s4m', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 23),
('NVN Black Mango', 'black mango', 'https://tinyurl.com/NVN-Black-Mango', 'https://tinyurl.com/ywkutcp7', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 24),
('NVN Controwell Script', 'controwell', 'https://tinyurl.com/NVN-Controwell-Script', 'https://tinyurl.com/ycb9cnez', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 25),
('NVN Padlock', 'padlock', 'https://tinyurl.com/NVN-Padlock', 'https://tinyurl.com/hw9783tw', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 26),
('NVN Azkia', 'azkia', 'https://tinyurl.com/NVN-AzkiaEdit', 'https://tinyurl.com/mr8fpkwe', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 27),
('NVN Canopee', 'canopee', 'https://tinyurl.com/NVN-Canopee', 'https://tinyurl.com/2p8uwzwa', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 28),
('NVN Sivellin', 'sivellin', 'https://tinyurl.com/NVN-Sivellin', 'https://tinyurl.com/bdbukp46', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 29),
('NVN Hess Old Style RR', 'hess old', 'https://by.com.vn/5orY8N', 'https://tinyurl.com/2p8w2dtn', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 30),
('NVN Encorpada Classic', 'encorpada', 'https://by.com.vn/VY3YaT', 'https://tinyurl.com/bdda5kvd', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 31),
('NVN Priori Sans OT', 'priori', 'https://tinyurl.com/4zybh9z2', 'https://tinyurl.com/38uv9z85', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 32),
('NVN Thirsk', 'thirsk', 'https://tinyurl.com/NVN-Thirsk', 'https://tinyurl.com/4t4c5md4', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 33),
('NVN Nadianne Pro', 'nadianne pro', 'https://tinyurl.com/NVN-Nadianne-Pro', 'https://tinyurl.com/2p8m9uj9', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 34),
('NVN Marseille Vintage', 'marseille', 'https://tinyurl.com/NVN-Marseille-Vintage', 'https://tinyurl.com/2p983ntd', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 35),
('NVN Frastha', 'frastha', 'https://tinyurl.com/NVN-Frastha', 'https://tinyurl.com/ycktfz65', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 36),
('NVN Excellent Signature', 'excellent', 'https://tinyurl.com/NVNExcellent-Signature', 'https://tinyurl.com/y7ruvjwj', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 37),
('NVN Heykido', 'heykido', 'https://tinyurl.com/NVN-Heykido', 'https://tinyurl.com/yckjwur3', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 38),
('NVN Boston Angel', 'boston', 'https://tinyurl.com/NVN-Boston-Angel', 'https://tinyurl.com/5adjf5um', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 39),
('NVN Rockyeah Brush', 'rockyeah', 'https://tinyurl.com/NVN-Rockyeah', 'https://tinyurl.com/5adxhv9d', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 40),
('NVN Cordelia', 'cordelia', 'https://tinyurl.com/NVN-Cordelia', 'https://tinyurl.com/cx84kw9j', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 41),
('NVN KENJO', 'kenjo', 'https://tinyurl.com/NVN-KENJO', 'https://tinyurl.com/49ft7unn', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 42),
('NVN Bon Foyage', 'bon foyage', 'https://tinyurl.com/NVN-Bon-Foyage', 'https://tinyurl.com/yxcdxamc', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 43),
('NVN Motherland Signature', 'motherland', 'https://tinyurl.com/NVN-Motherland', 'https://tinyurl.com/2p8hvea3', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 44),
('NVN Tabac Glam G1', 'tabac', 'https://tinyurl.com/NVN-Tabac-Glam-G1', 'https://tinyurl.com/2y9ds8nz', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 45),
('NVN Space Galaxy', 'space galaxy', 'https://tinyurl.com/NVN-Space-Galaxy', 'https://tinyurl.com/2s4httjw', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 46),
('NVN Erotique', 'erotique', 'https://tinyurl.com/yejxpt55', 'https://tinyurl.com/mt2vzpe5', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 47),
('NVN Midnight Tales', 'midnight tales', 'https://tinyurl.com/8hc8trma', 'https://tinyurl.com/yp9kxctr', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 48),
('NVN Ametis Font', 'ametis font', 'https://tinyurl.com/NVN-Ametis', 'https://tinyurl.com/2p8ttbf5', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 49),
('NVN Quinzey', 'quinzey', 'https://tinyurl.com/NVN-Quinzey', 'https://tinyurl.com/t984zzna', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 50),
('NVN Swashington CP', 'swashington', 'https://tinyurl.com/NVN-SWASHINGTON-CP', 'https://tinyurl.com/4fbk84sm', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 51),
('NVN Apollonius', 'apollonius', 'https://tinyurl.com/NVN-Apollonius', 'https://tinyurl.com/58d8bjcb', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 52),
('NVN Vicky Christina', 'vicky', 'https://tinyurl.com/NVN-Vicky-Christina', 'https://tinyurl.com/4fy7wpcy', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 53),
('NVN Al Fresco', 'al fresco', 'https://tinyurl.com/NVN-Al-Fresco', 'https://tinyurl.com/atpwbcfe', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 54),
('NVN Maria', 'maria', 'https://tinyurl.com/NVN-Maria', 'https://tinyurl.com/527r6ajx', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 55),
('NVN Bellerose', 'bellerose', 'https://tinyurl.com/NVN-Bellerose', 'https://tinyurl.com/2p994rtk', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 56),
('NVN Overdrive Sunset', 'overdrive', 'https://tinyurl.com/NVN-Overdrive-Sunset', 'https://tinyurl.com/2p8cuaum', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 57),
('NVN Gladiola', 'gladiola', 'https://tinyurl.com/NVN-GladiolaEdit', 'https://tinyurl.com/yckw3ecs', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 58),
('NVN Beauty Nigella', 'beauty nigella', 'https://tinyurl.com/mw7t3zd8', 'https://tinyurl.com/2uy88sfc', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 59),
('NVN Buinton', 'buinton', 'https://tinyurl.com/bp6cnrs7', 'https://tinyurl.com/fejmtvf3', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 60),
('NVN Novelia Pro A', 'novelia pro a', 'https://tinyurl.com/2p8m74sa', 'https://tinyurl.com/229upeus', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 61),
('NVN Gladifilthefte', 'gladifilthefte', 'https://tinyurl.com/NVN-Gladifilthefte', 'https://tinyurl.com/yxusch6v', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 62),
('NVN Allright', 'allright', 'https://tinyurl.com/2p8m74sa', 'https://tinyurl.com/47yuc4r6', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 63),
('NVN Signature 2', 'signature 2', 'https://tinyurl.com/yf9368w3', 'https://tinyurl.com/2p8mvprp', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 64),
('NVN Lazy Ride Script', 'lazy ride', 'https://tinyurl.com/hnh762r4', 'https://tinyurl.com/mryswbwx', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 65),
('NVN Wonder Shine', 'wonder shine', 'https://tinyurl.com/NVN-Wonder-Shine1', 'https://tinyurl.com/m5bwjzu8', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 66),
('NVN Go Around The Books', 'go around the books', 'https://tinyurl.com/NVN-Go-around-the-book', 'https://tinyurl.com/4jvv8kz2', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 67),
('NVN Kashima Brush', 'kashima brush', 'https://tinyurl.com/2p8s6nwn', 'https://tinyurl.com/2p9xmh2h', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 68),
('NVN Operetta12', 'operetta12', 'https://tinyurl.com/ykbuubw5', 'https://tinyurl.com/ykbuubw5', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 69),
('NVN Square Slabserif 71', 'square slabserif', 'https://tinyurl.com/2574mmdy', 'https://tinyurl.com/ycxz7sk3', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 70),
('NVN Little Princess', 'little princess', 'https://tinyurl.com/NVN-Little-Princess', 'https://tinyurl.com/ycktr3ey', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 71),
('NVN Verdana 8pt', 'verdana 8pt', 'https://tinyurl.com/NVN-PixelFJVerdana8pt', 'https://tinyurl.com/4ancnkb8', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 72),
('NVN The Tide', 'the tide', 'https://tinyurl.com/NVN-The-Tide', 'https://tinyurl.com/54ef4cc6', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 73),
('NVN My Everything', 'my everything', 'https://tinyurl.com/NVN-My-Everything', 'https://tinyurl.com/yj22psxu', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 74),
('NVN Crowlen', 'crowlen', 'https://tinyurl.com/NVN-CrowlenEdit', 'https://tinyurl.com/2p8uu732', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 75),
('NVN Cutive Mono', 'cutive mon', 'https://tinyurl.com/NVN-CutiveMono1', 'https://tinyurl.com/bdhpnsbj', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 76),
('NVN Joshico', 'joshico', 'https://tinyurl.com/NVN-JoshicoEdit', 'https://tinyurl.com/yfsb6a4n', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 77),
('NVN Dom Loves Mary Pro', 'dom loves', 'https://tinyurl.com/NVN-Dom-Loves-Mary-Pro', 'https://tinyurl.com/j9d3d388', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 78),
('NVN Milko Denilo', 'milko denilo', 'https://tinyurl.com/NVN-MilkoDenilo1', 'https://tinyurl.com/2datww5k', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 79),
('NVN DENSA', 'densa', 'https://tinyurl.com/NVN-DENSA1', 'https://tinyurl.com/yjn2yzr4', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 80),
('NVN ROYAL', 'nvn royal', 'https://tinyurl.com/2p8m2cfk', 'https://tinyurl.com/NVN-RoyalPro', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 81),
('NVN Geminian Script', 'geminian', 'https://tinyurl.com/NVN-Geminian', 'https://tinyurl.com/mrydvmst', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 82),
('NVN Humble Hearts', 'humble hearts', 'https://tinyurl.com/NVN-Humble-Heart', 'https://tinyurl.com/mry78nxu', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 83),
('NVN Milotte', 'milotte', 'https://tinyurl.com/NVN-MilottePro', 'https://tinyurl.com/2p8en9ch', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 84),
('NVN AMETIST 2', 'nvn ametist 2', 'https://tinyurl.com/NVN-AMETIST', 'https://tinyurl.com/2p8j99fw', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 85),
('NVN Helmswald Post', 'helmswald', 'https://tinyurl.com/NVN-HelmswaldPost1', 'https://tinyurl.com/2p8dxsk4', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 86),
('NVN Space Quest', 'space quest', 'https://tinyurl.com/NVN-Space-Quest', 'https://tinyurl.com/mcsxc8nv', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 87),
('NVN Anaximander Rough', 'anaximander rough', 'https://tinyurl.com/NVN-Anaximander', 'https://tinyurl.com/y5v4ra4b', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 88),
('NVN Funboo', 'nvn funboo', 'https://tinyurl.com/NVN-Funboo', 'https://tinyurl.com/ssx2rdh3', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 89),
('NVN Bubble Jelly', 'bubble jelly', 'https://tinyurl.com/NVN-Bubble-Jelly', 'https://tinyurl.com/ysx4abju', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 90),
('NVN Winslow Book', 'winslow book', 'https://tinyurl.com/NVN-Winslow-Book', 'https://tinyurl.com/2p92hdwd', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 91),
('NVN Daikon', 'daikon', 'https://tinyurl.com/NVN-Daikon', 'https://tinyurl.com/4hjkj2tt', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 92),
('NVN CHINA FAD', 'china fad', 'https://tinyurl.com/NVN-CHINA-FAD', 'https://tinyurl.com/55dd654k', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 93),
('NVN PARNAS', 'parnas', 'https://tinyurl.com/NVN-PARNAS', 'https://tinyurl.com/3368am4y', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 94),
('NVN Megatype', 'megatype', 'https://tinyurl.com/NVN-Megatype', 'https://tinyurl.com/4kkhzvac', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 95),
('NVN Pincoya', 'pincoya', 'https://tinyurl.com/NVN-Pincoya', 'https://tinyurl.com/3pfumh77', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 96),
('NVN Concepts', 'concepts', 'https://tinyurl.com/NVN-Concepts', 'https://tinyurl.com/4xyntfz3', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 97),
('NVN Plain Jane', 'plain jane', 'https://tinyurl.com/NVN-Plain-Jane', 'https://tinyurl.com/33eu5wj8', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 98),
('NVN Northland', 'northland', 'https://tinyurl.com/NVN-SouthLand', 'https://tinyurl.com/yckwfspe', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 99),
('NVN Knightorns', 'knightorns', 'https://tinyurl.com/2vyu26hp', 'https://tinyurl.com/3dv2z8p3', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 100),
('NVN RopStone', 'ropstone', 'https://tinyurl.com/NVN-RopStone', 'https://tinyurl.com/5x3ee5b7', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 101),
('NVN Gorgeous', 'gorgeous', 'https://tinyurl.com/NVN-Gorgeous', 'https://tinyurl.com/4vk2u7xw', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 102),
('NVN The Suster', 'the suster', 'https://tinyurl.com/NVN-The-Suster', 'https://tinyurl.com/5xyjteeu', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 103),
('NVN Montereal', 'montereal', 'https://tinyurl.com/NVN-Montereal', 'https://tinyurl.com/2hrrcb4h', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 104),
('NVN Greek Stone', 'greek stone', 'https://tinyurl.com/NVN-GreekStone1', 'https://tinyurl.com/bddm6ct4', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 105),
('NVN Amalfi Coast', 'amalfi', 'https://by.com.vn/NVN-Amalfi-Coast', 'https://tinyurl.com/yck7j4jk', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 106),
('NVN Brush Well', 'brush well', 'https://by.com.vn/NVN-Brushwell', 'https://tinyurl.com/yckzdyev', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 107),
('NVN Brush Well', 'font mới', 'https://by.com.vn/NVN-Brushwell', 'https://tinyurl.com/yckzdyev', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 108),
('Pack share 2020', 'pack share 2020', 'https://tinyurl.com/y2dngowq', 'https://tinyurl.com/32j9t4en', 'Nếu bạn muốn xem list font hỗ trợ thì gửi tin nhắn\n\"Danh sách font hỗ trợ\" ', 109);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banacount`
--
ALTER TABLE `banacount`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `psid` (`psid`) USING BTREE;

--
-- Chỉ mục cho bảng `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `listfont`
--
ALTER TABLE `listfont`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nvnfont`
--
ALTER TABLE `nvnfont`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banacount`
--
ALTER TABLE `banacount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT cho bảng `listfont`
--
ALTER TABLE `listfont`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `nvnfont`
--
ALTER TABLE `nvnfont`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
