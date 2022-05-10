package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzbhe;
import com.google.android.gms.internal.ads.zzbhi;
import com.google.android.gms.internal.ads.zzbhq;
import com.google.android.gms.internal.ads.zzbhs;
import com.google.android.gms.internal.ads.zzbhv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhe.class */
public final class zzbhe<WebViewT extends zzbhi & zzbhq & zzbhs> {

    /* renamed from: a */
    public final zzbhj f24997a;

    /* renamed from: b */
    public final WebViewT f24998b;

    public zzbhe(WebViewT webviewt, zzbhj zzbhjVar) {
        this.f24997a = zzbhjVar;
        this.f24998b = webviewt;
    }

    /* renamed from: a */
    public static zzbhe<zzbgj> m15530a(final zzbgj zzbgjVar) {
        return new zzbhe<>(zzbgjVar, new zzbhj(zzbgjVar) { // from class: c.d.b.d.g.a.aa

            /* renamed from: a */
            public final zzbgj f12075a;

            {
                this.f12075a = zzbgjVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbhj
            /* renamed from: a */
            public final void mo15527a(Uri uri) {
                zzbhv z = this.f12075a.mo15543z();
                if (z == null) {
                    zzbbq.m15856b("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
                } else {
                    z.mo15497a(uri);
                }
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m15529a(String str) {
        this.f24997a.mo15527a(Uri.parse(str));
    }

    @JavascriptInterface
    public final String getClickSignals(String str) {
        if (TextUtils.isEmpty(str)) {
            zzayp.m16153g("Click string is empty, not proceeding.");
            return "";
        }
        zzeg h = this.f24998b.mo15518h();
        if (h == null) {
            zzayp.m16153g("Signal utils is empty, ignoring.");
            return "";
        }
        zzdw a = h.m12604a();
        if (a == null) {
            zzayp.m16153g("Signals object is empty, ignoring.");
            return "";
        } else if (this.f24998b.getContext() != null) {
            return a.mo13021a(this.f24998b.getContext(), str, this.f24998b.getView(), this.f24998b.mo15528b());
        } else {
            zzayp.m16153g("Context is null, ignoring.");
            return "";
        }
    }

    @JavascriptInterface
    public final void notify(final String str) {
        if (TextUtils.isEmpty(str)) {
            zzbbq.m15852d("URL is empty, ignoring message");
        } else {
            zzayu.f24665h.post(new Runnable(this, str) { // from class: c.d.b.d.g.a.z9

                /* renamed from: a */
                public final zzbhe f16266a;

                /* renamed from: b */
                public final String f16267b;

                {
                    this.f16266a = this;
                    this.f16267b = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f16266a.m15529a(this.f16267b);
                }
            });
        }
    }
}
