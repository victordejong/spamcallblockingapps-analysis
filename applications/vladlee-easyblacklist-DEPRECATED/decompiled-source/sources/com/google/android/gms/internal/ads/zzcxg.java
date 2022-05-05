package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbmd;
import com.google.android.gms.internal.ads.zzbob;
import com.google.android.gms.internal.ads.zzsy;
import java.util.LinkedList;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxg.class */
public final class zzcxg<R extends zzbob<AdT>, AdT extends zzbmd> implements zzcxt<R, AdT> {

    /* renamed from: a */
    private final zzdbb f14026a;

    /* renamed from: b */
    private final zzdax f14027b;

    /* renamed from: c */
    private final zzcxt<R, AdT> f14028c;

    /* renamed from: d */
    private final zzcxt<R, zzdbi<AdT>> f14029d;

    /* renamed from: f */
    private C2392yq<R> f14031f;

    /* renamed from: g */
    private zzdhe<zzdbi<AdT>> f14032g;

    /* renamed from: i */
    private R f14034i;

    /* renamed from: j */
    private final Executor f14035j;

    /* renamed from: h */
    private int f14033h = C2391yp.f10725a;

    /* renamed from: k */
    private final zzdgt<zzdbi<AdT>> f14036k = new C2389yn(this);

    /* renamed from: e */
    private final LinkedList<C2392yq<R>> f14030e = new LinkedList<>();

    public zzcxg(zzdbb zzdbbVar, zzdax zzdaxVar, zzcxt<R, AdT> zzcxtVar, zzcxt<R, zzdbi<AdT>> zzcxtVar2, Executor executor) {
        this.f14026a = zzdbbVar;
        this.f14027b = zzdaxVar;
        this.f14028c = zzcxtVar;
        this.f14029d = zzcxtVar2;
        this.f14035j = executor;
        this.f14027b.zza(new zzdaw(this) { // from class: com.google.android.gms.internal.ads.yo

            /* renamed from: a */
            private final zzcxg f10724a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10724a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdaw
            public final void execute() {
                this.f10724a.m3669a();
            }
        });
    }

    /* renamed from: a */
    private final zzdhe<AdT> m3663a(zzdbi<AdT> zzdbiVar, zzcxs zzcxsVar, zzcxv<R> zzcxvVar) {
        final zzboe<R> zzc = zzcxvVar.zzc(zzcxsVar);
        if (zzdbiVar.zzgpd != null) {
            zzdbiVar.zzgpd.zzagt().zzb(zzc.zzadg().zzadz());
            return zzdgs.zzaj(zzdbiVar.zzgpd);
        }
        zzc.zza(zzdbiVar.zzelt);
        return zzdgs.zzb(this.f14028c.zza(zzcxsVar, zzcxvVar), new zzdgf(zzc) { // from class: com.google.android.gms.internal.ads.ym

            /* renamed from: a */
            private final zzboe f10722a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10722a = zzc;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                zzbmd zzbmdVar = (zzbmd) obj;
                zzbmdVar.zzagt().zzb(((zzbob) this.f10722a.zzadg()).zzadz());
                return zzdgs.zzaj(zzbmdVar);
            }
        }, this.f14035j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m3668a(C2392yq<R> yqVar) {
        while (true) {
            zzdhe<zzdbi<AdT>> zzdheVar = this.f14032g;
            if (zzdheVar == null || zzdheVar.isDone()) {
                if (yqVar != null || !this.f14030e.isEmpty()) {
                    C2392yq<R> yqVar2 = yqVar;
                    if (yqVar == null) {
                        yqVar2 = this.f14030e.remove();
                    }
                    zzdbb zzdbbVar = this.f14026a;
                    if (zzdbbVar.zzb(zzdbbVar.zza(yqVar2.f10731c, yqVar2.f10732d, yqVar2.f10734f))) {
                        this.f14031f = yqVar2;
                        this.f14032g = this.f14029d.zza(yqVar2.f10730b, yqVar2.f10729a);
                        zzdgs.zza(this.f14032g, this.f14036k, yqVar2.f10733e);
                        return;
                    }
                    yqVar = null;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public final R zzaog() {
        R r;
        synchronized (this) {
            r = this.f14034i;
        }
        return r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m3664a(zzdbi zzdbiVar) {
        zzdbiVar.zzgpc.zzahb().zzc((zzsy.zza) ((zzdrt) zzsy.zza.zzmz().zza(zzsy.zza.C3504zza.zzmx().zzb(zzsy.zza.zzc.IN_MEMORY).zza(zzsy.zza.zzd.zznb())).zzbaf()));
        return m3663a(zzdbiVar, this.f14031f.f10730b, this.f14031f.f10729a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3669a() {
        synchronized (this) {
            m3668a(this.f14031f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxt
    public final zzdhe<AdT> zza(zzcxs zzcxsVar, zzcxv<R> zzcxvVar) {
        zzczu zzady = zzcxvVar.zzc(zzcxsVar).zzadg().zzady();
        C2392yq<R> yqVar = new C2392yq<>(zzcxvVar, zzcxsVar, zzady.zzgml, zzady.zzgmm, this.f14035j, zzady.zzgmp);
        zzdbb zzdbbVar = this.f14026a;
        zzdbi<?> zza = zzdbbVar.zza(zzdbbVar.zza(yqVar.f10731c, yqVar.f10732d, yqVar.f10734f));
        if (zza != null) {
            this.f14034i = null;
            this.f14030e.add(yqVar);
            return m3663a(zza, zzcxsVar, zzcxvVar);
        }
        zzdhe<zzdbi<AdT>> zzdheVar = this.f14032g;
        if (zzdheVar != null && !zzdheVar.isDone()) {
            this.f14033h = C2391yp.f10727c;
            if (this.f14026a.zza(yqVar.f10731c, yqVar.f10732d, yqVar.f10734f).equals(this.f14026a.zza(this.f14031f.f10731c, this.f14031f.f10732d, yqVar.f10734f))) {
                this.f14033h = C2391yp.f10726b;
                this.f14034i = this.f14029d.zzaog();
                return zzdgs.zzb(this.f14032g, new zzdgf(this) { // from class: com.google.android.gms.internal.ads.yl

                    /* renamed from: a */
                    private final zzcxg f10721a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10721a = this;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdgf
                    public final zzdhe zzf(Object obj) {
                        return this.f10721a.m3664a((zzdbi) obj);
                    }
                }, this.f14035j);
            }
        }
        this.f14030e.add(yqVar);
        zzdhe<AdT> zza2 = this.f14028c.zza(zzcxsVar, zzcxvVar);
        this.f14034i = this.f14028c.zzaog();
        return zza2;
    }
}
