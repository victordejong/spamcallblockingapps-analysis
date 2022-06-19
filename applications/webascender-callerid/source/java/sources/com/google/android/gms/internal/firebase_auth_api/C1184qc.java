package com.google.android.gms.internal.firebase_auth_api;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECField;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.qc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/qc.class */
public final class C1184qc {
    /* renamed from: a */
    public static void m2509a(ECPoint eCPoint, EllipticCurve ellipticCurve) throws GeneralSecurityException {
        BigInteger m2508b = m2508b(ellipticCurve);
        BigInteger affineX = eCPoint.getAffineX();
        BigInteger affineY = eCPoint.getAffineY();
        if (affineX == null || affineY == null) {
            throw new GeneralSecurityException("point is at infinity");
        }
        if (affineX.signum() == -1 || affineX.compareTo(m2508b) >= 0) {
            throw new GeneralSecurityException("x is out of range");
        }
        if (affineY.signum() == -1 || affineY.compareTo(m2508b) >= 0) {
            throw new GeneralSecurityException("y is out of range");
        }
        if (!affineY.multiply(affineY).mod(m2508b).equals(affineX.multiply(affineX).add(ellipticCurve.getA()).multiply(affineX).add(ellipticCurve.getB()).mod(m2508b))) {
            throw new GeneralSecurityException("Point is not on curve");
        }
    }

    /* renamed from: b */
    public static BigInteger m2508b(EllipticCurve ellipticCurve) throws GeneralSecurityException {
        ECField field = ellipticCurve.getField();
        if (field instanceof ECFieldFp) {
            return ((ECFieldFp) field).getP();
        }
        throw new GeneralSecurityException("Only curves over prime order fields are supported");
    }

    /* renamed from: c */
    public static int m2507c(EllipticCurve ellipticCurve) throws GeneralSecurityException {
        return (m2508b(ellipticCurve).subtract(BigInteger.ONE).bitLength() + 7) / 8;
    }

    /* renamed from: d */
    public static BigInteger m2506d(BigInteger bigInteger, boolean z, EllipticCurve ellipticCurve) throws GeneralSecurityException {
        BigInteger bigInteger2;
        BigInteger m2508b = m2508b(ellipticCurve);
        BigInteger mod = bigInteger.multiply(bigInteger).add(ellipticCurve.getA()).multiply(bigInteger).add(ellipticCurve.getB()).mod(m2508b);
        if (m2508b.signum() == 1) {
            BigInteger mod2 = mod.mod(m2508b);
            BigInteger bigInteger3 = BigInteger.ZERO;
            if (!mod2.equals(bigInteger3)) {
                if (m2508b.testBit(0) && m2508b.testBit(1)) {
                    bigInteger2 = mod2.modPow(m2508b.add(BigInteger.ONE).shiftRight(2), m2508b);
                } else if (m2508b.testBit(0) && !m2508b.testBit(1)) {
                    BigInteger bigInteger4 = BigInteger.ONE;
                    BigInteger shiftRight = m2508b.subtract(bigInteger4).shiftRight(1);
                    int i = 0;
                    while (true) {
                        BigInteger mod3 = bigInteger4.multiply(bigInteger4).subtract(mod2).mod(m2508b);
                        bigInteger3 = bigInteger4;
                        if (mod3.equals(BigInteger.ZERO)) {
                            break;
                        }
                        BigInteger modPow = mod3.modPow(shiftRight, m2508b);
                        BigInteger bigInteger5 = BigInteger.ONE;
                        if (modPow.add(bigInteger5).equals(m2508b)) {
                            BigInteger shiftRight2 = m2508b.add(bigInteger5).shiftRight(1);
                            BigInteger bigInteger6 = bigInteger4;
                            for (int bitLength = shiftRight2.bitLength() - 2; bitLength >= 0; bitLength--) {
                                BigInteger multiply = bigInteger6.multiply(bigInteger5);
                                bigInteger6 = bigInteger6.multiply(bigInteger6).add(bigInteger5.multiply(bigInteger5).mod(m2508b).multiply(mod3)).mod(m2508b);
                                bigInteger5 = multiply.add(multiply).mod(m2508b);
                                if (shiftRight2.testBit(bitLength)) {
                                    BigInteger mod4 = bigInteger6.multiply(bigInteger4).add(bigInteger5.multiply(mod3)).mod(m2508b);
                                    bigInteger5 = bigInteger4.multiply(bigInteger5).add(bigInteger6).mod(m2508b);
                                    bigInteger6 = mod4;
                                }
                            }
                            bigInteger2 = bigInteger6;
                        } else if (!modPow.equals(bigInteger5)) {
                            throw new InvalidAlgorithmParameterException("p is not prime");
                        } else {
                            BigInteger add = bigInteger4.add(bigInteger5);
                            int i2 = i + 1;
                            i = i2;
                            bigInteger4 = add;
                            if (i2 == 128) {
                                if (!m2508b.isProbablePrime(80)) {
                                    throw new InvalidAlgorithmParameterException("p is not prime");
                                }
                                i = i2;
                                bigInteger4 = add;
                            }
                        }
                    }
                } else {
                    bigInteger2 = null;
                }
                bigInteger3 = bigInteger2;
                if (bigInteger2 != null) {
                    if (bigInteger2.multiply(bigInteger2).mod(m2508b).compareTo(mod2) != 0) {
                        throw new GeneralSecurityException("Could not find a modular square root");
                    }
                    bigInteger3 = bigInteger2;
                }
            }
            return z != bigInteger3.testBit(0) ? m2508b.subtract(bigInteger3).mod(m2508b) : bigInteger3;
        }
        throw new InvalidAlgorithmParameterException("p must be positive");
    }

