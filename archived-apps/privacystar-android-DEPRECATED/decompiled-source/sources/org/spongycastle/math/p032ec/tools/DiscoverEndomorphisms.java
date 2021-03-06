package org.spongycastle.math.p032ec.tools;

import com.crashlytics.android.beta.Beta;
import java.io.PrintStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.asn1.p022x9.ECNamedCurveTable;
import org.spongycastle.asn1.p022x9.X9ECParameters;
import org.spongycastle.math.p032ec.ECAlgorithms;
import org.spongycastle.math.p032ec.ECConstants;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECFieldElement;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.util.BigIntegers;
/* renamed from: org.spongycastle.math.ec.tools.DiscoverEndomorphisms */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/tools/DiscoverEndomorphisms.class */
public class DiscoverEndomorphisms {
    private static final int radix = 16;

    private static boolean areRelativelyPrime(BigInteger bigInteger, BigInteger bigInteger2) {
        return bigInteger.gcd(bigInteger2).equals(ECConstants.ONE);
    }

    private static BigInteger[] calculateRange(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        return order(bigInteger.subtract(bigInteger2).divide(bigInteger3), bigInteger.add(bigInteger2).divide(bigInteger3));
    }

    private static BigInteger[] chooseShortest(BigInteger[] bigIntegerArr, BigInteger[] bigIntegerArr2) {
        if (!isShorter(bigIntegerArr, bigIntegerArr2)) {
            bigIntegerArr = bigIntegerArr2;
        }
        return bigIntegerArr;
    }

    private static void discoverEndomorphisms(String str) {
        X9ECParameters byName = ECNamedCurveTable.getByName(str);
        if (byName == null) {
            PrintStream printStream = System.err;
            printStream.println("Unknown curve: " + str);
            return;
        }
        ECCurve curve = byName.getCurve();
        if (ECAlgorithms.isFpCurve(curve)) {
            BigInteger characteristic = curve.getField().getCharacteristic();
            if (curve.getA().isZero() && characteristic.mod(ECConstants.THREE).equals(ECConstants.ONE)) {
                PrintStream printStream2 = System.out;
                printStream2.println("Curve '" + str + "' has a 'GLV Type B' endomorphism with these parameters:");
                printGLVTypeBParameters(byName);
            }
        }
    }

    public static void discoverEndomorphisms(X9ECParameters x9ECParameters) {
        if (x9ECParameters == null) {
            throw new NullPointerException("x9");
        }
        ECCurve curve = x9ECParameters.getCurve();
        if (ECAlgorithms.isFpCurve(curve)) {
            BigInteger characteristic = curve.getField().getCharacteristic();
            if (curve.getA().isZero() && characteristic.mod(ECConstants.THREE).equals(ECConstants.ONE)) {
                System.out.println("Curve has a 'GLV Type B' endomorphism with these parameters:");
                printGLVTypeBParameters(x9ECParameters);
            }
        }
    }

    private static BigInteger[] extEuclidBezout(BigInteger[] bigIntegerArr) {
        boolean z = bigIntegerArr[0].compareTo(bigIntegerArr[1]) < 0;
        if (z) {
            swap(bigIntegerArr);
        }
        BigInteger bigInteger = bigIntegerArr[0];
        BigInteger bigInteger2 = bigIntegerArr[1];
        BigInteger bigInteger3 = ECConstants.ONE;
        BigInteger bigInteger4 = ECConstants.ZERO;
        BigInteger bigInteger5 = ECConstants.ZERO;
        BigInteger bigInteger6 = ECConstants.ONE;
        while (bigInteger2.compareTo(ECConstants.ONE) > 0) {
            BigInteger[] divideAndRemainder = bigInteger.divideAndRemainder(bigInteger2);
            BigInteger bigInteger7 = divideAndRemainder[0];
            bigInteger2 = divideAndRemainder[1];
            bigInteger4 = bigInteger3.subtract(bigInteger7.multiply(bigInteger4));
            bigInteger6 = bigInteger5.subtract(bigInteger7.multiply(bigInteger6));
            bigInteger = bigInteger2;
            bigInteger3 = bigInteger4;
            bigInteger5 = bigInteger6;
        }
        if (bigInteger2.signum() <= 0) {
            return null;
        }
        BigInteger[] bigIntegerArr2 = {bigInteger4, bigInteger6};
        if (z) {
            swap(bigIntegerArr2);
        }
        return bigIntegerArr2;
    }

