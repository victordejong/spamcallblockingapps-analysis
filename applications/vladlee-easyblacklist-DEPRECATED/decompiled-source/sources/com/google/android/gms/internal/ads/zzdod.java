package com.google.android.gms.internal.ads;

import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdod.class */
public final class zzdod implements zzdio {

    /* renamed from: a */
    private final SecretKey f14399a;

    /* renamed from: b */
    private final int f14400b;

    /* renamed from: c */
    private byte[] f14401c;

    /* renamed from: d */
    private byte[] f14402d;

    public zzdod(byte[] bArr, int i) {
        zzdpo.zzez(bArr.length);
        if (i < 10) {
            throw new InvalidAlgorithmParameterException("tag size too small, min is 10 bytes");
        } else if (i <= 16) {
            this.f14399a = new SecretKeySpec(bArr, "AES");
            this.f14400b = i;
            Cipher a = m3424a();
            a.init(1, this.f14399a);
            this.f14401c = agm.m5442a(a.doFinal(new byte[16]));
            this.f14402d = agm.m5442a(this.f14401c);
        } else {
            throw new InvalidAlgorithmParameterException("tag size too large, max is 16 bytes");
        }
    }

    /* renamed from: a */
    private static Cipher m3424a() {
        return zzdoy.zzhgg.zzhd("AES/ECB/NoPadding");
    }

    @Override // com.google.android.gms.internal.ads.zzdio
    public final byte[] zzl(byte[] bArr) {
        byte[] bArr2;
        Cipher a = m3424a();
        a.init(1, this.f14399a);
        int max = Math.max(1, (int) Math.ceil(bArr.length / 16.0d));
        if ((max << 4) == bArr.length) {
            bArr2 = zzdoi.zza(bArr, (max - 1) << 4, this.f14401c, 0, 16);
        } else {
            byte[] copyOfRange = Arrays.copyOfRange(bArr, (max - 1) << 4, bArr.length);
            if (copyOfRange.length < 16) {
                byte[] copyOf = Arrays.copyOf(copyOfRange, 16);
                copyOf[copyOfRange.length] = (byte) (-128);
                bArr2 = zzdoi.zzd(copyOf, this.f14402d);
            } else {
                throw new IllegalArgumentException("x must be smaller than a block.");
            }
        }
        byte[] bArr3 = new byte[16];
        for (int i = 0; i < max - 1; i++) {
            bArr3 = a.doFinal(zzdoi.zza(bArr3, 0, bArr, i << 4, 16));
        }
        byte[] zzd = zzdoi.zzd(bArr2, bArr3);
        byte[] bArr4 = new byte[this.f14400b];
        System.arraycopy(a.doFinal(zzd), 0, bArr4, 0, this.f14400b);
        return bArr4;
    }
}
