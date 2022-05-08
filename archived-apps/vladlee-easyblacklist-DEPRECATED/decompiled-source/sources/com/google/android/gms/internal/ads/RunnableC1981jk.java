package com.google.android.gms.internal.ads;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.jk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jk.class */
public final class RunnableC1981jk implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ View f8736a;

    /* renamed from: b */
    private final /* synthetic */ zzato f8737b;

    /* renamed from: c */
    private final /* synthetic */ int f8738c;

    /* renamed from: d */
    private final /* synthetic */ zzbfb f8739d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1981jk(zzbfb zzbfbVar, View view, zzato zzatoVar, int i) {
        this.f8739d = zzbfbVar;
        this.f8736a = view;
        this.f8737b = zzatoVar;
        this.f8738c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8739d.m4102a(this.f8736a, this.f8737b, this.f8738c - 1);
    }
}
