package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdg.class */
public final class zzcdg implements zzdxg<Set<zzbsu<zzdcx>>> {

    /* renamed from: a */
    private final zzdxp<String> f12967a;

    /* renamed from: b */
    private final zzdxp<Context> f12968b;

    /* renamed from: c */
    private final zzdxp<Executor> f12969c;

    /* renamed from: d */
    private final zzdxp<Map<zzdco, zzcdh>> f12970d;

    public zzcdg(zzdxp<String> zzdxpVar, zzdxp<Context> zzdxpVar2, zzdxp<Executor> zzdxpVar3, zzdxp<Map<zzdco, zzcdh>> zzdxpVar4) {
        this.f12967a = zzdxpVar;
        this.f12968b = zzdxpVar2;
        this.f12969c = zzdxpVar3;
        this.f12970d = zzdxpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        Set set;
        final String str = this.f12967a.get();
        Context context = this.f12968b.get();
        Executor executor = this.f12969c.get();
        Map<zzdco, zzcdh> map = this.f12970d.get();
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcnw)).booleanValue()) {
            zzsm zzsmVar = new zzsm(new zzsr(context));
            zzsmVar.zza(new zzsp(str) { // from class: com.google.android.gms.internal.ads.qo

                /* renamed from: a */
                private final String f10370a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10370a = str;
                }

                @Override // com.google.android.gms.internal.ads.zzsp
                public final void zza(zztu zztuVar) {
                    zztuVar.zzcaq = this.f10370a;
                }
            });
            set = Collections.singleton(new zzbsu(new zzcdf(zzsmVar, map), executor));
        } else {
            set = Collections.emptySet();
        }
        return (Set) zzdxm.zza(set, "Cannot return null from a non-@Nullable @Provides method");
    }
}
