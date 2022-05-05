package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ads.zzavs;
import com.google.android.gms.internal.ads.zzvh;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.ads.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/b.class */
public final class C1544b extends WebViewClient {

    /* renamed from: a */
    private final /* synthetic */ zzl f5902a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1544b(zzl zzlVar) {
        this.f5902a = zzlVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        zzvh zzvhVar;
        zzvh zzvhVar2;
        zzvhVar = this.f5902a.f5966g;
        if (zzvhVar != null) {
            try {
                zzvhVar2 = this.f5902a.f5966g;
                zzvhVar2.onAdFailedToLoad(0);
            } catch (RemoteException e) {
                zzavs.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        zzvh zzvhVar;
        zzvh zzvhVar2;
        String b;
        zzvh zzvhVar3;
        zzvh zzvhVar4;
        zzvh zzvhVar5;
        zzvh zzvhVar6;
        zzvh zzvhVar7;
        zzvh zzvhVar8;
        if (str.startsWith(this.f5902a.m6037b())) {
            return false;
        }
        if (str.startsWith("gmsg://noAdLoaded")) {
            zzvhVar7 = this.f5902a.f5966g;
            if (zzvhVar7 != null) {
                try {
                    zzvhVar8 = this.f5902a.f5966g;
                    zzvhVar8.onAdFailedToLoad(3);
                } catch (RemoteException e) {
                    zzavs.zze("#007 Could not call remote method.", e);
                }
            }
            this.f5902a.m6042a(0);
            return true;
        } else if (str.startsWith("gmsg://scriptLoadFailed")) {
            zzvhVar5 = this.f5902a.f5966g;
            if (zzvhVar5 != null) {
                try {
                    zzvhVar6 = this.f5902a.f5966g;
                    zzvhVar6.onAdFailedToLoad(0);
                } catch (RemoteException e2) {
                    zzavs.zze("#007 Could not call remote method.", e2);
                }
            }
            this.f5902a.m6042a(0);
            return true;
        } else if (str.startsWith("gmsg://adResized")) {
            zzvhVar3 = this.f5902a.f5966g;
            if (zzvhVar3 != null) {
                try {
                    zzvhVar4 = this.f5902a.f5966g;
                    zzvhVar4.onAdLoaded();
                } catch (RemoteException e3) {
                    zzavs.zze("#007 Could not call remote method.", e3);
                }
            }
            this.f5902a.m6042a(this.f5902a.m6038a(str));
            return true;
        } else if (str.startsWith("gmsg://")) {
            return true;
        } else {
            zzvhVar = this.f5902a.f5966g;
            if (zzvhVar != null) {
                try {
                    zzvhVar2 = this.f5902a.f5966g;
                    zzvhVar2.onAdLeftApplication();
                } catch (RemoteException e4) {
                    zzavs.zze("#007 Could not call remote method.", e4);
                }
            }
            b = this.f5902a.m6034b(str);
            zzl.m6035b(this.f5902a, b);
            return true;
        }
    }
}
