package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.gms.ads.internal.zzq;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.ads.gg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gg.class */
final class ViewTreeObserver$OnGlobalLayoutListenerC1896gg extends AbstractC1897gh implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    private final WeakReference<ViewTreeObserver.OnGlobalLayoutListener> f8498a;

    public ViewTreeObserver$OnGlobalLayoutListenerC1896gg(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        super(view);
        this.f8498a = new WeakReference<>(onGlobalLayoutListener);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1897gh
    /* renamed from: a */
    protected final void mo4723a(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnGlobalLayoutListener(this);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1897gh
    /* renamed from: b */
    protected final void mo4722b(ViewTreeObserver viewTreeObserver) {
        zzq.zzks();
        viewTreeObserver.removeOnGlobalLayoutListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f8498a.get();
        if (onGlobalLayoutListener != null) {
            onGlobalLayoutListener.onGlobalLayout();
        } else {
            m4725b();
        }
    }
}
