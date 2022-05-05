package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.az */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/az.class */
public final class C1753az implements zzazn {

    /* renamed from: a */
    private final /* synthetic */ zzajj f8279a;

    /* renamed from: b */
    private final /* synthetic */ zzais f8280b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1753az(zzais zzaisVar, zzajj zzajjVar) {
        this.f8280b = zzaisVar;
        this.f8279a = zzajjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzazn
    public final void run() {
        Object obj;
        obj = this.f8280b.f10934a;
        synchronized (obj) {
            this.f8280b.f10941h = 1;
            zzavs.zzed("Failed loading new engine. Marking new engine destroyable.");
            this.f8279a.zzse();
        }
    }
}
