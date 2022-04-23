package com.google.android.gms.internal.ads;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.as */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/as.class */
public final class C1746as implements zzafn<zzajq> {

    /* renamed from: a */
    private final /* synthetic */ zzajj f8247a;

    /* renamed from: b */
    private final /* synthetic */ zzaif f8248b;

    /* renamed from: c */
    private final /* synthetic */ zzais f8249c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1746as(zzais zzaisVar, zzajj zzajjVar, zzaif zzaifVar) {
        this.f8249c = zzaisVar;
        this.f8247a = zzajjVar;
        this.f8248b = zzaifVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final /* synthetic */ void zza(zzajq zzajqVar, Map map) {
        Object obj;
        zzaxh zzaxhVar;
        obj = this.f8249c.f10934a;
        synchronized (obj) {
            if (!(this.f8247a.getStatus() == -1 || this.f8247a.getStatus() == 1)) {
                this.f8249c.f10941h = 0;
                zzaxhVar = this.f8249c.f10938e;
                zzaxhVar.zzh(this.f8248b);
                this.f8247a.zzm(this.f8248b);
                this.f8249c.f10940g = this.f8247a;
                zzavs.zzed("Successfully loaded JS Engine.");
            }
        }
    }
}
