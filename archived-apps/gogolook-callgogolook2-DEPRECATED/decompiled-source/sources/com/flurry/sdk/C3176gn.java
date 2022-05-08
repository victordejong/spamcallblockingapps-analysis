package com.flurry.sdk;

import android.content.Context;
import java.lang.ref.WeakReference;
/* renamed from: com.flurry.sdk.gn */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gn.class */
public class C3176gn {

    /* renamed from: b */
    public C3160gi f5223b;

    /* renamed from: d */
    public C2904ca f5225d;

    /* renamed from: e */
    public EnumC3177a f5226e;

    /* renamed from: a */
    public final String f5222a = C3176gn.class.getSimpleName();

    /* renamed from: c */
    public WeakReference<Context> f5224c = new WeakReference<>(null);

    /* renamed from: com.flurry.sdk.gn$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gn$a.class */
    public enum EnumC3177a {
        NONE,
        LOADING,
        PREPARED,
        READY
    }

    /* renamed from: a */
    public final void m32938a() {
        C3356jq.m32615a(3, this.f5222a, "clearing webviews");
        this.f5226e = null;
        this.f5224c = new WeakReference<>(null);
        this.f5223b = null;
    }

    /* renamed from: a */
    public final void m32937a(Context context, C2904ca caVar) {
        if (context != null) {
            C3356jq.m32615a(3, this.f5222a, "setting mContext");
            this.f5224c = new WeakReference<>(context);
            if (caVar != null) {
                this.f5225d = caVar;
            }
        }
    }

    /* renamed from: a */
    public final void m32936a(EnumC3177a aVar) {
        synchronized (this) {
            EnumC3177a aVar2 = aVar;
            if (aVar == null) {
                aVar2 = EnumC3177a.NONE;
            }
            String str = this.f5222a;
            C3356jq.m32615a(3, str, "Setting FlurryWebViewState from " + this.f5226e + " to " + aVar2 + " for mContext: " + this.f5224c);
            this.f5226e = aVar2;
        }
    }

    /* renamed from: b */
    public final void m32935b() {
        this.f5223b.loadUrl("javascript:var closeButtonDiv =  document.getElementById('flurry_interstitial_close');if (typeof(closeButtonDiv) == 'undefined' || closeButtonDiv == null){var newdiv = document.createElement('div');var divIdName = 'flurry_interstitial_close';newdiv.setAttribute('id',divIdName);newdiv.innerHTML = '<a href=\"flurry://flurrycall?event=adWillClose\"><div id=\"rtb_close\"><img src=\"http://cdn.flurry.com/adSpaceStyles.dev/images/bttn-close-bw.png\" alt=\"close advertisement\" /></div></a></div>';document.body.appendChild(newdiv);}");
    }

    /* renamed from: c */
    public final C3160gi m32934c() {
        if (this.f5223b == null || EnumC3177a.NONE.equals(this.f5226e)) {
            WeakReference<Context> weakReference = this.f5224c;
            if (weakReference != null) {
                this.f5223b = new C3160gi(weakReference.get(), this.f5225d);
                m32936a(EnumC3177a.LOADING);
            } else {
                C3356jq.m32615a(3, this.f5222a, "mContext is null");
                return null;
            }
        } else if (this.f5223b == null || EnumC3177a.NONE.equals(this.f5226e)) {
            C3356jq.m32615a(3, this.f5222a, "fWebView is null");
            return null;
        } else {
            C3356jq.m32615a(3, this.f5222a, "fWebView is not null");
        }
        return this.f5223b;
    }
}
