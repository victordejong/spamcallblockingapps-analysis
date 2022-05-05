package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.gass.zzf;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbb.class */
public final class zzcbb extends zzbmd {

    /* renamed from: c */
    private final Context f12857c;

    /* renamed from: d */
    private final WeakReference<zzbdi> f12858d;

    /* renamed from: e */
    private final zzbuv f12859e;

    /* renamed from: f */
    private final zzbsk f12860f;

    /* renamed from: g */
    private final zzboz f12861g;

    /* renamed from: h */
    private final zzbqa f12862h;

    /* renamed from: i */
    private final zzbmx f12863i;

    /* renamed from: j */
    private final zzasf f12864j;

    /* renamed from: k */
    private final zzf f12865k;

    /* renamed from: l */
    private boolean f12866l = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcbb(zzbmg zzbmgVar, Context context, zzbdi zzbdiVar, zzbuv zzbuvVar, zzbsk zzbskVar, zzboz zzbozVar, zzbqa zzbqaVar, zzbmx zzbmxVar, zzczl zzczlVar, zzf zzfVar) {
        super(zzbmgVar);
        this.f12857c = context;
        this.f12859e = zzbuvVar;
        this.f12858d = new WeakReference<>(zzbdiVar);
        this.f12860f = zzbskVar;
        this.f12861g = zzbozVar;
        this.f12862h = zzbqaVar;
        this.f12863i = zzbmxVar;
        this.f12865k = zzfVar;
        this.f12864j = new zzatc(zzczlVar.zzdky);
    }

    public final void finalize() {
        try {
            zzbdi zzbdiVar = this.f12858d.get();
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcrd)).booleanValue()) {
                if (!this.f12866l && zzbdiVar != null) {
                    zzdhd zzdhdVar = zzazd.zzdwi;
                    zzbdiVar.getClass();
                    zzdhdVar.execute(RunnableC2155pw.m4482a(zzbdiVar));
                }
            } else if (zzbdiVar != null) {
                zzbdiVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    public final Bundle getAdMetadata() {
        return this.f12862h.getAdMetadata();
    }

    public final boolean isClosed() {
        return this.f12863i.isClosed();
    }

    public final boolean zzaks() {
        return this.f12866l;
    }

    public final void zzb(boolean z, Activity activity) {
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcin)).booleanValue()) {
            zzq.zzkq();
            if (zzawb.zzau(this.f12857c)) {
                zzavs.zzez("Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.f12861g.zzco(3);
                if (((Boolean) zzve.zzoy().zzd(zzzn.zzcio)).booleanValue()) {
                    this.f12865k.zzgq(this.f12132a.zzgmi.zzgmf.zzbzo);
                    return;
                }
                return;
            }
        }
        if (this.f12866l) {
            zzavs.zzez("The rewarded ad have been showed.");
            this.f12861g.zzco(1);
            return;
        }
        this.f12866l = true;
        this.f12860f.zzahx();
        Context context = activity;
        if (activity == null) {
            context = this.f12857c;
        }
        this.f12859e.zza(z, context);
    }

    public final zzasf zzpz() {
        return this.f12864j;
    }

    public final boolean zzqa() {
        zzbdi zzbdiVar = this.f12858d.get();
        return zzbdiVar != null && !zzbdiVar.zzaap();
    }
}