    private static BigInteger[] extEuclidGLV(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigInteger3 = ECConstants.ZERO;
        BigInteger bigInteger4 = ECConstants.ONE;
        BigInteger bigInteger5 = bigInteger2;
        BigInteger bigInteger6 = bigInteger;
        while (true) {
            BigInteger[] divideAndRemainder = bigInteger6.divideAndRemainder(bigInteger5);
            BigInteger bigInteger7 = divideAndRemainder[0];
            BigInteger bigInteger8 = divideAndRemainder[1];
            bigInteger4 = bigInteger3.subtract(bigInteger7.multiply(bigInteger4));
            if (isLessThanSqrt(bigInteger5, bigInteger)) {
                return new BigInteger[]{bigInteger6, bigInteger3, bigInteger5, bigInteger4, bigInteger8, bigInteger4};
            }
            bigInteger6 = bigInteger5;
            bigInteger5 = bigInteger8;
            bigInteger3 = bigInteger4;
        }
    }

    private static ECFieldElement[] findBetaValues(ECCurve eCCurve) {
        BigInteger modPow;
        BigInteger characteristic = eCCurve.getField().getCharacteristic();
        BigInteger divide = characteristic.divide(ECConstants.THREE);
        SecureRandom secureRandom = new SecureRandom();
        do {
            modPow = BigIntegers.createRandomInRange(ECConstants.TWO, characteristic.subtract(ECConstants.TWO), secureRandom).modPow(divide, characteristic);
        } while (modPow.equals(ECConstants.ONE));
        ECFieldElement fromBigInteger = eCCurve.fromBigInteger(modPow);
        return new ECFieldElement[]{fromBigInteger, fromBigInteger.square()};
    }

    private static BigInteger[] intersect(BigInteger[] bigIntegerArr, BigInteger[] bigIntegerArr2) {
        BigInteger max = bigIntegerArr[0].max(bigIntegerArr2[0]);
        BigInteger min = bigIntegerArr[1].min(bigIntegerArr2[1]);
        if (max.compareTo(min) > 0) {
            return null;
        }
        return new BigInteger[]{max, min};
    }

    private static boolean isLessThanSqrt(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger abs = bigInteger.abs();
        BigInteger abs2 = bigInteger2.abs();
        int bitLength = abs2.bitLength();
        int bitLength2 = abs.bitLength() * 2;
        return bitLength2 - 1 <= bitLength && (bitLength2 < bitLength || abs.multiply(abs).compareTo(abs2) < 0);
    }

    private static boolean isShorter(BigInteger[] bigIntegerArr, BigInteger[] bigIntegerArr2) {
        boolean z = false;
        BigInteger abs = bigIntegerArr[0].abs();
        BigInteger abs2 = bigIntegerArr[1].abs();
        BigInteger abs3 = bigIntegerArr2[0].abs();
        BigInteger abs4 = bigIntegerArr2[1].abs();
        boolean z2 = abs.compareTo(abs3) < 0;
        if (z2 == (abs2.compareTo(abs4) < 0)) {
            return z2;
        }
        if (abs.multiply(abs).add(abs2.multiply(abs2)).compareTo(abs3.multiply(abs3).add(abs4.multiply(abs4))) < 0) {
            z = true;
        }
        return z;
    }

    private static boolean isVectorBoundedBySqrt(BigInteger[] bigIntegerArr, BigInteger bigInteger) {
        return isLessThanSqrt(bigIntegerArr[0].abs().max(bigIntegerArr[1].abs()), bigInteger);
    }

    private static BigInteger isqrt(BigInteger bigInteger) {
        BigInteger shiftRight = bigInteger.shiftRight(bigInteger.bitLength() / 2);
        while (true) {
            BigInteger shiftRight2 = shiftRight.add(bigInteger.divide(shiftRight)).shiftRight(1);
            if (shiftRight2.equals(shiftRight)) {
                return shiftRight2;
            }
            shiftRight = shiftRight2;
        }
    }

