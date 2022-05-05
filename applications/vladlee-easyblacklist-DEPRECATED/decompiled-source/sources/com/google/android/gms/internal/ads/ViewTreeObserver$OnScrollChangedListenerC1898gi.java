package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.ads.gi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gi.class */
final class ViewTreeObserver$OnScrollChangedListenerC1898gi extends AbstractC1897gh implements ViewTreeObserver.OnScrollChangedListener {

    /* renamed from: a */
    private final WeakReference<ViewTreeObserver.OnScrollChangedListener> f8500a;

    public ViewTreeObserver$OnScrollChangedListenerC1898gi(View view, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        super(view);
        this.f8500a = new WeakReference<>(onScrollChangedListener);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1897gh
    /* renamed from: a */
    protected final void mo4723a(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnScrollChangedListener(this);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1897gh
    /* renamed from: b */
    protected final void mo4722b(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.removeOnScrollChangedListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = this.f8500a.get();
        if (onScrollChangedListener != null) {
            onScrollChangedListener.onScrollChanged();
        } else {
            m4725b();
        }
    }
}
