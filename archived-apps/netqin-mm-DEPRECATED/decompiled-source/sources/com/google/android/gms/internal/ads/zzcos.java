package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzwm;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.C4182wl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcos.class */
public final class zzcos implements zzeoy<zzdzc<String>> {

    /* renamed from: a */
    public final zzeph<zzdsi> f26353a;

    /* renamed from: b */
    public final zzeph<Context> f26354b;

    public zzcos(zzeph<zzdsi> zzephVar, zzeph<Context> zzephVar2) {
        this.f26353a = zzephVar;
        this.f26354b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcos m13969a(zzeph<zzdsi> zzephVar, zzeph<Context> zzephVar2) {
        return new zzcos(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzdsi zzdsiVar = this.f26353a.get();
        final CookieManager c = zzp.m17967e().mo16028c(this.f26354b.get());
        zzdrr a = zzdsiVar.m13273a((zzdsi) zzdsf.WEBVIEW_COOKIE).m13265a(new Callable(c) { // from class: c.d.b.d.g.a.xl

            /* renamed from: a */
            public final CookieManager f16056a;

            {
                this.f16056a = c;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                CookieManager cookieManager = this.f16056a;
                if (cookieManager == null) {
                    return "";
                }
                return cookieManager.getCookie((String) zzwm.m11166e().m16921a(zzabb.f23851m0));
            }
        }).m13262a(1L, TimeUnit.SECONDS).m13257a(Exception.class, C4182wl.f15955a).m13263a();
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }
}
