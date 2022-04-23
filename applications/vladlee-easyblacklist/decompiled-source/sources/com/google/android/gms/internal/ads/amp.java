package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amp.class */
public final class amp implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f7689a;

    /* renamed from: b */
    private final /* synthetic */ long f7690b;

    /* renamed from: c */
    private final /* synthetic */ long f7691c;

    /* renamed from: d */
    private final /* synthetic */ zzhr f7692d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public amp(zzhr zzhrVar, int i, long j, long j2) {
        this.f7692d = zzhrVar;
        this.f7689a = i;
        this.f7690b = j;
        this.f7691c = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzho zzhoVar;
        zzhoVar = this.f7692d.f14850b;
        zzhoVar.zza(this.f7689a, this.f7690b, this.f7691c);
    }
}
