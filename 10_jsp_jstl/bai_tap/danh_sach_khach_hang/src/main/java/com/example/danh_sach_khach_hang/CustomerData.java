package com.example.danh_sach_khach_hang;

import java.util.ArrayList;
import java.util.List;

public class CustomerData {

    public static List<Customer> customerList=new ArrayList<>();
    static {
        customerList.add(new Customer("Mai Van THuan","2003-10-31","Da nang",
                "https://kynguyenlamdep.com/wp-content/uploads/2022/06/avatar-cute-meo-con-than-chet-700x695.jpg"));
        customerList.add(new Customer("Tran Le Hien Mai","2003-10-9","Dak Lak",
                "https://thuthuatnhanh.com/wp-content/uploads/2020/09/avatar-nu-cute-anime.jpg"));
        customerList.add(new Customer("Le Cong Minh An","2003-11-23","Da Nang",
                "https://phunugioi.com/wp-content/uploads/2020/01/anh-avatar-supreme-dep-lam-dai-dien-facebook.jpg"));
        customerList.add(new Customer("Tran Dang Khoa","1983-08-17","Ha Tay",
                "https://tophinhanh.com/wp-content/uploads/2021/12/hinh-anh-gai-xinh-nhat-the-gioi.jpg"));
        customerList.add(new Customer("Nguyen Dinh Thi","1983-08-19","Ha Noi",
                "https://tophinhanh.com/wp-content/uploads/2021/12/hinh-anh-gai-xinh-nhat-the-gioi.jpg"));
    }
}
