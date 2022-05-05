package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.google.android.gms.internal.ads.zzbei;
import com.google.android.gms.internal.ads.zzbeq;
import com.google.android.gms.internal.ads.zzbes;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbee.class */
public final class zzbee<WebViewT extends zzbei & zzbeq & zzbes> {

    /* renamed from: a */
    private final zzbej f11777a;

    /* renamed from: b */
    private final WebViewT f11778b;

    private zzbee(WebViewT webviewt, zzbej zzbejVar) {
        this.f11777a = zzbejVar;
        this.f11778b = webviewt;
    }

    public static zzbee<zzbdi> zzc(final zzbdi zzbdiVar) {
        return new zzbee<>(zzbdiVar, new zzbej(zzbdiVar) { // from class: com.google.android.gms.internal.ads.jh

            /* renamed from: a */
            private final zzbdi f8732a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8732a = zzbdiVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbej
            public final void zzh(Uri uri) {
                zzbev zzaaa = this.f8732a.zzaaa();
                if (zzaaa == null) {
                    zzavs.zzex("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
                } else {
                    zzaaa.zzh(uri);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4105a(String str) {
        this.f11777a.zzh(Uri.parse(str));
    }

    @JavascriptInterface
    public final String getClickSignals(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = "Click string is empty, not proceeding.";
        } else {
            zzdq zzaad = this.f11778b.zzaad();
            if (zzaad == null) {
                str2 = "Signal utils is empty, ignoring.";
            } else {
                zzdg zzbw = zzaad.zzbw();
                if (zzbw == null) {
                    str2 = "Signals object is empty, ignoring.";
                } else if (this.f11778b.getContext() != null) {
                    return zzbw.zza(this.f11778b.getContext(), str, this.f11778b.getView(), this.f11778b.zzyn());
                } else {
                    str2 = "Context is null, ignoring.";
                }
            }
        }
        zzavs.zzed(str2);
        return "";
    }

    @JavascriptInterface
    public final void notify(final String str) {
        if (TextUtils.isEmpty(str)) {
            zzavs.zzez("URL is empty, ignoring message");
        } else {
            zzawb.zzdsr.post(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.jg

                /* renamed from: a */
                private final zzbee f8730a;

                /* renamed from: b */
                private final String f8731b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8730a = this;
                    this.f8731b = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f8730a.m4105a(this.f8731b);
                }
            });
        }
    }
}
