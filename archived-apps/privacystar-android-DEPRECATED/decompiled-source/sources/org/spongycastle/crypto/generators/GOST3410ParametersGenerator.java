package org.spongycastle.crypto.generators;

import com.privacystar.core.service.analytics.p009fo.FOAnalyticsConstants;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.mozilla.javascript.typedarrays.Conversions;
import org.spongycastle.crypto.params.GOST3410Parameters;
import org.spongycastle.crypto.params.GOST3410ValidationParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/generators/GOST3410ParametersGenerator.class */
public class GOST3410ParametersGenerator {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);
    private SecureRandom init_random;
    private int size;
    private int typeproc;

    private int procedure_A(int i, int i2, BigInteger[] bigIntegerArr, int i3) {
        while (true) {
            if (i < 0 || i > 65536) {
                i = this.init_random.nextInt() / 32768;
            }
        }
        while (true) {
            if (i2 >= 0 && i2 <= 65536 && i2 / 2 != 0) {
                break;
            }
            i2 = (this.init_random.nextInt() / 32768) + 1;
        }
        BigInteger bigInteger = new BigInteger(Integer.toString(i2));
        BigInteger bigInteger2 = new BigInteger("19381");
        BigInteger bigInteger3 = new BigInteger(Integer.toString(i));
        int[] iArr = {i3};
        int i4 = 0;
        int i5 = 0;
        while (iArr[i4] >= 17) {
            int[] iArr2 = new int[iArr.length + 1];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            iArr = new int[iArr2.length];
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            i5 = i4 + 1;
            iArr[i5] = iArr[i4] / 2;
            i4 = i5;
        }
        BigInteger[] bigIntegerArr2 = new BigInteger[i5 + 1];
        bigIntegerArr2[i5] = new BigInteger("8003", 16);
        int i6 = i5 - 1;
        BigInteger[] bigIntegerArr3 = {bigInteger3};
        for (int i7 = 0; i7 < i5; i7++) {
            int i8 = iArr[i6] / 16;
            while (true) {
                BigInteger[] bigIntegerArr4 = new BigInteger[bigIntegerArr3.length];
                System.arraycopy(bigIntegerArr3, 0, bigIntegerArr4, 0, bigIntegerArr3.length);
                bigIntegerArr3 = new BigInteger[i8 + 1];
                System.arraycopy(bigIntegerArr4, 0, bigIntegerArr3, 0, bigIntegerArr4.length);
                int i9 = 0;
                while (i9 < i8) {
                    int i10 = i9 + 1;
                    bigIntegerArr3[i10] = bigIntegerArr3[i9].multiply(bigInteger2).add(bigInteger).mod(TWO.pow(16));
                    i9 = i10;
                }
                BigInteger bigInteger4 = new BigInteger("0");
                for (int i11 = 0; i11 < i8; i11++) {
                    bigInteger4 = bigInteger4.add(bigIntegerArr3[i11].multiply(TWO.pow(i11 * 16)));
                }
                bigIntegerArr3[0] = bigIntegerArr3[i8];
                int i12 = i6 + 1;
                BigInteger add = TWO.pow(iArr[i6] - 1).divide(bigIntegerArr2[i12]).add(TWO.pow(iArr[i6] - 1).multiply(bigInteger4).divide(bigIntegerArr2[i12].multiply(TWO.pow(i8 * 16))));
                BigInteger bigInteger5 = add;
                if (add.mod(TWO).compareTo(ONE) == 0) {
                    bigInteger5 = add.add(ONE);
                }
                int i13 = 0;
                while (true) {
                    BigInteger bigInteger6 = bigIntegerArr2[i12];
                    long j = i13;
                    bigIntegerArr2[i6] = bigInteger6.multiply(bigInteger5.add(BigInteger.valueOf(j))).add(ONE);
                    if (bigIntegerArr2[i6].compareTo(TWO.pow(iArr[i6])) == 1) {
                        break;
                    }
                    if (TWO.modPow(bigIntegerArr2[i12].multiply(bigInteger5.add(BigInteger.valueOf(j))), bigIntegerArr2[i6]).compareTo(ONE) == 0 && TWO.modPow(bigInteger5.add(BigInteger.valueOf(j)), bigIntegerArr2[i6]).compareTo(ONE) != 0) {
                        break;
                    }
                    i13 += 2;
                }
            }
            i6--;
            if (i6 < 0) {
                bigIntegerArr[0] = bigIntegerArr2[0];
                bigIntegerArr[1] = bigIntegerArr2[1];
                return bigIntegerArr3[0].intValue();
            }
        }
        return bigIntegerArr3[0].intValue();
    }

    private long procedure_Aa(long j, long j2, BigInteger[] bigIntegerArr, int i) {
        while (true) {
            if (j < 0 || j > Conversions.THIRTYTWO_BIT) {
                j = this.init_random.nextInt() * 2;
            }
        }
        while (true) {
            if (j2 >= 0 && j2 <= Conversions.THIRTYTWO_BIT && j2 / 2 != 0) {
                break;
            }
            j2 = (this.init_random.nextInt() * 2) + 1;
        }
        BigInteger bigInteger = new BigInteger(Long.toString(j2));
        BigInteger bigInteger2 = new BigInteger("97781173");
        BigInteger bigInteger3 = new BigInteger(Long.toString(j));
        int[] iArr = {i};
        int i2 = 0;
        int i3 = 0;
        while (iArr[i2] >= 33) {
            int[] iArr2 = new int[iArr.length + 1];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            iArr = new int[iArr2.length];
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            i3 = i2 + 1;
            iArr[i3] = iArr[i2] / 2;
            i2 = i3;
        }
        BigInteger[] bigIntegerArr2 = new BigInteger[i3 + 1];
        bigIntegerArr2[i3] = new BigInteger("8000000B", 16);
        int i4 = i3 - 1;
        BigInteger[] bigIntegerArr3 = {bigInteger3};
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = iArr[i4] / 32;
            while (true) {
                BigInteger[] bigIntegerArr4 = new BigInteger[bigIntegerArr3.length];
                System.arraycopy(bigIntegerArr3, 0, bigIntegerArr4, 0, bigIntegerArr3.length);
                bigIntegerArr3 = new BigInteger[i6 + 1];
                System.arraycopy(bigIntegerArr4, 0, bigIntegerArr3, 0, bigIntegerArr4.length);
                int i7 = 0;
                while (i7 < i6) {
                    int i8 = i7 + 1;
                    bigIntegerArr3[i8] = bigIntegerArr3[i7].multiply(bigInteger2).add(bigInteger).mod(TWO.pow(32));
                    i7 = i8;
                }
                BigInteger bigInteger4 = new BigInteger("0");
                for (int i9 = 0; i9 < i6; i9++) {
                    bigInteger4 = bigInteger4.add(bigIntegerArr3[i9].multiply(TWO.pow(i9 * 32)));
                }
                bigIntegerArr3[0] = bigIntegerArr3[i6];
                int i10 = i4 + 1;
                BigInteger add = TWO.pow(iArr[i4] - 1).divide(bigIntegerArr2[i10]).add(TWO.pow(iArr[i4] - 1).multiply(bigInteger4).divide(bigIntegerArr2[i10].multiply(TWO.pow(i6 * 32))));
                BigInteger bigInteger5 = add;
                if (add.mod(TWO).compareTo(ONE) == 0) {
                    bigInteger5 = add.add(ONE);
                }
                int i11 = 0;
                while (true) {
                    BigInteger bigInteger6 = bigIntegerArr2[i10];
                    long j3 = i11;
                    bigIntegerArr2[i4] = bigInteger6.multiply(bigInteger5.add(BigInteger.valueOf(j3))).add(ONE);
                    if (bigIntegerArr2[i4].compareTo(TWO.pow(iArr[i4])) == 1) {
                        break;
                    }
                    if (TWO.modPow(bigIntegerArr2[i10].multiply(bigInteger5.add(BigInteger.valueOf(j3))), bigIntegerArr2[i4]).compareTo(ONE) == 0 && TWO.modPow(bigInteger5.add(BigInteger.valueOf(j3)), bigIntegerArr2[i4]).compareTo(ONE) != 0) {
                        break;
                    }
                    i11 += 2;
                }
            }
            i4--;
            if (i4 < 0) {
                bigIntegerArr[0] = bigIntegerArr2[0];
                bigIntegerArr[1] = bigIntegerArr2[1];
                return bigIntegerArr3[0].longValue();
            }
        }
        return bigIntegerArr3[0].longValue();
    }

    private void procedure_B(int i, int i2, BigInteger[] bigIntegerArr) {
        int i3;
        while (true) {
            if (i < 0 || i > 65536) {
                i = this.init_random.nextInt() / 32768;
            }
        }
        while (true) {
            i3 = 1;
            if (i2 >= 0 && i2 <= 65536 && i2 / 2 != 0) {
                break;
            }
            i2 = (this.init_random.nextInt() / 32768) + 1;
        }
        BigInteger[] bigIntegerArr2 = new BigInteger[2];
        BigInteger bigInteger = new BigInteger(Integer.toString(i2));
        BigInteger bigInteger2 = new BigInteger("19381");
        int procedure_A = procedure_A(i, i2, bigIntegerArr2, 256);
        BigInteger bigInteger3 = bigIntegerArr2[0];
        int procedure_A2 = procedure_A(procedure_A, i2, bigIntegerArr2, 512);
        BigInteger bigInteger4 = bigIntegerArr2[0];
        BigInteger[] bigIntegerArr3 = new BigInteger[65];
        bigIntegerArr3[0] = new BigInteger(Integer.toString(procedure_A2));
        while (true) {
            int i4 = 0;
            while (i4 < 64) {
                int i5 = i4 + 1;
                bigIntegerArr3[i5] = bigIntegerArr3[i4].multiply(bigInteger2).add(bigInteger).mod(TWO.pow(16));
                i4 = i5;
            }
            BigInteger bigInteger5 = new BigInteger("0");
            for (int i6 = 0; i6 < 64; i6++) {
                bigInteger5 = bigInteger5.add(bigIntegerArr3[i6].multiply(TWO.pow(i6 * 16)));
            }
            bigIntegerArr3[0] = bigIntegerArr3[64];
            BigInteger add = TWO.pow(FOAnalyticsConstants.ACTIVATION_VERIFICATION_ERROR_CODE).divide(bigInteger3.multiply(bigInteger4)).add(TWO.pow(FOAnalyticsConstants.ACTIVATION_VERIFICATION_ERROR_CODE).multiply(bigInteger5).divide(bigInteger3.multiply(bigInteger4).multiply(TWO.pow(1024))));
            BigInteger bigInteger6 = add;
            if (add.mod(TWO).compareTo(ONE) == 0) {
                bigInteger6 = add.add(ONE);
            }
            int i7 = 0;
            while (true) {
                BigInteger multiply = bigInteger3.multiply(bigInteger4);
                long j = i7;
                BigInteger add2 = multiply.multiply(bigInteger6.add(BigInteger.valueOf(j))).add(ONE);
                if (add2.compareTo(TWO.pow(1024)) == i3) {
                    break;
                } else if (TWO.modPow(bigInteger3.multiply(bigInteger4).multiply(bigInteger6.add(BigInteger.valueOf(j))), add2).compareTo(ONE) != 0 || TWO.modPow(bigInteger3.multiply(bigInteger6.add(BigInteger.valueOf(j))), add2).compareTo(ONE) == 0) {
                    i7 += 2;
                    i3 = 1;
                } else {
                    bigIntegerArr[0] = add2;
                    bigIntegerArr[1] = bigInteger3;
                    return;
                }
            }
        }
    }

    private void procedure_Bb(long j, long j2, BigInteger[] bigIntegerArr) {
        while (true) {
            if (j < 0 || j > Conversions.THIRTYTWO_BIT) {
                j = this.init_random.nextInt() * 2;
            }
        }
        while (true) {
            if (j2 >= 0 && j2 <= Conversions.THIRTYTWO_BIT && j2 / 2 != 0) {
                break;
            }
            j2 = (this.init_random.nextInt() * 2) + 1;
        }
        BigInteger[] bigIntegerArr2 = new BigInteger[2];
        BigInteger bigInteger = new BigInteger(Long.toString(j2));
        BigInteger bigInteger2 = new BigInteger("97781173");
        long procedure_Aa = procedure_Aa(j, j2, bigIntegerArr2, 256);
        BigInteger bigInteger3 = bigIntegerArr2[0];
        long procedure_Aa2 = procedure_Aa(procedure_Aa, j2, bigIntegerArr2, 512);
        BigInteger bigInteger4 = bigIntegerArr2[0];
        BigInteger[] bigIntegerArr3 = new BigInteger[33];
        bigIntegerArr3[0] = new BigInteger(Long.toString(procedure_Aa2));
        while (true) {
            int i = 0;
            while (i < 32) {
                int i2 = i + 1;
                bigIntegerArr3[i2] = bigIntegerArr3[i].multiply(bigInteger2).add(bigInteger).mod(TWO.pow(32));
                i = i2;
            }
            BigInteger bigInteger5 = new BigInteger("0");
            for (int i3 = 0; i3 < 32; i3++) {
                bigInteger5 = bigInteger5.add(bigIntegerArr3[i3].multiply(TWO.pow(i3 * 32)));
            }
            bigIntegerArr3[0] = bigIntegerArr3[32];
            BigInteger add = TWO.pow(FOAnalyticsConstants.ACTIVATION_VERIFICATION_ERROR_CODE).divide(bigInteger3.multiply(bigInteger4)).add(TWO.pow(FOAnalyticsConstants.ACTIVATION_VERIFICATION_ERROR_CODE).multiply(bigInteger5).divide(bigInteger3.multiply(bigInteger4).multiply(TWO.pow(1024))));
            BigInteger bigInteger6 = add;
            if (add.mod(TWO).compareTo(ONE) == 0) {
                bigInteger6 = add.add(ONE);
            }
            int i4 = 0;
            while (true) {
                BigInteger multiply = bigInteger3.multiply(bigInteger4);
                long j3 = i4;
                BigInteger add2 = multiply.multiply(bigInteger6.add(BigInteger.valueOf(j3))).add(ONE);
                if (add2.compareTo(TWO.pow(1024)) == 1) {
                    break;
                } else if (TWO.modPow(bigInteger3.multiply(bigInteger4).multiply(bigInteger6.add(BigInteger.valueOf(j3))), add2).compareTo(ONE) != 0 || TWO.modPow(bigInteger3.multiply(bigInteger6.add(BigInteger.valueOf(j3))), add2).compareTo(ONE) == 0) {
                    i4 += 2;
                } else {
                    bigIntegerArr[0] = add2;
                    bigIntegerArr[1] = bigInteger3;
                    return;
                }
            }
        }
    }

    private BigInteger procedure_C(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger subtract = bigInteger.subtract(ONE);
        BigInteger divide = subtract.divide(bigInteger2);
        int bitLength = bigInteger.bitLength();
        while (true) {
            BigInteger bigInteger3 = new BigInteger(bitLength, this.init_random);
            if (bigInteger3.compareTo(ONE) > 0 && bigInteger3.compareTo(subtract) < 0) {
                BigInteger modPow = bigInteger3.modPow(divide, bigInteger);
                if (modPow.compareTo(ONE) != 0) {
                    return modPow;
                }
            }
        }
    }

    public GOST3410Parameters generateParameters() {
        BigInteger[] bigIntegerArr = new BigInteger[2];
        if (this.typeproc == 1) {
            int nextInt = this.init_random.nextInt();
            int nextInt2 = this.init_random.nextInt();
            int i = this.size;
            if (i == 512) {
                procedure_A(nextInt, nextInt2, bigIntegerArr, 512);
            } else if (i != 1024) {
                throw new IllegalArgumentException("Ooops! key size 512 or 1024 bit.");
            } else {
                procedure_B(nextInt, nextInt2, bigIntegerArr);
            }
            BigInteger bigInteger = bigIntegerArr[0];
            BigInteger bigInteger2 = bigIntegerArr[1];
            return new GOST3410Parameters(bigInteger, bigInteger2, procedure_C(bigInteger, bigInteger2), new GOST3410ValidationParameters(nextInt, nextInt2));
        }
        long nextLong = this.init_random.nextLong();
        long nextLong2 = this.init_random.nextLong();
        int i2 = this.size;
        if (i2 == 512) {
            procedure_Aa(nextLong, nextLong2, bigIntegerArr, 512);
        } else if (i2 != 1024) {
            throw new IllegalStateException("Ooops! key size 512 or 1024 bit.");
        } else {
            procedure_Bb(nextLong, nextLong2, bigIntegerArr);
        }
        BigInteger bigInteger3 = bigIntegerArr[0];
        BigInteger bigInteger4 = bigIntegerArr[1];
        return new GOST3410Parameters(bigInteger3, bigInteger4, procedure_C(bigInteger3, bigInteger4), new GOST3410ValidationParameters(nextLong, nextLong2));
    }

    public void init(int i, int i2, SecureRandom secureRandom) {
        this.size = i;
        this.typeproc = i2;
        this.init_random = secureRandom;
    }
}
