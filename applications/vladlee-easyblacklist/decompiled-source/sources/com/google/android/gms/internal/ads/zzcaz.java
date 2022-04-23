package com.google.android.gms.internal.ads;

import javax.annotation.ParametersAreNonnullByDefault;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcaz.class */
public final class zzcaz implements zzafx {

    /* renamed from: a */
    private final zzbpm f12852a;

    /* renamed from: b */
    private final zzasd f12853b;

    /* renamed from: c */
    private final String f12854c;

    /* renamed from: d */
    private final String f12855d;

    public zzcaz(zzbpm zzbpmVar, zzczl zzczlVar) {
        this.f12852a = zzbpmVar;
        this.f12853b = zzczlVar.zzdky;
        this.f12854c = zzczlVar.zzdcx;
        this.f12855d = zzczlVar.zzdcy;
    }

    @Override // com.google.android.gms.internal.ads.zzafx
    @ParametersAreNonnullByDefault
    public final void zza(zzasd zzasdVar) {
        int i;
        String str;
        zzasd zzasdVar2 = this.f12853b;
        if (zzasdVar2 != null) {
            zzasdVar = zzasdVar2;
        }
        if (zzasdVar != null) {
            str = zzasdVar.type;
            i = zzasdVar.zzdno;
        } else {
            str = "";
            i = 1;
        }
        this.f12852a.zzb(new zzarc(str, i), this.f12854c, this.f12855d);
    }

    @Override // com.google.android.gms.internal.ads.zzafx
    public final void zzrs() {
        this.f12852a.onRewardedVideoStarted();
    }

    @Override // com.google.android.gms.internal.ads.zzafx
    public final void zzrt() {
        this.f12852a.onRewardedVideoCompleted();
    }
}
