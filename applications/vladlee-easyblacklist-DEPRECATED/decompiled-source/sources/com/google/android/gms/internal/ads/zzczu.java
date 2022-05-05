package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import java.util.ArrayList;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczu.class */
public final class zzczu {
    public final zzuj zzblm;
    public final zzaby zzddz;
    public final zzagz zzdkf;
    public final int zzgdu;
    public final zzwi zzgmj;
    public final zzyw zzgmk;
    public final zzug zzgml;
    public final String zzgmm;
    public final ArrayList<String> zzgmn;
    public final ArrayList<String> zzgmo;
    public final zzuo zzgmp;
    public final PublisherAdViewOptions zzgmq;
    public final zzwc zzgmr;
    public final Set<String> zzgms;

    private zzczu(zzczw zzczwVar) {
        this.zzblm = zzczw.m3645a(zzczwVar);
        this.zzgmm = zzczw.m3644b(zzczwVar);
        this.zzgmj = zzczw.m3643c(zzczwVar);
        this.zzgml = new zzug(zzczw.m3635k(zzczwVar).versionCode, zzczw.m3635k(zzczwVar).zzcby, zzczw.m3635k(zzczwVar).extras, zzczw.m3635k(zzczwVar).zzcbz, zzczw.m3635k(zzczwVar).zzcca, zzczw.m3635k(zzczwVar).zzccb, zzczw.m3635k(zzczwVar).zzabo, zzczw.m3635k(zzczwVar).zzbkh || zzczw.m3634l(zzczwVar), zzczw.m3635k(zzczwVar).zzccc, zzczw.m3635k(zzczwVar).zzccd, zzczw.m3635k(zzczwVar).zzmi, zzczw.m3635k(zzczwVar).zzcce, zzczw.m3635k(zzczwVar).zzccf, zzczw.m3635k(zzczwVar).zzccg, zzczw.m3635k(zzczwVar).zzcch, zzczw.m3635k(zzczwVar).zzcci, zzczw.m3635k(zzczwVar).zzccj, zzczw.m3635k(zzczwVar).zzcck, zzczw.m3635k(zzczwVar).zzccm, zzczw.m3635k(zzczwVar).zzabp, zzczw.m3635k(zzczwVar).zzabq, zzczw.m3635k(zzczwVar).zzccl);
        zzaby zzabyVar = null;
        this.zzgmk = zzczw.m3633m(zzczwVar) != null ? zzczw.m3633m(zzczwVar) : zzczw.m3632n(zzczwVar) != null ? zzczw.m3632n(zzczwVar).zzcvp : null;
        this.zzgmn = zzczw.m3642d(zzczwVar);
        this.zzgmo = zzczw.m3641e(zzczwVar);
        if (zzczw.m3642d(zzczwVar) != null) {
            zzabyVar = zzczw.m3632n(zzczwVar) == null ? new zzaby(new NativeAdOptions.Builder().build()) : zzczw.m3632n(zzczwVar);
        }
        this.zzddz = zzabyVar;
        this.zzgmp = zzczw.m3640f(zzczwVar);
        this.zzgdu = zzczw.m3639g(zzczwVar);
        this.zzgmq = zzczw.m3638h(zzczwVar);
        this.zzgmr = zzczw.m3637i(zzczwVar);
        this.zzdkf = zzczw.m3636j(zzczwVar);
        this.zzgms = zzczwVar.zzgms;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzczu(zzczw zzczwVar, byte b) {
        this(zzczwVar);
    }

    public final zzaea zzaoo() {
        PublisherAdViewOptions publisherAdViewOptions = this.zzgmq;
        if (publisherAdViewOptions == null) {
            return null;
        }
        return publisherAdViewOptions.zzjn();
    }
}
