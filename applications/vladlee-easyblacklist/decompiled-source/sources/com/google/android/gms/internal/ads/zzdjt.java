package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdjt.class */
public final class zzdjt implements zzdhx {

    /* renamed from: a */
    private static final byte[] f14362a = new byte[0];

    /* renamed from: b */
    private final zzdng f14363b;

    /* renamed from: c */
    private final zzdhx f14364c;

    public zzdjt(zzdng zzdngVar, zzdhx zzdhxVar) {
        this.f14363b = zzdngVar;
        this.f14364c = zzdhxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdhx
    public final byte[] zzc(byte[] bArr, byte[] bArr2) {
        byte[] byteArray = zzdit.zzb(this.f14363b).toByteArray();
        byte[] zzc = this.f14364c.zzc(byteArray, f14362a);
        byte[] zzc2 = ((zzdhx) zzdit.zza(this.f14363b.zzavi(), byteArray, zzdhx.class)).zzc(bArr, bArr2);
        return ByteBuffer.allocate(zzc.length + 4 + zzc2.length).putInt(zzc.length).put(zzc).put(zzc2).array();
    }
}
