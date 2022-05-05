package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.gass.zzf;
import java.lang.ref.WeakReference;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtu.class */
public final class zzbtu extends zzbmd {

    /* renamed from: c */
    private final Context f12384c;

    /* renamed from: d */
    private final WeakReference<zzbdi> f12385d;

    /* renamed from: e */
    private final zzbsk f12386e;

    /* renamed from: f */
    private final zzbuv f12387f;

    /* renamed from: g */
    private final zzbmx f12388g;

    /* renamed from: h */
    private final zzf f12389h;

    /* renamed from: i */
    private boolean f12390i = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbtu(zzbmg zzbmgVar, Context context, @Nullable zzbdi zzbdiVar, zzbsk zzbskVar, zzbuv zzbuvVar, zzbmx zzbmxVar, zzf zzfVar) {
        super(zzbmgVar);
        this.f12384c = context;
        this.f12385d = new WeakReference<>(zzbdiVar);
        this.f12386e = zzbskVar;
        this.f12387f = zzbuvVar;
        this.f12388g = zzbmxVar;
        this.f12389h = zzfVar;
    }

    public final void finalize() {
        try {
            zzbdi zzbdiVar = this.f12385d.get();
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcrd)).booleanValue()) {
                if (!this.f12390i && zzbdiVar != null) {
                    zzdhd zzdhdVar = zzazd.zzdwi;
                    zzbdiVar.getClass();
                    zzdhdVar.execute(RunnableC2090nl.m4487a(zzbdiVar));
                }
            } else if (zzbdiVar != null) {
                zzbdiVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    public final boolean isClosed() {
        return this.f12388g.isClosed();
    }

    public final boolean zzaid() {
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcin)).booleanValue()) {
            zzq.zzkq();
            if (zzawb.zzau(this.f12384c)) {
                zzavs.zzez("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies");
                if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcio)).booleanValue()) {
                    return false;
                }
                this.f12389h.zzgq(this.f12132a.zzgmi.zzgmf.zzbzo);
                return false;
            }
        }
        return !this.f12390i;
    }

    public final void zzbg(boolean z) {
        this.f12386e.zzahx();
        this.f12387f.zza(z, this.f12384c);
        this.f12390i = true;
    }
}
