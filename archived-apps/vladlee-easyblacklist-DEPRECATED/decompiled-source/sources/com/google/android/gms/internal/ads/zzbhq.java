package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhq.class */
public class zzbhq {

    /* renamed from: a */
    private zza f11890a;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhq$zza.class */
    public static abstract class zza {
        public abstract zzbcv zzacw();

        public abstract zzbaj zzacx();

        public abstract zzsr zzacy();

        public abstract zzatq zzacz();
    }

    public zzbhq(zza zzaVar) {
        this.f11890a = zzaVar;
    }

    public final zzatq zzacz() {
        return this.f11890a.zzacz();
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.gms.internal.ads.zzatr, com.google.android.gms.internal.ads.zzatl] */
    public final com.google.android.gms.ads.internal.zza zzaex() {
        zza zzaVar = this.f11890a;
        return new com.google.android.gms.ads.internal.zza(zzaVar.zzacw(), zzaVar.zzacx(), new zzatl(zzaVar.zzacz()), zzaVar.zzacy());
    }
}
