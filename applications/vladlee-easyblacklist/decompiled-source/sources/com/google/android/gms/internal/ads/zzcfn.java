package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfn.class */
public final class zzcfn implements zzdxg<zzdhe<String>> {

    /* renamed from: a */
    private final zzdxp<zzdq> f13085a;

    /* renamed from: b */
    private final zzdxp<Context> f13086b;

    /* renamed from: c */
    private final zzdxp<zzdhd> f13087c;

    private zzcfn(zzdxp<zzdq> zzdxpVar, zzdxp<Context> zzdxpVar2, zzdxp<zzdhd> zzdxpVar3) {
        this.f13085a = zzdxpVar;
        this.f13086b = zzdxpVar2;
        this.f13087c = zzdxpVar3;
    }

    public static zzcfn zzm(zzdxp<zzdq> zzdxpVar, zzdxp<Context> zzdxpVar2, zzdxp<zzdhd> zzdxpVar3) {
        return new zzcfn(zzdxpVar, zzdxpVar2, zzdxpVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        final zzdq zzdqVar = this.f13085a.get();
        final Context context = this.f13086b.get();
        return (zzdhe) zzdxm.zza(this.f13087c.get().zzd(new Callable(zzdqVar, context) { // from class: com.google.android.gms.internal.ads.rh

            /* renamed from: a */
            private final zzdq f10410a;

            /* renamed from: b */
            private final Context f10411b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10410a = zzdqVar;
                this.f10411b = context;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzdq zzdqVar2 = this.f10410a;
                return zzdqVar2.zzbw().zzb(this.f10411b);
            }
        }), "Cannot return null from a non-@Nullable @Provides method");
    }
}
