package org.spongycastle.pqc.math.linearalgebra;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/linearalgebra/ByteUtils.class */
public final class ByteUtils {
    private static final char[] HEX_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    private ByteUtils() {
    }

    public static byte[] clone(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static byte[] concatenate(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static byte[] concatenate(byte[][] bArr) {
        int length = bArr[0].length;
        byte[] bArr2 = new byte[bArr.length * length];
        int i = 0;
        for (byte[] bArr3 : bArr) {
            System.arraycopy(bArr3, 0, bArr2, i, length);
            i += length;
        }
        return bArr2;
    }

    public static int deepHashCode(byte[] bArr) {
        int i = 1;
        for (byte b : bArr) {
            i = (i * 31) + b;
        }
        return i;
    }

    public static int deepHashCode(byte[][] bArr) {
        int i = 1;
        for (byte[] bArr2 : bArr) {
            i = (i * 31) + deepHashCode(bArr2);
        }
        return i;
    }

    public static int deepHashCode(byte[][][] bArr) {
        int i = 1;
        for (byte[][] bArr2 : bArr) {
            i = (i * 31) + deepHashCode(bArr2);
        }
        return i;
    }

    public static boolean equals(byte[] bArr, byte[] bArr2) {
        boolean z = false;
        if (bArr == null) {
            if (bArr2 == null) {
                z = true;
            }
            return z;
        } else if (bArr2 == null || bArr.length != bArr2.length) {
            return false;
        } else {
            boolean z2 = true;
            for (int length = bArr.length - 1; length >= 0; length--) {
                z2 &= bArr[length] == bArr2[length];
            }
            return z2;
        }
    }

    public static boolean equals(byte[][] bArr, byte[][] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        int length = bArr.length;
        boolean z = true;
        while (true) {
            length--;
            if (length < 0) {
                return z;
            }
            z &= equals(bArr[length], bArr2[length]);
        }
    }

    public static boolean equals(byte[][][] bArr, byte[][][] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        boolean z = true;
        for (int length = bArr.length - 1; length >= 0; length--) {
            if (bArr[length].length != bArr2[length].length) {
                return false;
            }
            for (int length2 = bArr[length].length - 1; length2 >= 0; length2--) {
                z &= equals(bArr[length][length2], bArr2[length][length2]);
            }
        }
        return z;
    }

    public static byte[] fromHexString(String str) {
        char[] charArray = str.toUpperCase().toCharArray();
        int i = 0;
        for (int i2 = 0; i2 < charArray.length; i2++) {
            if (charArray[i2] < '0' || charArray[i2] > '9') {
                i = i;
                if (charArray[i2] >= 'A') {
                    i = i;
                    if (charArray[i2] > 'F') {
                    }
                }
            }
            i++;
        }
        byte[] bArr = new byte[(i + 1) >> 1];
        int i3 = i & 1;
        for (int i4 = 0; i4 < charArray.length; i4++) {
            if (charArray[i4] < '0' || charArray[i4] > '9') {
                i3 = i3;
                if (charArray[i4] >= 'A') {
                    i3 = i3;
                    if (charArray[i4] <= 'F') {
                        int i5 = i3 >> 1;
                        bArr[i5] = (byte) (bArr[i5] << 4);
                        bArr[i5] = (byte) (bArr[i5] | ((charArray[i4] - 'A') + 10));
                    }
                }
            } else {
                int i6 = i3 >> 1;
                bArr[i6] = (byte) (bArr[i6] << 4);
                bArr[i6] = (byte) (bArr[i6] | (charArray[i4] - '0'));
            }
            i3++;
        }
        return bArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[][] split(byte[] r7, int r8) throws java.lang.ArrayIndexOutOfBoundsException {
        /*
            r0 = r8
            r1 = r7
            int r1 = r1.length
            if (r0 <= r1) goto L_0x000e
            java.lang.ArrayIndexOutOfBoundsException r0 = new java.lang.ArrayIndexOutOfBoundsException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x000e:
            r0 = 2
            byte[] r0 = new byte[r0]
            r9 = r0
            r0 = r9
            r1 = 0
            r2 = r8
            byte[] r2 = new byte[r2]
            r0[r1] = r2
            r0 = r9
            r1 = 1
            r2 = r7
            int r2 = r2.length
            r3 = r8
            int r2 = r2 - r3
            byte[] r2 = new byte[r2]
            r0[r1] = r2
            r0 = r7
            r1 = 0
            r2 = r9
            r3 = 0
            r2 = r2[r3]
            r3 = 0
            r4 = r8
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = 1
            r2 = r2[r3]
            r3 = 0
            r4 = r7
            int r4 = r4.length
            r5 = r8
            int r4 = r4 - r5
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.math.linearalgebra.ByteUtils.split(byte[], int):byte[][]");
    }

    public static byte[] subArray(byte[] bArr, int i) {
        return subArray(bArr, i, bArr.length);
    }

    public static byte[] subArray(byte[] bArr, int i, int i2) {
        int i3 = i2 - i;
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i, bArr2, 0, i3);
        return bArr2;
    }

    public static String toBinaryString(byte[] bArr) {
        String str = "";
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            for (int i2 = 0; i2 < 8; i2++) {
                str = str + ((b >>> i2) & 1);
            }
            if (i != bArr.length - 1) {
                str = str + " ";
            }
        }
        return str;
    }

    public static char[] toCharArray(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            cArr[i] = (char) bArr[i];
        }
        return cArr;
    }

    public static String toHexString(byte[] bArr) {
        String str = "";
        for (int i = 0; i < bArr.length; i++) {
            str = (str + HEX_CHARS[(bArr[i] >>> 4) & 15]) + HEX_CHARS[bArr[i] & 15];
        }
        return str;
    }

    public static String toHexString(byte[] bArr, String str, String str2) {
        String str3 = new String(str);
        for (int i = 0; i < bArr.length; i++) {
            String str4 = (str3 + HEX_CHARS[(bArr[i] >>> 4) & 15]) + HEX_CHARS[bArr[i] & 15];
            str3 = str4;
            if (i < bArr.length - 1) {
                str3 = str4 + str2;
            }
        }
        return str3;
    }

    public static byte[] xor(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length];
        for (int length = bArr.length - 1; length >= 0; length--) {
            bArr3[length] = (byte) (bArr[length] ^ bArr2[length]);
        }
        return bArr3;
    }
}
