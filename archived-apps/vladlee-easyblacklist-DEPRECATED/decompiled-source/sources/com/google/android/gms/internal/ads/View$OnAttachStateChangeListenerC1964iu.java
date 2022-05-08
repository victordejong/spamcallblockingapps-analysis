package com.google.android.gms.internal.ads;

import android.view.View;
/* renamed from: com.google.android.gms.internal.ads.iu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/iu.class */
final class View$OnAttachStateChangeListenerC1964iu implements View.OnAttachStateChangeListener {

    /* renamed from: a */
    private final /* synthetic */ zzato f8648a;

    /* renamed from: b */
    private final /* synthetic */ zzbdl f8649b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnAttachStateChangeListenerC1964iu(zzbdl zzbdlVar, zzato zzatoVar) {
        this.f8649b = zzbdlVar;
        this.f8648a = zzatoVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f8649b.m4118a(view, this.f8648a, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