    /* renamed from: e */
    public static ECParameterSpec m2505e(int i) throws NoSuchAlgorithmException {
        int i2 = i - 1;
        return i2 != 0 ? i2 != 1 ? m2503g("6864797660130609714981900799081393217269435300143305409394463459185543183397656052122559640661454554977296311391480858037121987999716643812574028291115057151", "6864797660130609714981900799081393217269435300143305409394463459185543183397655394245057746333217197532963996371363321113864768612440380340372808892707005449", "051953eb9618e1c9a1f929a21a0b68540eea2da725b99b315f3b8b489918ef109e156193951ec7e937b1652c0bd3bb1bf073573df883d2c34f1ef451fd46b503f00", "c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66", "11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650") : m2503g("39402006196394479212279040100143613805079739270465446667948293404245721771496870329047266088258938001861606973112319", "39402006196394479212279040100143613805079739270465446667946905279627659399113263569398956308152294913554433653942643", "b3312fa7e23ee7e4988e056be3f82d19181d9c6efe8141120314088f5013875ac656398d8a2ed19d2a85c8edd3ec2aef", "aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7", "3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f") : m2503g("115792089210356248762697446949407573530086143415290314195533631308867097853951", "115792089210356248762697446949407573529996955224135760342422259061068512044369", "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b", "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296", "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5");
    }

    /* renamed from: f */
    public static ECPublicKey m2504f(int i, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        ECParameterSpec m2505e = m2505e(i);
        ECPoint eCPoint = new ECPoint(new BigInteger(1, bArr), new BigInteger(1, bArr2));
        m2509a(eCPoint, m2505e.getCurve());
        return (ECPublicKey) C1206sc.f3807i.m2457a("EC").generatePublic(new ECPublicKeySpec(eCPoint, m2505e));
    }

    /* renamed from: g */
    private static ECParameterSpec m2503g(String str, String str2, String str3, String str4, String str5) {
        BigInteger bigInteger = new BigInteger(str);
        return new ECParameterSpec(new EllipticCurve(new ECFieldFp(bigInteger), bigInteger.subtract(new BigInteger("3")), new BigInteger(str3, 16)), new ECPoint(new BigInteger(str4, 16), new BigInteger(str5, 16)), new BigInteger(str2), 1);
    }
}
