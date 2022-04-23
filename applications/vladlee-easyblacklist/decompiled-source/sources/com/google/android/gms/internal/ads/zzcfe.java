package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfe.class */
public final class zzcfe {

    /* renamed from: a */
    private final zzdhd f13071a;

    /* renamed from: b */
    private final zzdhd f13072b;

    /* renamed from: c */
    private final zzcgi f13073c;

    /* renamed from: d */
    private final zzdxa<zzcgw> f13074d;

    public zzcfe(zzdhd zzdhdVar, zzdhd zzdhdVar2, zzcgi zzcgiVar, zzdxa<zzcgw> zzdxaVar) {
        this.f13071a = zzdhdVar;
        this.f13072b = zzdhdVar2;
        this.f13073c = zzcgiVar;
        this.f13074d = zzdxaVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m3786a(zzaqk zzaqkVar) {
        return this.f13074d.get().zzh(zzaqkVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final /* synthetic */ InputStream m3785b(zzaqk zzaqkVar) {
        return this.f13073c.zzf(zzaqkVar).get(((Integer) zzve.zzoy().zzd(zzzn.zzcox)).intValue(), TimeUnit.SECONDS);
    }

    public final zzdhe<InputStream> zzc(final zzaqk zzaqkVar) {
        String str = zzaqkVar.packageName;
        zzq.zzkq();
        return zzdgs.zzb(zzawb.zzem(str) ? zzdgs.zzk(new zzcgr(0)) : zzdgs.zzb(this.f13071a.zzd(new Callable(this, zzaqkVar) { // from class: com.google.android.gms.internal.ads.rd

            /* renamed from: a */
            private final zzcfe f10404a;

            /* renamed from: b */
            private final zzaqk f10405b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10404a = this;
                this.f10405b = zzaqkVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10404a.m3785b(this.f10405b);
            }
        }), ExecutionException.class, C2192rf.f10408a, this.f13072b), zzcgr.class, new zzdgf(this, zzaqkVar) { // from class: com.google.android.gms.internal.ads.re

            /* renamed from: a */
            private final zzcfe f10406a;

            /* renamed from: b */
            private final zzaqk f10407b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10406a = this;
                this.f10407b = zzaqkVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return this.f10406a.m3786a(this.f10407b);
            }
        }, this.f13072b);
    }
}
