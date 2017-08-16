package Model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import Model.SanPham;

public class GioHang {

	/**
	 * Khi add sáº£n pháº©m vÃ o giá»� hÃ ng, thay Ä‘á»•i thuá»™c tÃ­nh soLuong
	 * trong sáº£n pháº©m thÃ nh 1 trÆ°á»›c khi add vÃ o.
	 */
	public static Map<String, ArrayList<SanPham>> gioHang = new HashMap<String, ArrayList<SanPham>>();
	public static ArrayList<SanPham> list = new ArrayList<SanPham>();

	/*
	 * CÃ¡c phÆ°Æ¡ng thá»©c xá»­ lÃ½ trÃªn giá»� hÃ ng
	 */
	public static boolean themSP(SanPham sp, String idSP) {
		khoiTaoGH(idSP);
		for (SanPham sanPham : gioHang.get(idSP)) {
			if (sanPham.getIdSP().equals(sp.getIdSP())) {
				return true;
			}
		}
		return gioHang.get(idSP).add(sp);
	}

	public static boolean xoaSP(SanPham sp, String idSP) {
		khoiTaoGH(idSP);
		for (SanPham sanPham : gioHang.get(idSP)) {
			if (sanPham.getIdSP().equals(sp.getIdSP())) {
				return gioHang.get(idSP).remove(sanPham);
			}
		}
		return false;
	}

	public static boolean suaSP(SanPham sp, int sl, String idSP) {
		if (sl > Funtion.getMaxSoLuongSP(idSP))
			return false;
		if (sl <= 0)
			return xoaSP(sp, idSP);
		for (SanPham sanPham : gioHang.get(idSP)) {
			if (sanPham.getIdSP().equals(sp.getIdSP())) {
				sanPham.setSoLuong(sl);
				return true;
			}
		}
		return false;
	}

	public static double getTongTien(String idSP) {
		double sum = 0;
		for (SanPham sp : gioHang.get(idSP)) {
			sum += (sp.getGia() - sp.getGia()) * sp.getSoLuong();
		}

		return sum;
	}

	public static void thanhToan(String idSP) {
		for (SanPham sp : gioHang.get(idSP)) {
			gioHang.get(idSP).remove(sp);
		}
	}

	/* Khá»Ÿi táº¡o giá»� hÃ ng */
	public static ArrayList<SanPham> khoiTaoGH(String idSP) {
		if (gioHang.containsKey(idSP)) {
			return gioHang.get(idSP);
		} else {
			gioHang.put(idSP, list);
			return gioHang.get(idSP);
		}
	}
}
