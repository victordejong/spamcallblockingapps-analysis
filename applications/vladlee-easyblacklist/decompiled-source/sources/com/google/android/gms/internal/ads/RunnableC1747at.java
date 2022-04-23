package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.at */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/at.class */
final /* synthetic */ class RunnableC1747at implements Runnable {

    /* renamed from: a */
    private final zzaif f8266a;

    private RunnableC1747at(zzaif zzaifVar) {
        this.f8266a = zzaifVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Runnable m4746a(zzaif zzaifVar) {
        return new RunnableC1747at(zzaifVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8266a.destroy();
    }
}
