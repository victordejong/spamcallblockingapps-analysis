package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apy.class */
final class apy implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ View f8153a;

    /* renamed from: b */
    private final /* synthetic */ zzqi f8154b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public apy(zzqi zzqiVar, View view) {
        this.f8154b = zzqiVar;
        this.f8153a = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8154b.m3104a(this.f8153a);
    }
}
