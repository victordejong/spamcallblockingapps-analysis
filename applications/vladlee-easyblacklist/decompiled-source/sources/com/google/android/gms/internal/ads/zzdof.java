package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdof.class */
public final class zzdof implements zzdpi {

    /* renamed from: a */
    private final SecretKeySpec f14407a;

    /* renamed from: b */
    private final int f14408b;

    /* renamed from: c */
    private final int f14409c = zzdoy.zzhgg.zzhd("AES/CTR/NoPadding").getBlockSize();

    public zzdof(byte[] bArr, int i) {
        zzdpo.zzez(bArr.length);
        this.f14407a = new SecretKeySpec(bArr, "AES");
        if (i < 12 || i > this.f14409c) {
            throw new GeneralSecurityException("invalid IV size");
        }
        this.f14408b = i;
    }

    @Override // com.google.android.gms.internal.ads.zzdpi
    public final byte[] zzp(byte[] bArr) {
        int length = bArr.length;
        int i = this.f14408b;
        if (length <= Api.BaseClientBuilder.API_PRIORITY_OTHER - i) {
            byte[] bArr2 = new byte[bArr.length + i];
            byte[] zzey = zzdpn.zzey(i);
            System.arraycopy(zzey, 0, bArr2, 0, this.f14408b);
            int length2 = bArr.length;
            int i2 = this.f14408b;
            Cipher zzhd = zzdoy.zzhgg.zzhd("AES/CTR/NoPadding");
            byte[] bArr3 = new byte[this.f14409c];
            System.arraycopy(zzey, 0, bArr3, 0, this.f14408b);
            zzhd.init(1, this.f14407a, new IvParameterSpec(bArr3));
            if (zzhd.doFinal(bArr, 0, length2, bArr2, i2) == length2) {
                return bArr2;
            }
            throw new GeneralSecurityException("stored output's length does not match input's length");
        }
        StringBuilder sb = new StringBuilder(43);
        sb.append("plaintext length can not exceed ");
        sb.append(Api.BaseClientBuilder.API_PRIORITY_OTHER - i);
        throw new GeneralSecurityException(sb.toString());
    }
}
