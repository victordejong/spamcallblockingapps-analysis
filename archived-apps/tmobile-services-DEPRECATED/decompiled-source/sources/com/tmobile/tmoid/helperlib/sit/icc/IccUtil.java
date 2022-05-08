package com.tmobile.tmoid.helperlib.sit.icc;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/icc/IccUtil.class */
public class IccUtil {
    private IccUtil() {
    }

    /* renamed from: a */
    public static byte[] m4836a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    /* renamed from: b */
    public static int m4835b(int i) {
        return i * 2;
    }

    /* renamed from: c */
    public static String m4834c(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i = 0; i < bArr.length; i++) {
            sb.append("0123456789abcdef".charAt((bArr[i] >> 4) & 15));
            sb.append("0123456789abcdef".charAt(bArr[i] & 15));
        }
        return sb.toString();
    }

    /* renamed from: d */
    public static String m4833d(byte[] bArr, byte[] bArr2) {
        return m4834c(m4836a(m4836a(m4828i(bArr.length), bArr), m4836a(m4828i(bArr2.length), bArr2)));
    }

    /* renamed from: e */
    public static int m4832e(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        char c2 = 'A';
        if (c < 'A' || c > 'F') {
            c2 = 'a';
            if (c < 'a' || c > 'f') {
                throw new RuntimeException("invalid hex char '" + c + "'");
            }
        }
        return (c - c2) + 10;
    }

    /* renamed from: f */
    public static int m4831f(int i) {
        return i / 2;
    }

    /* renamed from: g */
    public static byte[] m4830g(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((m4832e(str.charAt(i)) << 4) | m4832e(str.charAt(i + 1)));
        }
        return bArr;
    }

    /* renamed from: h */
    public static int m4829h(String str) {
        return Integer.parseInt(str, 16);
    }

    /* renamed from: i */
    public static byte[] m4828i(int i) {
        return new byte[]{(byte) i};
    }
}
