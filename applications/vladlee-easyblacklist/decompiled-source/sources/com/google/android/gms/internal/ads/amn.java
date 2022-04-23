package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amn.class */
public final class amn implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f7683a;

    /* renamed from: b */
    private final /* synthetic */ long f7684b;

    /* renamed from: c */
    private final /* synthetic */ long f7685c;

    /* renamed from: d */
    private final /* synthetic */ zzhr f7686d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public amn(zzhr zzhrVar, String str, long j, long j2) {
        this.f7686d = zzhrVar;
        this.f7683a = str;
        this.f7684b = j;
        this.f7685c = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzho zzhoVar;
        zzhoVar = this.f7686d.f14850b;
        zzhoVar.zza(this.f7683a, this.f7684b, this.f7685c);
    }
}
