package org.spongycastle.math.p032ec;

import java.math.BigInteger;
/* renamed from: org.spongycastle.math.ec.WNafUtil */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/WNafUtil.class */
public abstract class WNafUtil {
    private static final int[] DEFAULT_WINDOW_SIZE_CUTOFFS = {13, 41, 121, 337, 897, 2305};
    private static final byte[] EMPTY_BYTES = new byte[0];
    private static final int[] EMPTY_INTS = new int[0];
    private static final ECPoint[] EMPTY_POINTS = new ECPoint[0];
    public static final String PRECOMP_NAME = "bc_wnaf";

    public static int[] generateCompactNaf(BigInteger bigInteger) {
        if ((bigInteger.bitLength() >>> 16) != 0) {
            throw new IllegalArgumentException("'k' must have bitlength < 2^16");
        } else if (bigInteger.signum() == 0) {
            return EMPTY_INTS;
        } else {
            BigInteger add = bigInteger.shiftLeft(1).add(bigInteger);
            int bitLength = add.bitLength();
            int[] iArr = new int[bitLength >> 1];
            BigInteger xor = add.xor(bigInteger);
            int i = 1;
            int i2 = 0;
            int i3 = 0;
            while (i < bitLength - 1) {
                if (!xor.testBit(i)) {
                    i3++;
                } else {
                    iArr[i2] = i3 | ((bigInteger.testBit(i) ? -1 : 1) << 16);
                    i++;
                    i2++;
                    i3 = 1;
                }
                i++;
            }
            int i4 = i2 + 1;
            iArr[i2] = 65536 | i3;
            int[] iArr2 = iArr;
            if (iArr.length > i4) {
                iArr2 = trim(iArr, i4);
            }
            return iArr2;
        }
    }

    public static int[] generateCompactWindowNaf(int i, BigInteger bigInteger) {
        if (i == 2) {
            return generateCompactNaf(bigInteger);
        }
        if (i < 2 || i > 16) {
            throw new IllegalArgumentException("'width' must be in the range [2, 16]");
        } else if ((bigInteger.bitLength() >>> 16) != 0) {
            throw new IllegalArgumentException("'k' must have bitlength < 2^16");
        } else if (bigInteger.signum() == 0) {
            return EMPTY_INTS;
        } else {
            int[] iArr = new int[(bigInteger.bitLength() / i) + 1];
            int i2 = 1 << i;
            int i3 = 0;
            boolean z = false;
            int i4 = 0;
            while (i3 <= bigInteger.bitLength()) {
                if (bigInteger.testBit(i3) == z) {
                    i3++;
                } else {
                    bigInteger = bigInteger.shiftRight(i3);
                    int intValue = bigInteger.intValue() & (i2 - 1);
                    int i5 = intValue;
                    if (z) {
                        i5 = intValue + 1;
                    }
                    z = (i5 & (i2 >>> 1)) != 0;
                    int i6 = i5;
                    if (z) {
                        i6 = i5 - i2;
                    }
                    int i7 = i3;
                    if (i4 > 0) {
                        i7 = i3 - 1;
                    }
                    iArr[i4] = i7 | (i6 << 16);
                    i3 = i;
                    i4++;
                }
            }
            int[] iArr2 = iArr;
            if (iArr.length > i4) {
                iArr2 = trim(iArr, i4);
            }
            return iArr2;
        }
    }

