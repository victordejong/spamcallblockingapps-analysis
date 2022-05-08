package com.google.android.gms.internal.ads;

import android.view.View;
/* renamed from: com.google.android.gms.internal.ads.jj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jj.class */
final class View$OnAttachStateChangeListenerC1980jj implements View.OnAttachStateChangeListener {

    /* renamed from: a */
    private final /* synthetic */ zzato f8734a;

    /* renamed from: b */
    private final /* synthetic */ zzbfb f8735b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnAttachStateChangeListenerC1980jj(zzbfb zzbfbVar, zzato zzatoVar) {
        this.f8735b = zzbfbVar;
        this.f8734a = zzatoVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f8735b.m4102a(view, this.f8734a, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
