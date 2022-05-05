package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzq.class */
public final class zzbzq {

    /* renamed from: a */
    private final Executor f12767a;

    /* renamed from: b */
    private final zzbjq f12768b;

    /* renamed from: c */
    private final zzbst f12769c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbzq(Executor executor, zzbjq zzbjqVar, zzbst zzbstVar) {
        this.f12767a = executor;
        this.f12769c = zzbstVar;
        this.f12768b = zzbjqVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3835a() {
        this.f12768b.disable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final /* synthetic */ void m3834b() {
        this.f12768b.enable();
    }

    public final void zzl(final zzbdi zzbdiVar) {
        if (zzbdiVar != null) {
            this.f12769c.zzq(zzbdiVar.getView());
            this.f12769c.zza(new zzps(zzbdiVar) { // from class: com.google.android.gms.internal.ads.pe

                /* renamed from: a */
                private final zzbdi f10322a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10322a = zzbdiVar;
                }

                @Override // com.google.android.gms.internal.ads.zzps
                public final void zza(zzpt zzptVar) {
                    this.f10322a.zzaaa().zza(zzptVar.zzbob.left, zzptVar.zzbob.top, false);
                }
            }, this.f12767a);
            this.f12769c.zza(new zzps(zzbdiVar) { // from class: com.google.android.gms.internal.ads.pg

                /* renamed from: a */
                private final zzbdi f10324a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10324a = zzbdiVar;
                }

                @Override // com.google.android.gms.internal.ads.zzps
                public final void zza(zzpt zzptVar) {
                    zzbdi zzbdiVar2 = this.f10324a;
                    HashMap hashMap = new HashMap();
                    hashMap.put("isVisible", zzptVar.zzbnq ? "1" : "0");
                    zzbdiVar2.zza("onAdVisibilityChanged", hashMap);
                }
            }, this.f12767a);
            this.f12769c.zza(this.f12768b, this.f12767a);
            this.f12768b.zzg(zzbdiVar);
            zzbdiVar.zza("/trackActiveViewUnit", new zzafn(this) { // from class: com.google.android.gms.internal.ads.pf

                /* renamed from: a */
                private final zzbzq f10323a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10323a = this;
                }

                @Override // com.google.android.gms.internal.ads.zzafn
                public final void zza(Object obj, Map map) {
                    this.f10323a.m3834b();
                }
            });
            zzbdiVar.zza("/untrackActiveViewUnit", new zzafn(this) { // from class: com.google.android.gms.internal.ads.ph

                /* renamed from: a */
                private final zzbzq f10325a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10325a = this;
                }

                @Override // com.google.android.gms.internal.ads.zzafn
                public final void zza(Object obj, Map map) {
                    this.f10325a.m3835a();
                }
            });
        }
    }
}
