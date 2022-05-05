package com.google.android.gms.internal.ads;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.av */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/av.class */
public final class C1749av implements zzafn<zzajq> {

    /* renamed from: a */
    private final /* synthetic */ zzdq f8270a;

    /* renamed from: b */
    private final /* synthetic */ zzaif f8271b;

    /* renamed from: c */
    private final /* synthetic */ zzayd f8272c;

    /* renamed from: d */
    private final /* synthetic */ zzais f8273d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1749av(zzais zzaisVar, zzdq zzdqVar, zzaif zzaifVar, zzayd zzaydVar) {
        this.f8273d = zzaisVar;
        this.f8270a = zzdqVar;
        this.f8271b = zzaifVar;
        this.f8272c = zzaydVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final /* synthetic */ void zza(zzajq zzajqVar, Map map) {
        Object obj;
        int i;
        obj = this.f8273d.f10934a;
        synchronized (obj) {
            zzavs.zzey("JS Engine is requesting an update");
            i = this.f8273d.f10941h;
            if (i == 0) {
                zzavs.zzey("Starting reload.");
                this.f8273d.f10941h = 2;
                this.f8273d.m4389a(this.f8270a);
            }
            this.f8271b.zzb("/requestReload", (zzafn) this.f8272c.get());
        }
    }
}
