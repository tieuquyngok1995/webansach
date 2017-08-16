package service;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5 {
	public static String getMD5(String pt) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");

			byte[] content = pt.getBytes();

			byte[] out = md.digest(content);

			BigInteger big = new BigInteger(1, out);

			return big.toString(16);

		} catch (NoSuchAlgorithmException ex) {
		}
		return null;
	}
}
