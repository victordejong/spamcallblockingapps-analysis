package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvi.class */
public final class zzcvi implements zzcub<zzcvj> {

    /* renamed from: a */
    private zzauw f13951a;

    /* renamed from: b */
    private zzdhd f13952b;

    /* renamed from: c */
    private String f13953c;

    public zzcvi(zzauw zzauwVar, zzdhd zzdhdVar, String str) {
        this.f13951a = zzauwVar;
        this.f13952b = zzdhdVar;
        this.f13953c = str;
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcvj> zzanc() {
        new zzazl();
        final zzdhe<String> zzaj = zzdgs.zzaj(null);
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcpj)).booleanValue()) {
            zzaj = this.f13951a.zzeb(this.f13953c);
        }
        final zzdhe<String> zzec = this.f13951a.zzec(this.f13953c);
        return zzdgs.zzb(zzaj, zzec).zza(new Callable(zzaj, zzec) { // from class: com.google.android.gms.internal.ads.xo

            /* renamed from: a */
            private final zzdhe f10693a;

            /* renamed from: b */
            private final zzdhe f10694b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10693a = zzaj;
                this.f10694b = zzec;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzcvj((String) this.f10693a.get(), (String) this.f10694b.get());
            }
        }, zzazd.zzdwe);
    }
}
