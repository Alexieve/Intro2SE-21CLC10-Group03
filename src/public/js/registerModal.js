function attachModal(title, content, button){
    document.getElementById("modal2btnLabel").innerHTML = title;
    document.querySelector(".modal-body").innerHTML = content;
    document.getElementById("modalbtn2").innerHTML = button;
}

attachModal("Thông báo", "Đăng ký tài khoản thành công, chuyển đến trang đăng nhập.", "Xác nhận")

