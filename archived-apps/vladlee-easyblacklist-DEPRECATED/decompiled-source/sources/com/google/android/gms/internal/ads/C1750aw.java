package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.aw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aw.class */
public final class C1750aw implements zzazp<zzaif> {

    /* renamed from: a */
    private final /* synthetic */ zzajj f8274a;

    /* renamed from: b */
    private final /* synthetic */ zzais f8275b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1750aw(zzais zzaisVar, zzajj zzajjVar) {
        this.f8275b = zzaisVar;
        this.f8274a = zzajjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzazp
    public final /* synthetic */ void zzh(zzaif zzaifVar) {
        Object obj;
        zzajj zzajjVar;
        zzajj zzajjVar2;
        zzajj zzajjVar3;
        obj = this.f8275b.f10934a;
        synchronized (obj) {
            this.f8275b.f10941h = 0;
            zzajjVar = this.f8275b.f10940g;
            if (zzajjVar != null) {
                zzajj zzajjVar4 = this.f8274a;
                zzajjVar2 = this.f8275b.f10940g;
                if (zzajjVar4 != zzajjVar2) {
                    zzavs.zzed("New JS engine is loaded, marking previous one as destroyable.");
                    zzajjVar3 = this.f8275b.f10940g;
                    zzajjVar3.zzse();
                }
            }
            this.f8275b.f10940g = this.f8274a;
        }
    }
}
