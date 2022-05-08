package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.gw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gw.class */
final class RunnableC1912gw implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ boolean f8520a;

    /* renamed from: b */
    private final /* synthetic */ zzbai f8521b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1912gw(zzbai zzbaiVar, boolean z) {
        this.f8521b = zzbaiVar;
        this.f8520a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8521b.m4180a("windowVisibilityChanged", "isVisible", String.valueOf(this.f8520a));
    }
}
