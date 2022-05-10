package com.inmobi.ads;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import com.inmobi.ads.AbstractC8218cf;
import java.lang.ref.WeakReference;
/* renamed from: com.inmobi.ads.s */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/s.class */
public final class C8303s extends AbstractC8218cf {

    /* renamed from: d */
    public static final String f32309d = "s";

    /* renamed from: e */
    public ViewTreeObserver.OnPreDrawListener f32310e;

    /* renamed from: f */
    public final WeakReference<View> f32311f;

    public C8303s(AbstractC8218cf.AbstractC8219a aVar, Activity activity) {
        super(aVar);
        View decorView = activity.getWindow().getDecorView();
        this.f32311f = new WeakReference<>(decorView);
        ViewTreeObserver viewTreeObserver = decorView.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            ViewTreeObserver.OnPreDrawListener onPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: com.inmobi.ads.s.1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public final boolean onPreDraw() {
                    C8303s.this.m6171g();
                    return true;
                }
            };
            this.f32310e = onPreDrawListener;
            viewTreeObserver.addOnPreDrawListener(onPreDrawListener);
        }
    }

    /* renamed from: h */
    private void m5957h() {
        View view = this.f32311f.get();
        if (view != null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f32310e);
            }
        }
    }

    @Override // com.inmobi.ads.AbstractC8218cf
    /* renamed from: a */
    public final int mo5962a() {
        return 100;
    }

    @Override // com.inmobi.ads.AbstractC8218cf
    /* renamed from: b */
    public final void mo5961b() {
    }

    @Override // com.inmobi.ads.AbstractC8218cf
    /* renamed from: c */
    public final void mo5960c() {
        if (!this.f32085a) {
            m5957h();
            super.mo5960c();
        }
    }

    @Override // com.inmobi.ads.AbstractC8218cf
    /* renamed from: d */
    public final void mo5959d() {
        if (this.f32085a) {
            View view = this.f32311f.get();
            if (view != null) {
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnPreDrawListener(this.f32310e);
                }
            }
            super.mo5959d();
        }
    }

    @Override // com.inmobi.ads.AbstractC8218cf
    /* renamed from: e */
    public final void mo5958e() {
        m5957h();
        super.mo5958e();
    }
}
