package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.zzq;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfq.class */
public final class zzcfq implements zzdxg<zzdhe<String>> {

    /* renamed from: a */
    private final zzdxp<zzdcr> f13092a;

    /* renamed from: b */
    private final zzdxp<Context> f13093b;

    private zzcfq(zzdxp<zzdcr> zzdxpVar, zzdxp<Context> zzdxpVar2) {
        this.f13092a = zzdxpVar;
        this.f13093b = zzdxpVar2;
    }

    public static zzcfq zzad(zzdxp<zzdcr> zzdxpVar, zzdxp<Context> zzdxpVar2) {
        return new zzcfq(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        zzdcr zzdcrVar = this.f13092a.get();
        final Context context = this.f13093b.get();
        return (zzdhe) zzdxm.zza(zzdcrVar.zzu(zzdco.WEBVIEW_COOKIE).zzc(new Callable(context) { // from class: com.google.android.gms.internal.ads.rg

            /* renamed from: a */
            private final Context f10409a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10409a = context;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                CookieManager zzbd = zzq.zzks().zzbd(this.f10409a);
                return zzbd != null ? zzbd.getCookie("googleads.g.doubleclick.net") : "";
            }
        }).zza(1L, TimeUnit.SECONDS).zza(Exception.class, C2195ri.f10412a).zzaqg(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