    public static byte[] generateJSF(BigInteger bigInteger, BigInteger bigInteger2) {
        byte[] bArr = new byte[Math.max(bigInteger.bitLength(), bigInteger2.bitLength()) + 1];
        BigInteger bigInteger3 = bigInteger;
        BigInteger bigInteger4 = bigInteger2;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if ((i | i2) == 0 && bigInteger3.bitLength() <= i3 && bigInteger4.bitLength() <= i3) {
                break;
            }
            int intValue = ((bigInteger3.intValue() >>> i3) + i) & 7;
            int intValue2 = ((bigInteger4.intValue() >>> i3) + i2) & 7;
            int i5 = intValue & 1;
            int i6 = i5;
            if (i5 != 0) {
                int i7 = i5 - (intValue & 2);
                i6 = i7;
                if (intValue + i7 == 4) {
                    i6 = i7;
                    if ((intValue2 & 3) == 2) {
                        i6 = -i7;
                    }
                }
            }
            int i8 = intValue2 & 1;
            int i9 = i8;
            if (i8 != 0) {
                int i10 = i8 - (intValue2 & 2);
                i9 = i10;
                if (intValue2 + i10 == 4) {
                    i9 = i10;
                    if ((intValue & 3) == 2) {
                        i9 = -i10;
                    }
                }
            }
            i = i;
            if ((i << 1) == i6 + 1) {
                i ^= 1;
            }
            i2 = i2;
            if ((i2 << 1) == i9 + 1) {
                i2 ^= 1;
            }
            int i11 = i3 + 1;
            bigInteger3 = bigInteger3;
            i3 = i11;
            bigInteger4 = bigInteger4;
            if (i11 == 30) {
                bigInteger3 = bigInteger3.shiftRight(30);
                bigInteger4 = bigInteger4.shiftRight(30);
                i3 = 0;
            }
            bArr[i4] = (byte) ((i6 << 4) | (i9 & 15));
            i4++;
        }
        byte[] bArr2 = bArr;
        if (bArr.length > i4) {
            bArr2 = trim(bArr, i4);
        }
        return bArr2;
    }

    public static byte[] generateNaf(BigInteger bigInteger) {
        if (bigInteger.signum() == 0) {
            return EMPTY_BYTES;
        }
        BigInteger add = bigInteger.shiftLeft(1).add(bigInteger);
        int bitLength = add.bitLength() - 1;
        byte[] bArr = new byte[bitLength];
        BigInteger xor = add.xor(bigInteger);
        int i = 1;
        while (i < bitLength) {
            int i2 = i;
            if (xor.testBit(i)) {
                bArr[i - 1] = (byte) (bigInteger.testBit(i) ? -1 : 1);
                i2 = i + 1;
            }
            i = i2 + 1;
        }
        bArr[bitLength - 1] = (byte) 1;
        return bArr;
    }

    public static byte[] generateWindowNaf(int i, BigInteger bigInteger) {
        if (i == 2) {
            return generateNaf(bigInteger);
        }
        if (i < 2 || i > 8) {
            throw new IllegalArgumentException("'width' must be in the range [2, 8]");
        } else if (bigInteger.signum() == 0) {
            return EMPTY_BYTES;
        } else {
            byte[] bArr = new byte[bigInteger.bitLength() + 1];
            int i2 = 1 << i;
            int i3 = 0;
            boolean z = false;
            int i4 = 0;
            while (i3 <= bigInteger.bitLength()) {
                if (bigInteger.testBit(i3) == z) {
                    i3++;
                } else {
                    bigInteger = bigInteger.shiftRight(i3);
                    int intValue = bigInteger.intValue() & (i2 - 1);
                    int i5 = intValue;
                    if (z) {
                        i5 = intValue + 1;
                    }
                    z = (i5 & (i2 >>> 1)) != 0;
                    int i6 = i5;
                    if (z) {
                        i6 = i5 - i2;
                    }
                    int i7 = i3;
                    if (i4 > 0) {
                        i7 = i3 - 1;
                    }
                    int i8 = i4 + i7;
                    bArr[i8] = (byte) i6;
                    i4 = i8 + 1;
                    i3 = i;
                }
            }
            byte[] bArr2 = bArr;
            if (bArr.length > i4) {
                bArr2 = trim(bArr, i4);
            }
            return bArr2;
        }
    }

    public static int getNafWeight(BigInteger bigInteger) {
        if (bigInteger.signum() == 0) {
            return 0;
        }
        return bigInteger.shiftLeft(1).add(bigInteger).xor(bigInteger).bitCount();
    }

    public static WNafPreCompInfo getWNafPreCompInfo(ECPoint eCPoint) {
        return getWNafPreCompInfo(eCPoint.getCurve().getPreCompInfo(eCPoint, PRECOMP_NAME));
    }

    public static WNafPreCompInfo getWNafPreCompInfo(PreCompInfo preCompInfo) {
        return (preCompInfo == null || !(preCompInfo instanceof WNafPreCompInfo)) ? new WNafPreCompInfo() : (WNafPreCompInfo) preCompInfo;
    }

    public static int getWindowSize(int i) {
        return getWindowSize(i, DEFAULT_WINDOW_SIZE_CUTOFFS);
    }

    public static int getWindowSize(int i, int[] iArr) {
        int i2 = 0;
        while (i2 < iArr.length && i >= iArr[i2]) {
            i2++;
        }
        return i2 + 2;
    }

    public static ECPoint mapPointWithPrecomp(ECPoint eCPoint, int i, boolean z, ECPointMap eCPointMap) {
        ECCurve curve = eCPoint.getCurve();
        WNafPreCompInfo precompute = precompute(eCPoint, i, z);
        ECPoint map = eCPointMap.map(eCPoint);
        WNafPreCompInfo wNafPreCompInfo = getWNafPreCompInfo(curve.getPreCompInfo(map, PRECOMP_NAME));
        ECPoint twice = precompute.getTwice();
        if (twice != null) {
            wNafPreCompInfo.setTwice(eCPointMap.map(twice));
        }
        ECPoint[] preComp = precompute.getPreComp();
        ECPoint[] eCPointArr = new ECPoint[preComp.length];
        for (int i2 = 0; i2 < preComp.length; i2++) {
            eCPointArr[i2] = eCPointMap.map(preComp[i2]);
        }
        wNafPreCompInfo.setPreComp(eCPointArr);
        if (z) {
            ECPoint[] eCPointArr2 = new ECPoint[eCPointArr.length];
            for (int i3 = 0; i3 < eCPointArr2.length; i3++) {
                eCPointArr2[i3] = eCPointArr[i3].negate();
            }
            wNafPreCompInfo.setPreCompNeg(eCPointArr2);
        }
        curve.setPreCompInfo(map, PRECOMP_NAME, wNafPreCompInfo);
        return map;
    }

    public static WNafPreCompInfo precompute(ECPoint eCPoint, int i, boolean z) {
        int i2;
        ECPoint[] eCPointArr;
        int i3;
        ECCurve curve = eCPoint.getCurve();
        WNafPreCompInfo wNafPreCompInfo = getWNafPreCompInfo(curve.getPreCompInfo(eCPoint, PRECOMP_NAME));
        int i4 = 0;
        int max = 1 << Math.max(0, i - 2);
        ECPoint[] preComp = wNafPreCompInfo.getPreComp();
        if (preComp == null) {
            preComp = EMPTY_POINTS;
            i2 = 0;
        } else {
            i2 = preComp.length;
        }
        ECPoint[] eCPointArr2 = preComp;
        if (i2 < max) {
            ECPoint[] resizeTable = resizeTable(preComp, max);
            if (max == 1) {
                resizeTable[0] = eCPoint.normalize();
                eCPointArr2 = resizeTable;
            } else {
                if (i2 == 0) {
                    resizeTable[0] = eCPoint;
                    i3 = 1;
                } else {
                    i3 = i2;
                }
                ECFieldElement eCFieldElement = null;
                if (max == 2) {
                    resizeTable[1] = eCPoint.threeTimes();
                } else {
                    ECPoint twice = wNafPreCompInfo.getTwice();
                    ECPoint eCPoint2 = resizeTable[i3 - 1];
                    ECPoint eCPoint3 = twice;
                    ECPoint eCPoint4 = eCPoint2;
                    int i5 = i3;
                    eCFieldElement = null;
                    if (twice == null) {
                        ECPoint twice2 = resizeTable[0].twice();
                        wNafPreCompInfo.setTwice(twice2);
                        eCPoint3 = twice2;
                        eCPoint4 = eCPoint2;
                        i5 = i3;
                        eCFieldElement = null;
                        if (!twice2.isInfinity()) {
                            eCPoint3 = twice2;
                            eCPoint4 = eCPoint2;
                            i5 = i3;
                            eCFieldElement = null;
                            if (ECAlgorithms.isFpCurve(curve)) {
                                eCPoint3 = twice2;
                                eCPoint4 = eCPoint2;
                                i5 = i3;
                                eCFieldElement = null;
                                if (curve.getFieldSize() >= 64) {
                                    switch (curve.getCoordinateSystem()) {
                                        case 2:
                                        case 3:
                                        case 4:
                                            ECFieldElement zCoord = twice2.getZCoord(0);
                                            ECPoint createPoint = curve.createPoint(twice2.getXCoord().toBigInteger(), twice2.getYCoord().toBigInteger());
                                            ECFieldElement square = zCoord.square();
                                            ECPoint scaleY = eCPoint2.scaleX(square).scaleY(square.multiply(zCoord));
                                            eCPoint3 = createPoint;
                                            eCPoint4 = scaleY;
                                            i5 = i3;
                                            eCFieldElement = zCoord;
                                            if (i2 == 0) {
                                                resizeTable[0] = scaleY;
                                                eCFieldElement = zCoord;
                                                i5 = i3;
                                                eCPoint4 = scaleY;
                                                eCPoint3 = createPoint;
                                                break;
                                            }
                                            break;
                                        default:
                                            eCPoint3 = twice2;
                                            eCPoint4 = eCPoint2;
                                            i5 = i3;
                                            eCFieldElement = null;
                                            break;
                                    }
                                }
                            }
                        }
                    }
                    while (i5 < max) {
                        eCPoint4 = eCPoint4.add(eCPoint3);
                        resizeTable[i5] = eCPoint4;
                        i5++;
                    }
                }
                curve.normalizeAll(resizeTable, i2, max - i2, eCFieldElement);
                eCPointArr2 = resizeTable;
            }
        }
        wNafPreCompInfo.setPreComp(eCPointArr2);
        if (z) {
            ECPoint[] preCompNeg = wNafPreCompInfo.getPreCompNeg();
            if (preCompNeg == null) {
                eCPointArr = new ECPoint[max];
            } else {
                int length = preCompNeg.length;
                i4 = length;
                eCPointArr = preCompNeg;
                if (length < max) {
                    eCPointArr = resizeTable(preCompNeg, max);
                    i4 = length;
                }
            }
            while (i4 < max) {
                eCPointArr[i4] = eCPointArr2[i4].negate();
                i4++;
            }
            wNafPreCompInfo.setPreCompNeg(eCPointArr);
        }
        curve.setPreCompInfo(eCPoint, PRECOMP_NAME, wNafPreCompInfo);
        return wNafPreCompInfo;
    }

    private static ECPoint[] resizeTable(ECPoint[] eCPointArr, int i) {
        ECPoint[] eCPointArr2 = new ECPoint[i];
        System.arraycopy(eCPointArr, 0, eCPointArr2, 0, eCPointArr.length);
        return eCPointArr2;
    }

    private static byte[] trim(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        return bArr2;
    }

    private static int[] trim(int[] iArr, int i) {
        int[] iArr2 = new int[i];
        System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
        return iArr2;
    }
}
