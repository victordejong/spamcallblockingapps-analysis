package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.ads.gh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gh.class */
abstract class AbstractC1897gh {

    /* renamed from: a */
    private final WeakReference<View> f8499a;

    public AbstractC1897gh(View view) {
        this.f8499a = new WeakReference<>(view);
    }

    /* renamed from: c */
    private final ViewTreeObserver m4724c() {
        ViewTreeObserver viewTreeObserver;
        View view = this.f8499a.get();
        if (view == null || (viewTreeObserver = view.getViewTreeObserver()) == null || !viewTreeObserver.isAlive()) {
            return null;
        }
        return viewTreeObserver;
    }

    /* renamed from: a */
    public final void m4726a() {
        ViewTreeObserver c = m4724c();
        if (c != null) {
            mo4723a(c);
        }
    }

    /* renamed from: a */
    protected abstract void mo4723a(ViewTreeObserver viewTreeObserver);

    /* renamed from: b */
    public final void m4725b() {
        ViewTreeObserver c = m4724c();
        if (c != null) {
            mo4722b(c);
        }
    }

    /* renamed from: b */
    protected abstract void mo4722b(ViewTreeObserver viewTreeObserver);
}
