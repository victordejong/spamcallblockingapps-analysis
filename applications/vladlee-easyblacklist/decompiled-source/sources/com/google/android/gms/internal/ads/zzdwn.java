package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwn.class */
public abstract class zzdwn extends zzdwl implements zzbf {

    /* renamed from: b */
    private int f14677b;

    /* renamed from: c */
    private int f14678c;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzdwn(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final long m3298a(ByteBuffer byteBuffer) {
        this.f14677b = zzbg.zza(byteBuffer.get());
        this.f14678c = (zzbg.zzb(byteBuffer) << 8) + 0 + zzbg.zza(byteBuffer.get());
        return 4L;
    }

    public final int getVersion() {
        if (!this.f14662a) {
            zzbdj();
        }
        return this.f14677b;
    }
}
