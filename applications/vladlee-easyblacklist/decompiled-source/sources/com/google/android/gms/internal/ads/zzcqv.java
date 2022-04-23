package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqv.class */
public final class zzcqv implements zzcub<Object> {

    /* renamed from: f */
    private static final Object f13749f = new Object();

    /* renamed from: a */
    private final String f13750a;

    /* renamed from: b */
    private final String f13751b;

    /* renamed from: c */
    private final zzbnk f13752c;

    /* renamed from: d */
    private final zzdak f13753d;

    /* renamed from: e */
    private final zzczu f13754e;

    public zzcqv(String str, String str2, zzbnk zzbnkVar, zzdak zzdakVar, zzczu zzczuVar) {
        this.f13750a = str;
        this.f13751b = str2;
        this.f13752c = zzbnkVar;
        this.f13753d = zzdakVar;
        this.f13754e = zzczuVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3703a(Bundle bundle, Bundle bundle2) {
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcpa)).booleanValue()) {
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcoz)).booleanValue()) {
                synchronized (f13749f) {
                    this.f13752c.zzf(this.f13754e.zzgml);
                    bundle2.putBundle("quality_signals", this.f13753d.zzaov());
                }
                bundle2.putString("seq_num", this.f13750a);
                bundle2.putString("session_id", this.f13751b);
            }
            this.f13752c.zzf(this.f13754e.zzgml);
            bundle = this.f13753d.zzaov();
        }
        bundle2.putBundle("quality_signals", bundle);
        bundle2.putString("seq_num", this.f13750a);
        bundle2.putString("session_id", this.f13751b);
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<Object> zzanc() {
        final Bundle bundle = new Bundle();
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcpa)).booleanValue()) {
            this.f13752c.zzf(this.f13754e.zzgml);
            bundle.putAll(this.f13753d.zzaov());
        }
        return zzdgs.zzaj(new zzcty(this, bundle) { // from class: com.google.android.gms.internal.ads.vu

            /* renamed from: a */
            private final zzcqv f10634a;

            /* renamed from: b */
            private final Bundle f10635b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10634a = this;
                this.f10635b = bundle;
            }

            @Override // com.google.android.gms.internal.ads.zzcty
            public final void zzr(Object obj) {
                this.f10634a.m3703a(this.f10635b, (Bundle) obj);
            }
        });
    }
}
