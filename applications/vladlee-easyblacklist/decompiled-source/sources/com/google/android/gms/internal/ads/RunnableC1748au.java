package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.au */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/au.class */
public final class RunnableC1748au implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzajj f8267a;

    /* renamed from: b */
    private final /* synthetic */ zzaif f8268b;

    /* renamed from: c */
    private final /* synthetic */ zzais f8269c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1748au(zzais zzaisVar, zzajj zzajjVar, zzaif zzaifVar) {
        this.f8269c = zzaisVar;
        this.f8267a = zzajjVar;
        this.f8268b = zzaifVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        obj = this.f8269c.f10934a;
        synchronized (obj) {
            if (!(this.f8267a.getStatus() == -1 || this.f8267a.getStatus() == 1)) {
                this.f8267a.reject();
                zzdhd zzdhdVar = zzazd.zzdwi;
                zzaif zzaifVar = this.f8268b;
                zzaifVar.getClass();
                zzdhdVar.execute(RunnableC1751ax.m4745a(zzaifVar));
                zzavs.zzed("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
