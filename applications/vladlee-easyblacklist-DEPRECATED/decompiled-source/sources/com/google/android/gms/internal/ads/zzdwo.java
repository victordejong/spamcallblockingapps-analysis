package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwo.class */
public class zzdwo extends zzdwq implements zzbf {

    /* renamed from: f */
    private zzbi f14679f;

    /* renamed from: g */
    private String f14680g;

    /* renamed from: h */
    private boolean f14681h;

    /* renamed from: i */
    private long f14682i;

    public zzdwo(String str) {
        this.f14680g = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final String getType() {
        return this.f14680g;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final void zza(zzbi zzbiVar) {
        this.f14679f = zzbiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdwq
    public final void zza(zzdws zzdwsVar, long j, zzbe zzbeVar) {
        this.f14686b = zzdwsVar;
        this.f14687c = zzdwsVar.position();
        this.f14688d = this.f14687c - ((this.f14681h || 8 + j >= 4294967296L) ? 16 : 8);
        zzdwsVar.zzfc(zzdwsVar.position() + j);
        this.f14689e = zzdwsVar.position();
        this.f14685a = zzbeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final void zza(zzdws zzdwsVar, ByteBuffer byteBuffer, long j, zzbe zzbeVar) {
        this.f14682i = zzdwsVar.position() - byteBuffer.remaining();
        this.f14681h = byteBuffer.remaining() == 16;
        zza(zzdwsVar, j, zzbeVar);
    }
}
