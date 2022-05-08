package org.spongycastle.pqc.crypto.xmss;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.spongycastle.crypto.Digest;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.encoders.Hex;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/XMSSUtil.class */
public class XMSSUtil {
    public static boolean areEqual(byte[][] bArr, byte[][] bArr2) {
        if (hasNullPointer(bArr) || hasNullPointer(bArr2)) {
            throw new NullPointerException("a or b == null");
        }
        for (int i = 0; i < bArr.length; i++) {
            if (!Arrays.areEqual(bArr[i], bArr2[i])) {
                return false;
            }
        }
        return true;
    }

    public static long bytesToXBigEndian(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new NullPointerException("in == null");
        }
        long j = 0;
        for (int i3 = i; i3 < i + i2; i3++) {
            j = (j << 8) | (bArr[i3] & 255);
        }
        return j;
    }

    public static int calculateTau(int i, int i2) {
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i4 >= i2) {
                break;
            } else if (((i >> i4) & 1) == 0) {
                i3 = i4;
                break;
            } else {
                i4++;
            }
        }
        return i3;
    }

    public static byte[] cloneArray(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("in == null");
        }
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = bArr[i];
        }
        return bArr2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[][] cloneArray(byte[][] r5) {
        /*
            r0 = r5
            boolean r0 = hasNullPointer(r0)
            if (r0 == 0) goto L_0x0011
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            r1 = r0
            java.lang.String r2 = "in has null pointers"
            r1.<init>(r2)
            throw r0
        L_0x0011:
            r0 = r5
            int r0 = r0.length
            byte[] r0 = new byte[r0]
            r6 = r0
            r0 = 0
            r7 = r0
        L_0x0019:
            r0 = r7
            r1 = r5
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0049
            r0 = r6
            r1 = r7
            r2 = r5
            r3 = r7
            r2 = r2[r3]
            int r2 = r2.length
            byte[] r2 = new byte[r2]
            r0[r1] = r2
            r0 = 0
            r8 = r0
        L_0x002a:
            r0 = r8
            r1 = r5
            r2 = r7
            r1 = r1[r2]
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0043
            r0 = r6
            r1 = r7
            r0 = r0[r1]
            r1 = r8
            r2 = r5
            r3 = r7
            r2 = r2[r3]
            r3 = r8
            r2 = r2[r3]
            byte r2 = (byte) r2
            r0[r1] = r2
            int r8 = r8 + 1
            goto L_0x002a
        L_0x0043:
            int r7 = r7 + 1
            goto L_0x0019
        L_0x0049:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.crypto.xmss.XMSSUtil.cloneArray(byte[][]):byte[][]");
    }

    public static void copyBytesAtOffset(byte[] bArr, byte[] bArr2, int i) {
        if (bArr == null) {
            throw new NullPointerException("dst == null");
        } else if (bArr2 == null) {
            throw new NullPointerException("src == null");
        } else if (i < 0) {
            throw new IllegalArgumentException("offset hast to be >= 0");
        } else if (bArr2.length + i > bArr.length) {
            throw new IllegalArgumentException("src length + offset must not be greater than size of destination");
        } else {
            for (int i2 = 0; i2 < bArr2.length; i2++) {
                bArr[i + i2] = bArr2[i2];
            }
        }
    }

    public static Object deserialize(byte[] bArr) throws IOException, ClassNotFoundException {
        return new ObjectInputStream(new ByteArrayInputStream(bArr)).readObject();
    }

    public static void dumpByteArray(byte[][] bArr) {
        if (hasNullPointer(bArr)) {
            throw new NullPointerException("x has null pointers");
        }
        for (byte[] bArr2 : bArr) {
            System.out.println(Hex.toHexString(bArr2));
        }
    }

    public static byte[] extractBytesAtOffset(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new NullPointerException("src == null");
        } else if (i < 0) {
            throw new IllegalArgumentException("offset hast to be >= 0");
        } else if (i2 < 0) {
            throw new IllegalArgumentException("length hast to be >= 0");
        } else if (i + i2 > bArr.length) {
            throw new IllegalArgumentException("offset + length must not be greater then size of source array");
        } else {
            byte[] bArr2 = new byte[i2];
            for (int i3 = 0; i3 < bArr2.length; i3++) {
                bArr2[i3] = bArr[i + i3];
            }
            return bArr2;
        }
    }

    public static int getDigestSize(Digest digest) {
        if (digest == null) {
            throw new NullPointerException("digest == null");
        }
        String algorithmName = digest.getAlgorithmName();
        if (algorithmName.equals("SHAKE128")) {
            return 32;
        }
        if (algorithmName.equals("SHAKE256")) {
            return 64;
        }
        return digest.getDigestSize();
    }

    public static int getLeafIndex(long j, int i) {
        return (int) (j & ((1 << i) - 1));
    }

    public static long getTreeIndex(long j, int i) {
        return j >> i;
    }

    public static boolean hasNullPointer(byte[][] bArr) {
        if (bArr == null) {
            return true;
        }
        for (byte[] bArr2 : bArr) {
            if (bArr2 == null) {
                return true;
            }
        }
        return false;
    }

    public static boolean isIndexValid(int i, long j) {
        if (j < 0) {
            throw new IllegalStateException("index must not be negative");
        }
        return j < (1 << i);
    }

    public static boolean isNewAuthenticationPathNeeded(long j, int i, int i2) {
        if (j == 0) {
            return false;
        }
        boolean z = true;
        if ((j + 1) % ((long) Math.pow(1 << i, i2)) != 0) {
            z = false;
        }
        return z;
    }

    public static boolean isNewBDSInitNeeded(long j, int i, int i2) {
        if (j == 0) {
            return false;
        }
        boolean z = true;
        if (j % ((long) Math.pow(1 << i, i2 + 1)) != 0) {
            z = false;
        }
        return z;
    }

    public static int log2(int i) {
        int i2 = 0;
        int i3 = i;
        while (true) {
            i3 >>= 1;
            if (i3 == 0) {
                return i2;
            }
            i2++;
        }
    }

    public static void longToBigEndian(long j, byte[] bArr, int i) {
        if (bArr == null) {
            throw new NullPointerException("in == null");
        } else if (bArr.length - i < 8) {
            throw new IllegalArgumentException("not enough space in array");
        } else {
            bArr[i] = (byte) ((j >> 56) & 255);
            bArr[i + 1] = (byte) ((j >> 48) & 255);
            bArr[i + 2] = (byte) ((j >> 40) & 255);
            bArr[i + 3] = (byte) ((j >> 32) & 255);
            bArr[i + 4] = (byte) ((j >> 24) & 255);
            bArr[i + 5] = (byte) ((j >> 16) & 255);
            bArr[i + 6] = (byte) ((j >> 8) & 255);
            bArr[i + 7] = (byte) (j & 255);
        }
    }

    public static byte[] serialize(Object obj) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        objectOutputStream.writeObject(obj);
        objectOutputStream.flush();
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] toBytesBigEndian(long j, int i) {
        byte[] bArr = new byte[i];
        while (true) {
            i--;
            if (i < 0) {
                return bArr;
            }
            bArr[i] = (byte) j;
            j >>>= 8;
        }
    }
}
