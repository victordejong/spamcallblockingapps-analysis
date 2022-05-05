package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcuv.class */
public final class zzcuv implements zzcub<zzcus> {

    /* renamed from: a */
    private final zzava f13930a;

    /* renamed from: b */
    private final Executor f13931b;

    /* renamed from: c */
    private final String f13932c;

    /* renamed from: d */
    private final PackageInfo f13933d;

    public zzcuv(zzava zzavaVar, Executor executor, String str, PackageInfo packageInfo) {
        this.f13930a = zzavaVar;
        this.f13931b = executor;
        this.f13932c = str;
        this.f13933d = packageInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m3686a() {
        return zzdgs.zzaj(new zzcus(this.f13932c));
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcus> zzanc() {
        return zzdgs.zzb(zzdgs.zzb(this.f13930a.zza(this.f13932c, this.f13933d), C2356xh.f10686a, this.f13931b), Throwable.class, new zzdgf(this) { // from class: com.google.android.gms.internal.ads.xi

            /* renamed from: a */
            private final zzcuv f10687a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10687a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return this.f10687a.m3686a();
            }
        }, this.f13931b);
    }
}
