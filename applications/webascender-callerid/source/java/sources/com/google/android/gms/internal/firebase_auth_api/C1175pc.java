package com.google.android.gms.internal.firebase_auth_api;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import java.util.Arrays;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.pc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/pc.class */
public final class C1175pc {

    /* renamed from: a */
    private final ECPrivateKey f3771a;

    public C1175pc(ECPrivateKey eCPrivateKey) {
        this.f3771a = eCPrivateKey;
    }

    /* JADX WARN: Type inference failed for: r0v72, types: [byte[], byte[][]] */
    /* renamed from: a */
    public final byte[] m2621a(byte[] bArr, String str, byte[] bArr2, byte[] bArr3, int i, int i2) throws GeneralSecurityException {
        ECPoint eCPoint;
        boolean z;
        ECParameterSpec params = this.f3771a.getParams();
        EllipticCurve curve = params.getCurve();
        int m2507c = C1184qc.m2507c(curve);
        int i3 = i2 - 1;
        int i4 = 1;
        if (i3 == 0) {
            int length = bArr.length;
            if (length != m2507c + m2507c + 1) {
                throw new GeneralSecurityException("invalid point size");
            }
            if (bArr[0] != 4) {
                throw new GeneralSecurityException("invalid point format");
            }
            int i5 = m2507c + 1;
            eCPoint = new ECPoint(new BigInteger(1, Arrays.copyOfRange(bArr, 1, i5)), new BigInteger(1, Arrays.copyOfRange(bArr, i5, length)));
            C1184qc.m2509a(eCPoint, curve);
        } else if (i3 != 2) {
            BigInteger m2508b = C1184qc.m2508b(curve);
            int length2 = bArr.length;
            if (length2 != m2507c + 1) {
                throw new GeneralSecurityException("compressed point has wrong length");
            }
            byte b = bArr[0];
            if (b == 2) {
                z = false;
            } else if (b != 3) {
                throw new GeneralSecurityException("invalid format");
            } else {
                z = true;
            }
            BigInteger bigInteger = new BigInteger(1, Arrays.copyOfRange(bArr, 1, length2));
            if (bigInteger.signum() == -1 || bigInteger.compareTo(m2508b) >= 0) {
                throw new GeneralSecurityException("x is out of range");
            }
            eCPoint = new ECPoint(bigInteger, C1184qc.m2506d(bigInteger, z, curve));
        } else {
            int length3 = bArr.length;
            if (length3 != m2507c + m2507c) {
                throw new GeneralSecurityException("invalid point size");
            }
            eCPoint = new ECPoint(new BigInteger(1, Arrays.copyOfRange(bArr, 0, m2507c)), new BigInteger(1, Arrays.copyOfRange(bArr, m2507c, length3)));
            C1184qc.m2509a(eCPoint, curve);
        }
        ECPublicKeySpec eCPublicKeySpec = new ECPublicKeySpec(eCPoint, params);
        C1206sc<vc, KeyFactory> c1206sc = C1206sc.f3807i;
        ECPublicKey eCPublicKey = (ECPublicKey) c1206sc.m2457a("EC").generatePublic(eCPublicKeySpec);
        ECPrivateKey eCPrivateKey = this.f3771a;
        try {
            ECParameterSpec params2 = eCPublicKey.getParams();
            ECParameterSpec params3 = eCPrivateKey.getParams();
            if (!params2.getCurve().equals(params3.getCurve()) || !params2.getGenerator().equals(params3.getGenerator()) || !params2.getOrder().equals(params3.getOrder()) || params2.getCofactor() != params3.getCofactor()) {
                throw new GeneralSecurityException("invalid public key spec");
            }
            ECPoint w = eCPublicKey.getW();
            C1184qc.m2509a(w, eCPrivateKey.getParams().getCurve());
            PublicKey generatePublic = c1206sc.m2457a("EC").generatePublic(new ECPublicKeySpec(w, eCPrivateKey.getParams()));
            KeyAgreement m2457a = C1206sc.f3805g.m2457a("ECDH");
            m2457a.init(eCPrivateKey);
            try {
                m2457a.doPhase(generatePublic, true);
                byte[] generateSecret = m2457a.generateSecret();
                EllipticCurve curve2 = eCPrivateKey.getParams().getCurve();
                BigInteger bigInteger2 = new BigInteger(1, generateSecret);
                if (bigInteger2.signum() == -1 || bigInteger2.compareTo(C1184qc.m2508b(curve2)) >= 0) {
                    throw new GeneralSecurityException("shared secret is out of range");
                }
                C1184qc.m2506d(bigInteger2, true, curve2);
                byte[] m2829b = C1088hc.m2829b(new byte[]{bArr, generateSecret});
                Mac m2457a2 = C1206sc.f3804f.m2457a(str);
                if (i > m2457a2.getMacLength() * 255) {
                    throw new GeneralSecurityException("size too large");
                }
                if (bArr2 == null || bArr2.length == 0) {
                    m2457a2.init(new SecretKeySpec(new byte[m2457a2.getMacLength()], str));
                } else {
                    m2457a2.init(new SecretKeySpec(bArr2, str));
                }
                byte[] doFinal = m2457a2.doFinal(m2829b);
                byte[] bArr4 = new byte[i];
                m2457a2.init(new SecretKeySpec(doFinal, str));
                byte[] bArr5 = new byte[0];
                int i6 = 0;
                while (true) {
                    int i7 = i6;
                    m2457a2.update(bArr5);
                    m2457a2.update((byte[]) null);
                    m2457a2.update((byte) i4);
                    bArr5 = m2457a2.doFinal();
                    int length4 = bArr5.length;
                    int i8 = i7 + length4;
                    if (i8 >= i) {
                        System.arraycopy(bArr5, 0, bArr4, i7, i - i7);
                        return bArr4;
                    }
                    System.arraycopy(bArr5, 0, bArr4, i7, length4);
                    i4++;
                    i6 = i8;
                }
            } catch (IllegalStateException e) {
                throw new GeneralSecurityException(e.toString());
            }
        } catch (IllegalArgumentException | NullPointerException e2) {
            throw new GeneralSecurityException(e2.toString());
        }
    }
}