    public static void main(String[] strArr) {
        if (strArr.length < 1) {
            System.err.println("Expected a list of curve names as arguments");
            return;
        }
        for (String str : strArr) {
            discoverEndomorphisms(str);
        }
    }

    private static BigInteger[] order(BigInteger bigInteger, BigInteger bigInteger2) {
        return bigInteger.compareTo(bigInteger2) <= 0 ? new BigInteger[]{bigInteger, bigInteger2} : new BigInteger[]{bigInteger2, bigInteger};
    }

    private static void printGLVTypeBParameters(X9ECParameters x9ECParameters) {
        BigInteger[] solveQuadraticEquation = solveQuadraticEquation(x9ECParameters.getN(), ECConstants.ONE, ECConstants.ONE);
        ECFieldElement[] findBetaValues = findBetaValues(x9ECParameters.getCurve());
        printGLVTypeBParameters(x9ECParameters, solveQuadraticEquation[0], findBetaValues);
        System.out.println("OR");
        printGLVTypeBParameters(x9ECParameters, solveQuadraticEquation[1], findBetaValues);
    }

    private static void printGLVTypeBParameters(X9ECParameters x9ECParameters, BigInteger bigInteger, ECFieldElement[] eCFieldElementArr) {
        ECPoint normalize = x9ECParameters.getG().normalize();
        ECPoint normalize2 = normalize.multiply(bigInteger).normalize();
        if (!normalize.getYCoord().equals(normalize2.getYCoord())) {
            throw new IllegalStateException("Derivation of GLV Type B parameters failed unexpectedly");
        }
        ECFieldElement eCFieldElement = eCFieldElementArr[0];
        ECFieldElement eCFieldElement2 = eCFieldElement;
        if (!normalize.getXCoord().multiply(eCFieldElement).equals(normalize2.getXCoord())) {
            ECFieldElement eCFieldElement3 = eCFieldElementArr[1];
            eCFieldElement2 = eCFieldElement3;
            if (!normalize.getXCoord().multiply(eCFieldElement3).equals(normalize2.getXCoord())) {
                throw new IllegalStateException("Derivation of GLV Type B parameters failed unexpectedly");
            }
        }
        BigInteger n = x9ECParameters.getN();
        BigInteger[] extEuclidGLV = extEuclidGLV(n, bigInteger);
        BigInteger[] bigIntegerArr = {extEuclidGLV[2], extEuclidGLV[3].negate()};
        BigInteger[] chooseShortest = chooseShortest(new BigInteger[]{extEuclidGLV[0], extEuclidGLV[1].negate()}, new BigInteger[]{extEuclidGLV[4], extEuclidGLV[5].negate()});
        BigInteger[] bigIntegerArr2 = chooseShortest;
        if (!isVectorBoundedBySqrt(chooseShortest, n)) {
            bigIntegerArr2 = chooseShortest;
            if (areRelativelyPrime(bigIntegerArr[0], bigIntegerArr[1])) {
                BigInteger bigInteger2 = bigIntegerArr[0];
                BigInteger bigInteger3 = bigIntegerArr[1];
                BigInteger divide = bigInteger2.add(bigInteger3.multiply(bigInteger)).divide(n);
                BigInteger[] extEuclidBezout = extEuclidBezout(new BigInteger[]{divide.abs(), bigInteger3.abs()});
                bigIntegerArr2 = chooseShortest;
                if (extEuclidBezout != null) {
                    BigInteger bigInteger4 = extEuclidBezout[0];
                    BigInteger bigInteger5 = extEuclidBezout[1];
                    BigInteger bigInteger6 = bigInteger4;
                    if (divide.signum() < 0) {
                        bigInteger6 = bigInteger4.negate();
                    }
                    BigInteger bigInteger7 = bigInteger5;
                    if (bigInteger3.signum() > 0) {
                        bigInteger7 = bigInteger5.negate();
                    }
                    if (!divide.multiply(bigInteger6).subtract(bigInteger3.multiply(bigInteger7)).equals(ECConstants.ONE)) {
                        throw new IllegalStateException();
                    }
                    BigInteger subtract = bigInteger7.multiply(n).subtract(bigInteger6.multiply(bigInteger));
                    BigInteger negate = bigInteger6.negate();
                    BigInteger negate2 = subtract.negate();
                    BigInteger add = isqrt(n.subtract(ECConstants.ONE)).add(ECConstants.ONE);
                    BigInteger[] intersect = intersect(calculateRange(negate, add, bigInteger3), calculateRange(negate2, add, bigInteger2));
                    bigIntegerArr2 = chooseShortest;
                    if (intersect != null) {
                        BigInteger bigInteger8 = intersect[0];
                        while (true) {
                            bigIntegerArr2 = chooseShortest;
                            if (bigInteger8.compareTo(intersect[1]) > 0) {
                                break;
                            }
                            BigInteger[] bigIntegerArr3 = {subtract.add(bigInteger8.multiply(bigInteger2)), bigInteger6.add(bigInteger8.multiply(bigInteger3))};
                            chooseShortest = chooseShortest;
                            if (isShorter(bigIntegerArr3, chooseShortest)) {
                                chooseShortest = bigIntegerArr3;
                            }
                            bigInteger8 = bigInteger8.add(ECConstants.ONE);
                        }
                    }
                }
            }
        }
        BigInteger subtract2 = bigIntegerArr[0].multiply(bigIntegerArr2[1]).subtract(bigIntegerArr[1].multiply(bigIntegerArr2[0]));
        int bitLength = (n.bitLength() + 16) - (n.bitLength() & 7);
        BigInteger roundQuotient = roundQuotient(bigIntegerArr2[1].shiftLeft(bitLength), subtract2);
        BigInteger negate3 = roundQuotient(bigIntegerArr[1].shiftLeft(bitLength), subtract2).negate();
        printProperty(Beta.TAG, eCFieldElement2.toBigInteger().toString(16));
        printProperty("Lambda", bigInteger.toString(16));
        printProperty("v1", "{ " + bigIntegerArr[0].toString(16) + ", " + bigIntegerArr[1].toString(16) + " }");
        printProperty("v2", "{ " + bigIntegerArr2[0].toString(16) + ", " + bigIntegerArr2[1].toString(16) + " }");
        printProperty("d", subtract2.toString(16));
        printProperty("(OPT) g1", roundQuotient.toString(16));
        printProperty("(OPT) g2", negate3.toString(16));
        printProperty("(OPT) bits", Integer.toString(bitLength));
    }

