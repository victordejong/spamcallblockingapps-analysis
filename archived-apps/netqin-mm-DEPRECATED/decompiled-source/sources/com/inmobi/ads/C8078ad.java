package com.inmobi.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.moat.analytics.mobile.inm.WebAdTracker;
import java.lang.ref.WeakReference;
import java.util.Map;
/* renamed from: com.inmobi.ads.ad */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ad.class */
public class C8078ad extends AbstractC8212ca {

    /* renamed from: d */
    public static final String f31587d = "ad";

    /* renamed from: e */
    public final WeakReference<Activity> f31588e;

    /* renamed from: f */
    public final AbstractC8213cb f31589f;

    /* renamed from: g */
    public final Map<String, Object> f31590g;

    /* renamed from: h */
    public WebAdTracker f31591h;

    public C8078ad(AdContainer adContainer, Activity activity, AbstractC8213cb cbVar, Map<String, Object> map) {
        super(adContainer);
        this.f31588e = new WeakReference<>(activity);
        this.f31589f = cbVar;
        this.f31590g = map;
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final View mo5945a() {
        return this.f31589f.mo5945a();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final View mo5941a(View view, ViewGroup viewGroup, boolean z) {
        return this.f31589f.mo5941a(view, viewGroup, z);
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5944a(int i) {
        this.f31589f.mo5944a(i);
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5943a(Context context, int i) {
        this.f31589f.mo5943a(context, i);
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5937a(View... viewArr) {
        try {
            try {
                Activity activity = this.f31588e.get();
                if (this.f31589f.mo5935c().f31992k.f32065i && activity != null && ((Boolean) this.f31590g.get("enabled")).booleanValue()) {
                    if (this.f31591h == null) {
                        if (this.f32074a instanceof C8083ah) {
                            C8083ah ahVar = (C8083ah) this.f32074a;
                            if (ahVar.m6476s() != null) {
                                this.f31591h = C8320z.m5911a(activity.getApplication(), ahVar.m6476s());
                            }
                        } else {
                            View b = this.f31589f.mo5936b();
                            if (b != null) {
                                this.f31591h = C8320z.m5911a(activity.getApplication(), (WebView) b);
                            }
                        }
                    }
                    if (this.f31591h != null) {
                        this.f31591h.startTracking();
                    }
                }
            } catch (Exception e) {
                new StringBuilder("Exception in startTrackingForImpression with message : ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            this.f31589f.mo5937a(viewArr);
        } catch (Throwable th) {
            this.f31589f.mo5937a(viewArr);
            throw th;
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: b */
    public final View mo5936b() {
        return this.f31589f.mo5936b();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: c */
    public final C8197c mo5935c() {
        return this.f31589f.mo5935c();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: d */
    public final void mo5934d() {
        try {
            try {
                if (this.f31591h != null) {
                    this.f31591h.stopTracking();
                }
            } catch (Exception e) {
                new StringBuilder("Exception in stopTrackingForImpression with message : ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            this.f31589f.mo5934d();
        } catch (Throwable th) {
            this.f31589f.mo5934d();
            throw th;
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: e */
    public final void mo5933e() {
        this.f31591h = null;
        this.f31588e.clear();
        super.mo5933e();
        this.f31589f.mo5933e();
    }
}
