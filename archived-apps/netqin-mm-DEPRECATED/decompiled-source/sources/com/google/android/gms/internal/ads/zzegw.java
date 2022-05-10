package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import p131c.p161d.p170b.p224d.p252g.p253a.i60;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzegw.class */
public final class zzegw {

    /* renamed from: a */
    public ECPublicKey f28020a;

    public zzegw(ECPublicKey eCPublicKey) {
        this.f28020a = eCPublicKey;
    }

    /* JADX WARN: Type inference failed for: r0v45, types: [byte[], byte[][]] */
    /* renamed from: a */
    public final zzegv m12569a(String str, byte[] bArr, byte[] bArr2, int i, zzegz zzegzVar) throws GeneralSecurityException {
        byte[] bArr3;
        KeyPair a = zzegy.m12564a(this.f28020a.getParams());
        ECPublicKey eCPublicKey = (ECPublicKey) a.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) a.getPrivate();
        ECPublicKey eCPublicKey2 = this.f28020a;
        try {
            ECParameterSpec params = eCPublicKey2.getParams();
            ECParameterSpec params2 = eCPrivateKey.getParams();
            int i2 = 1;
            if (params.getCurve().equals(params2.getCurve()) && params.getGenerator().equals(params2.getGenerator()) && params.getOrder().equals(params2.getOrder()) && params.getCofactor() == params2.getCofactor()) {
                byte[] a2 = zzegy.m12565a(eCPrivateKey, eCPublicKey2.getW());
                EllipticCurve curve = eCPublicKey.getParams().getCurve();
                ECPoint w = eCPublicKey.getW();
                zzegy.m12563a(w, curve);
                int bitLength = (zzegy.m12562a(curve).subtract(BigInteger.ONE).bitLength() + 7) / 8;
                int i3 = i60.f13496a[zzegzVar.ordinal()];
                if (i3 == 1) {
                    int i4 = (bitLength * 2) + 1;
                    bArr3 = new byte[i4];
                    byte[] byteArray = w.getAffineX().toByteArray();
                    byte[] byteArray2 = w.getAffineY().toByteArray();
                    System.arraycopy(byteArray2, 0, bArr3, i4 - byteArray2.length, byteArray2.length);
                    System.arraycopy(byteArray, 0, bArr3, (bitLength + 1) - byteArray.length, byteArray.length);
                    bArr3[0] = (byte) 4;
                } else if (i3 != 2) {
                    int i5 = 3;
                    if (i3 == 3) {
                        int i6 = bitLength + 1;
                        bArr3 = new byte[i6];
                        byte[] byteArray3 = w.getAffineX().toByteArray();
                        System.arraycopy(byteArray3, 0, bArr3, i6 - byteArray3.length, byteArray3.length);
                        if (!w.getAffineY().testBit(0)) {
                            i5 = 2;
                        }
                        bArr3[0] = (byte) i5;
                    } else {
                        String valueOf = String.valueOf(zzegzVar);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 15);
                        sb.append("invalid format:");
                        sb.append(valueOf);
                        throw new GeneralSecurityException(sb.toString());
                    }
                } else {
                    int i7 = bitLength * 2;
                    byte[] bArr4 = new byte[i7];
                    byte[] byteArray4 = w.getAffineX().toByteArray();
                    byte[] bArr5 = byteArray4;
                    if (byteArray4.length > bitLength) {
                        bArr5 = Arrays.copyOfRange(byteArray4, byteArray4.length - bitLength, byteArray4.length);
                    }
                    byte[] byteArray5 = w.getAffineY().toByteArray();
                    byte[] bArr6 = byteArray5;
                    if (byteArray5.length > bitLength) {
                        bArr6 = Arrays.copyOfRange(byteArray5, byteArray5.length - bitLength, byteArray5.length);
                    }
                    System.arraycopy(bArr6, 0, bArr4, i7 - bArr6.length, bArr6.length);
                    System.arraycopy(bArr5, 0, bArr4, bitLength - bArr5.length, bArr5.length);
                    bArr3 = bArr4;
                }
                byte[] a3 = zzegl.m12575a(new byte[]{bArr3, a2});
                Mac a4 = zzehb.f28024g.m12561a(str);
                if (i <= a4.getMacLength() * 255) {
                    if (bArr == null || bArr.length == 0) {
                        a4.init(new SecretKeySpec(new byte[a4.getMacLength()], str));
                    } else {
                        a4.init(new SecretKeySpec(bArr, str));
                    }
                    byte[] doFinal = a4.doFinal(a3);
                    byte[] bArr7 = new byte[i];
                    a4.init(new SecretKeySpec(doFinal, str));
                    byte[] bArr8 = new byte[0];
                    int i8 = 0;
                    while (true) {
                        a4.update(bArr8);
                        a4.update(bArr2);
                        a4.update((byte) i2);
                        bArr8 = a4.doFinal();
                        if (bArr8.length + i8 < i) {
                            System.arraycopy(bArr8, 0, bArr7, i8, bArr8.length);
                            i8 += bArr8.length;
                            i2++;
                        } else {
                            System.arraycopy(bArr8, 0, bArr7, i8, i - i8);
                            return new zzegv(bArr3, bArr7);
                        }
                    }
                } else {
                    throw new GeneralSecurityException("size too large");
                }
            } else {
                throw new GeneralSecurityException("invalid public key spec");
            }
        } catch (IllegalArgumentException | NullPointerException e) {
            throw new GeneralSecurityException(e.toString());
        }
    }
}
