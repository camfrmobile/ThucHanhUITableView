//
//  Message.swift
//  ThucHanhUITableView
//
//  Created by Trần Văn Cam on 10/11/2022.
//

import Foundation

struct Message {
    var id: String
    var title: String
    var notification: String
    var imageName: String
    var dateTime: String
}

let datas = [
    ["NAPTHE_VT", "[TB] VIETTEL TẶNG 20% GIÁ TRỊ TẤT CẢ THẺ NẠP trong ngày 10/đc", "Hôm qua"],
    ["TGDD", "8929 la Ma xac nhan dung de dang nhap lịch su mua hang taiđc", "Hôm qua"],
    ["VinaPhone", "(TB) DATA KHỦNG MỖI NGÀY - GÓI CƯỚC HAY MỜI BẠN! Chỉ Cđc", "Hôm qua"],
    ["VIETTELPLUS", "Quy khach duoc cong them 47 diem Viettel++ boi giao dịch Tieuđc", "Thứ Ba"],
    ["888 888 888 888 888 888 888 888", "Goi cuoc MAXS (50000 d/thang,8 GB toc do cao) cua Quy khach dđc", "Thứ Hai"],
    ["ShopeePay", "911814 ma OTP ShopeePay se het han sau 5 phut). Luu y : tuyetđc", "Thứ Hai"],
    ["9345", "(TB) NHAN NGAY 1GB data toc do cao. Soan D5 gui 9345 chi 5.00đc", "Chủ Nhật"],
    ["BO TU PHÁP", "[TB] Hưởng ứng Ngày Pháp luật nước Cộng hòa Xã hội Chủ nghĩađc", "Chủ Nhật"],
    ["VinlD.net", "Ma OTP cua quy khach tren VinID la 246276. Khong cung cap mađc", "Thứ Bảy"],
    ["VIETTEL_HN", "[QC] Co hoi TRUNG Tivi Samsung 4K 55 Samsung Galaxy Tab A8đc", "Thứ Sáu"],
    ["Facebook", "360430 là mã đăng nhập Facebook của bạn.", "Thứ Năm"],
    ["CATP_HaNoi", "[TB] Thành phố Hà Nội mở đợt tổng rà soát, kiểm tra về PCCC đđc", "31/10/2022"],
    ["Apple", "Mã ID Apple của bạn là : 775197. Đừng chia sẻ mã này với bất kỳ ai.", "25/10/2022"],
    ["VNPT", "(TB) THÊM TIKTOK – GIÁ KHÔNG ĐỔI ! MIỄN PHÍ 100% DATA truyđc", "24/10/2022"],
    ["BO Y TE ", "[TB] BỘ Y TẾ KHUYẾN CÁO : 1. Để bảo vệ sức khoẻ của mình,đc ", "06/08/2022 > "],
    ["CloudOTP", "Your Firebase App verification code is 855570 ", "04/08/2022 > "],
    ["MOMO", "Ban co 110.000D qua Nap Dien Thoại & 155.000D qua khác tronđc ", "31/07/2022"],
    ["VNM_TB", "[VNM TB] Quy khach dang su dung SIM SO DEP CAM KẾT cuađc ", "23/07/2022"],
    ["VNM_SODEP", "Quy khach dang su dung dịch vu sim so dep cua Vietnamobile. Heđc ", "15/07/2022"],
    ["PHARMACITY", "Pharmacity tang ban ma FO7FM17667 tri gia 50K khi muađc ", "08/07/2022"],
    ["ACB", "Quy khach vua huy dang kỵ nhan thong bao so du tu dong. Chi tietđc", "02/07/202"],
    ["BO_CONG_AN", "Khi phát hiện cháy cần bình tĩnh báo cho mọi người xung quanh b", "22/09/2022"],
    ["BO CONG AN", "[TB] Khi phát hiện cháy cần bình tĩnh báo cho mọi người xung quađc", "20/09/2022"],
    ["Techcombank", "The *0137 co GD khong thanh cong do the tam khoa. De mo khđc", "15/09/2022"],
    ["VUA NEM", "[QC]Ngay doi 9/9 SALE 50%+ Dong gia nem 9999K; dong giađc", "08/09/2022"],
    ["BrainCare", "Cam on ban Tran Van Cam ! BrainCare da nhan duoc so tien : đc ", "07/09/2022"],
    ["VTMONEY", "Thanh toan le phi xet tuyen khong kho, co Viettel Money lo : Giam n", "27/08/2022"],
    ["Microsoft", "Mã truy cập Microsoft : 7102", "24/08/2022"],
    ["MyVNPT", "061565 la ma xac nhan OTP MyVNPT cua ban. Vui long nhapđc", "22/10/2022"],
    ["Tiki.vn", "Tiki : Ma xac minh dang ky tai khoan cua ban la 603453. Ma cođc", "16/10/2022"],
    ["FE CREDIT", "(QC) Ban duoc FE CREDIT họ tro vay den 50 TRIEU VND voi LẠI Sđc", "11/10/2022"],
    ["BO TT&TT", "Chào mừng Ngày Chuyển đổi số quốc gia 10.10 và Tháng 10. Tháđc", "10/10/2022"],
    ["Google", "327220 là mã xác minh trên YouTube của bạn", "06/10/2022"],
    ["Telegram", "Telegram code : 78340", "03/10/2022"],
    ["TikTok", "[TikTok] Mã xác minh là 633037, có hiệu lực 5 phút.", "25/09/2022"]
]

func fakeData() -> [Message] {
    var messages: [Message] = []
    for i in 0..<datas.count {
        let msg = Message(id: UUID().uuidString, title: datas[i][0], notification: datas[i][1], imageName: "image-\(i+1)", dateTime: datas[i][2])
        messages.append(msg)
    }
    return messages
}
