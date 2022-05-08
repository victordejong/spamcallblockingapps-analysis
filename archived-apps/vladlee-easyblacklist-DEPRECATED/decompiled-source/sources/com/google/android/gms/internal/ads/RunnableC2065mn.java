package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.mn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mn.class */
public final class RunnableC2065mn implements Runnable {

    /* renamed from: a */
    private final WeakReference<zzbqp> f10214a;

    private RunnableC2065mn(zzbqp zzbqpVar) {
        this.f10214a = new WeakReference<>(zzbqpVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ RunnableC2065mn(zzbqp zzbqpVar, byte b) {
        this(zzbqpVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbqp zzbqpVar = this.f10214a.get();
        if (zzbqpVar != null) {
            zzbqpVar.m3995a(C2064mm.f10213a);
        }
    }
}
