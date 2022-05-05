package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcto.class */
public final class zzcto implements zzcub<zzctp> {

    /* renamed from: a */
    private final zzatv f13863a;

    /* renamed from: b */
    private final zzdhd f13864b;

    /* renamed from: c */
    private final Context f13865c;

    public zzcto(zzatv zzatvVar, zzdhd zzdhdVar, Context context) {
        this.f13863a = zzatvVar;
        this.f13864b = zzdhdVar;
        this.f13865c = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzctp m3690a() {
        Long l;
        if (!this.f13863a.zzab(this.f13865c)) {
            return new zzctp(null, null, null, null, null);
        }
        String zzae = this.f13863a.zzae(this.f13865c);
        if (zzae == null) {
            zzae = "";
        }
        String zzaf = this.f13863a.zzaf(this.f13865c);
        if (zzaf == null) {
            zzaf = "";
        }
        String zzag = this.f13863a.zzag(this.f13865c);
        if (zzag == null) {
            zzag = "";
        }
        String zzah = this.f13863a.zzah(this.f13865c);
        if (zzah == null) {
            zzah = "";
        }
        if ("TIME_OUT".equals(zzaf)) {
            l = (Long) zzve.zzoy().zzd(zzzn.zzcie);
        } else {
            l = null;
        }
        return new zzctp(zzae, zzaf, zzag, zzah, l);
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzctp> zzanc() {
        return this.f13864b.zzd(new Callable(this) { // from class: com.google.android.gms.internal.ads.ww

            /* renamed from: a */
            private final zzcto f10671a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10671a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10671a.m3690a();
            }
        });
    }
}
