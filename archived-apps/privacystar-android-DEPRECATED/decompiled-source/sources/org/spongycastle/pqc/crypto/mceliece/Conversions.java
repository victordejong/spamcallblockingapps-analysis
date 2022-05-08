package org.spongycastle.pqc.crypto.mceliece;

import java.math.BigInteger;
import org.spongycastle.pqc.math.linearalgebra.BigIntUtils;
import org.spongycastle.pqc.math.linearalgebra.GF2Vector;
import org.spongycastle.pqc.math.linearalgebra.IntegerFunctions;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/mceliece/Conversions.class */
final class Conversions {
    private static final BigInteger ZERO = BigInteger.valueOf(0);
    private static final BigInteger ONE = BigInteger.valueOf(1);

    private Conversions() {
    }

    public static byte[] decode(int i, int i2, GF2Vector gF2Vector) {
        if (gF2Vector.getLength() == i && gF2Vector.getHammingWeight() == i2) {
            int[] vecArray = gF2Vector.getVecArray();
            BigInteger binomial = IntegerFunctions.binomial(i, i2);
            BigInteger bigInteger = ZERO;
            int i3 = 0;
            int i4 = i2;
            int i5 = i;
            while (i3 < i) {
                BigInteger divide = binomial.multiply(BigInteger.valueOf(i5 - i4)).divide(BigInteger.valueOf(i5));
                int i6 = i5 - 1;
                binomial = divide;
                i4 = i4;
                bigInteger = bigInteger;
                if ((vecArray[i3 >> 5] & (1 << (i3 & 31))) != 0) {
                    bigInteger = bigInteger.add(divide);
                    i4--;
                    binomial = i6 == i4 ? ONE : divide.multiply(BigInteger.valueOf(i4 + 1)).divide(BigInteger.valueOf(i6 - i4));
                }
                i3++;
                i5 = i6;
            }
            return BigIntUtils.toMinimalByteArray(bigInteger);
        }
        throw new IllegalArgumentException("vector has wrong length or hamming weight");
    }

    public static GF2Vector encode(int i, int i2, byte[] bArr) {
        if (i < i2) {
            throw new IllegalArgumentException("n < t");
        }
        BigInteger binomial = IntegerFunctions.binomial(i, i2);
        BigInteger bigInteger = new BigInteger(1, bArr);
        if (bigInteger.compareTo(binomial) >= 0) {
            throw new IllegalArgumentException("Encoded number too large.");
        }
        GF2Vector gF2Vector = new GF2Vector(i);
        int i3 = 0;
        int i4 = i2;
        int i5 = i;
        BigInteger bigInteger2 = binomial;
        while (i3 < i) {
            BigInteger divide = bigInteger2.multiply(BigInteger.valueOf(i5 - i4)).divide(BigInteger.valueOf(i5));
            int i6 = i5 - 1;
            bigInteger2 = divide;
            i4 = i4;
            bigInteger = bigInteger;
            if (divide.compareTo(bigInteger) <= 0) {
                gF2Vector.setBit(i3);
                bigInteger = bigInteger.subtract(divide);
                i4--;
                bigInteger2 = i6 == i4 ? ONE : divide.multiply(BigInteger.valueOf(i4 + 1)).divide(BigInteger.valueOf(i6 - i4));
            }
            i3++;
            i5 = i6;
        }
        return gF2Vector;
    }

    public static byte[] signConversion(int i, int i2, byte[] bArr) {
        if (i < i2) {
            throw new IllegalArgumentException("n < t");
        }
        BigInteger binomial = IntegerFunctions.binomial(i, i2);
        int bitLength = binomial.bitLength() - 1;
        int i3 = bitLength >> 3;
        int i4 = bitLength & 7;
        int i5 = 8;
        int i6 = i4;
        int i7 = i3;
        if (i4 == 0) {
            i7 = i3 - 1;
            i6 = 8;
        }
        int i8 = i >> 3;
        int i9 = i & 7;
        if (i9 == 0) {
            i8--;
        } else {
            i5 = i9;
        }
        byte[] bArr2 = new byte[i8 + 1];
        if (bArr.length < bArr2.length) {
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            for (int length = bArr.length; length < bArr2.length; length++) {
                bArr2[length] = (byte) 0;
            }
        } else {
            System.arraycopy(bArr, 0, bArr2, 0, i8);
            bArr2[i8] = (byte) (bArr[i8] & ((1 << i5) - 1));
        }
        BigInteger bigInteger = ZERO;
        int i10 = i2;
        int i11 = 0;
        int i12 = i;
        BigInteger bigInteger2 = binomial;
        while (i11 < i) {
            BigInteger divide = bigInteger2.multiply(new BigInteger(Integer.toString(i12 - i10))).divide(new BigInteger(Integer.toString(i12)));
            int i13 = i12 - 1;
            bigInteger2 = divide;
            i10 = i10;
            bigInteger = bigInteger;
            if (((byte) (bArr2[i11 >>> 3] & (1 << (i11 & 7)))) != 0) {
                bigInteger = bigInteger.add(divide);
                i10--;
                bigInteger2 = i13 == i10 ? ONE : divide.multiply(new BigInteger(Integer.toString(i10 + 1))).divide(new BigInteger(Integer.toString(i13 - i10)));
            }
            i11++;
            i12 = i13;
        }
        byte[] bArr3 = new byte[i7 + 1];
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length < bArr3.length) {
            System.arraycopy(byteArray, 0, bArr3, 0, byteArray.length);
            for (int length2 = byteArray.length; length2 < bArr3.length; length2++) {
                bArr3[length2] = (byte) 0;
            }
        } else {
            System.arraycopy(byteArray, 0, bArr3, 0, i7);
            bArr3[i7] = (byte) (byteArray[i7] & ((1 << i6) - 1));
        }
        return bArr3;
    }
}
