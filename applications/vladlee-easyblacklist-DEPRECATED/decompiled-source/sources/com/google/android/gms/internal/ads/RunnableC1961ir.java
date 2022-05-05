package com.google.android.gms.internal.ads;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ir */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ir.class */
public final class RunnableC1961ir implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ View f8641a;

    /* renamed from: b */
    private final /* synthetic */ zzato f8642b;

    /* renamed from: c */
    private final /* synthetic */ int f8643c;

    /* renamed from: d */
    private final /* synthetic */ zzbdl f8644d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1961ir(zzbdl zzbdlVar, View view, zzato zzatoVar, int i) {
        this.f8644d = zzbdlVar;
        this.f8641a = view;
        this.f8642b = zzatoVar;
        this.f8643c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8644d.m4118a(this.f8641a, this.f8642b, this.f8643c - 1);
    }
}
