package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqm.class */
public final class zzcqm implements zzcub<zzcqn> {

    /* renamed from: a */
    private final zzdhd f13740a;

    /* renamed from: b */
    private final zzczu f13741b;

    public zzcqm(zzdhd zzdhdVar, zzczu zzczuVar) {
        this.f13740a = zzdhdVar;
        this.f13741b = zzczuVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzcqn m3704a() {
        return new zzcqn(this.f13741b.zzgmp);
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcqn> zzanc() {
        return this.f13740a.zzd(new Callable(this) { // from class: com.google.android.gms.internal.ads.vr

            /* renamed from: a */
            private final zzcqm f10631a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10631a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10631a.m3704a();
            }
        });
    }
}
