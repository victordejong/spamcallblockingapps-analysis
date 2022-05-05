package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acc.class */
public final class acc implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzdet f7204a;

    /* renamed from: b */
    private final /* synthetic */ acb f7205b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public acc(acb acbVar, zzdet zzdetVar) {
        this.f7205b = acbVar;
        this.f7204a = zzdetVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        acb.m5482a(this.f7205b, this.f7204a);
    }
}