    private static void printProperty(String str, Object obj) {
        StringBuffer stringBuffer = new StringBuffer("  ");
        stringBuffer.append(str);
        while (stringBuffer.length() < 20) {
            stringBuffer.append(' ');
        }
        stringBuffer.append("= ");
        stringBuffer.append(obj.toString());
        System.out.println(stringBuffer.toString());
    }

    private static BigInteger roundQuotient(BigInteger bigInteger, BigInteger bigInteger2) {
        boolean z = bigInteger.signum() != bigInteger2.signum();
        BigInteger abs = bigInteger.abs();
        BigInteger abs2 = bigInteger2.abs();
        BigInteger divide = abs.add(abs2.shiftRight(1)).divide(abs2);
        BigInteger bigInteger3 = divide;
        if (z) {
            bigInteger3 = divide.negate();
        }
        return bigInteger3;
    }

    private static BigInteger[] solveQuadraticEquation(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        BigInteger bigInteger4;
        BigInteger bigInteger5;
        BigInteger bigInteger6 = new ECFieldElement.C2402Fp(bigInteger, bigInteger2.multiply(bigInteger2).subtract(bigInteger3.shiftLeft(2)).mod(bigInteger)).sqrt().toBigInteger();
        BigInteger subtract = bigInteger.subtract(bigInteger6);
        if (bigInteger6.testBit(0)) {
            bigInteger4 = subtract.add(bigInteger);
            bigInteger5 = bigInteger6;
        } else {
            bigInteger5 = bigInteger6.add(bigInteger);
            bigInteger4 = subtract;
        }
        return new BigInteger[]{bigInteger5.shiftRight(1), bigInteger4.shiftRight(1)};
    }

    private static void swap(BigInteger[] bigIntegerArr) {
        BigInteger bigInteger = bigIntegerArr[0];
        bigIntegerArr[0] = bigIntegerArr[1];
        bigIntegerArr[1] = bigInteger;
    }
}
