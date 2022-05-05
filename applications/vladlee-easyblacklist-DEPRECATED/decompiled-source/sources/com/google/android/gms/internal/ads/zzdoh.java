package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdoh.class */
public final class zzdoh implements zzdhx {

    /* renamed from: a */
    private static final ThreadLocal<Cipher> f14410a = new agl();

    /* renamed from: b */
    private final SecretKey f14411b;

    public zzdoh(byte[] bArr) {
        zzdpo.zzez(bArr.length);
        this.f14411b = new SecretKeySpec(bArr, "AES");
    }

    /* renamed from: a */
    private static AlgorithmParameterSpec m3420a(byte[] bArr, int i) {
        try {
            Class.forName("javax.crypto.spec.GCMParameterSpec");
            return new GCMParameterSpec(128, bArr, 0, i);
        } catch (ClassNotFoundException e) {
            if (zzdpp.zzaxh()) {
                return new IvParameterSpec(bArr, 0, i);
            }
            throw new GeneralSecurityException("cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdhx
    public final byte[] zzc(byte[] bArr, byte[] bArr2) {
        if (bArr.length <= 2147483619) {
            byte[] bArr3 = new byte[bArr.length + 12 + 16];
            byte[] zzey = zzdpn.zzey(12);
            System.arraycopy(zzey, 0, bArr3, 0, 12);
            f14410a.get().init(1, this.f14411b, m3420a(zzey, zzey.length));
            if (!(bArr2 == null || bArr2.length == 0)) {
                f14410a.get().updateAAD(bArr2);
            }
            int doFinal = f14410a.get().doFinal(bArr, 0, bArr.length, bArr3, 12);
            if (doFinal == bArr.length + 16) {
                return bArr3;
            }
            throw new GeneralSecurityException(String.format("encryption failed; GCM tag must be %s bytes, but got only %s bytes", 16, Integer.valueOf(doFinal - bArr.length)));
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
