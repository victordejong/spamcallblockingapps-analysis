package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdoz.class */
public final class zzdoz implements zzdhx {

    /* renamed from: a */
    private final zzdpi f14438a;

    /* renamed from: b */
    private final zzdio f14439b;

    /* renamed from: c */
    private final int f14440c;

    public zzdoz(zzdpi zzdpiVar, zzdio zzdioVar, int i) {
        this.f14438a = zzdpiVar;
        this.f14439b = zzdioVar;
        this.f14440c = i;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r4v1, types: [byte[], byte[][]] */
    @Override // com.google.android.gms.internal.ads.zzdhx
    public final byte[] zzc(byte[] bArr, byte[] bArr2) {
        byte[] zzp = this.f14438a.zzp(bArr);
        byte[] bArr3 = bArr2;
        if (bArr2 == null) {
            bArr3 = new byte[0];
        }
        return zzdoi.zza(new byte[]{zzp, this.f14439b.zzl(zzdoi.zza(new byte[]{bArr3, zzp, Arrays.copyOf(ByteBuffer.allocate(8).putLong(bArr3.length * 8).array(), 8)}))});
    }
}
