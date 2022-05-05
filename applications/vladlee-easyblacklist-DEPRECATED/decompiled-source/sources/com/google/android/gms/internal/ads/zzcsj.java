package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsj.class */
public final class zzcsj implements zzcub<zzcsg> {

    /* renamed from: a */
    private final zzdhd f13813a;

    /* renamed from: b */
    private final zzczj f13814b;

    public zzcsj(zzdhd zzdhdVar, zzczj zzczjVar) {
        this.f13813a = zzdhdVar;
        this.f13814b = zzczjVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzcsg m3699a() {
        return new zzcsg(this.f13814b);
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcsg> zzanc() {
        return this.f13813a.zzd(new Callable(this) { // from class: com.google.android.gms.internal.ads.wi

            /* renamed from: a */
            private final zzcsj f10653a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10653a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10653a.m3699a();
            }
        });
    }
}
