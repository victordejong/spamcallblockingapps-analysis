package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxz.class */
public final class zzcxz extends AdMetadataListener implements zzbov, zzbow, zzbpa, zzbqb, zzcxq {

    /* renamed from: a */
    private final zzdax f14044a;

    /* renamed from: b */
    private final AtomicReference<AdMetadataListener> f14045b = new AtomicReference<>();

    /* renamed from: c */
    private final AtomicReference<zzaso> f14046c = new AtomicReference<>();

    /* renamed from: d */
    private final AtomicReference<zzasl> f14047d = new AtomicReference<>();

    /* renamed from: e */
    private final AtomicReference<zzaro> f14048e = new AtomicReference<>();

    /* renamed from: f */
    private final AtomicReference<zzast> f14049f = new AtomicReference<>();

    /* renamed from: g */
    private final AtomicReference<zzarj> f14050g = new AtomicReference<>();

    /* renamed from: h */
    private zzcxz f14051h = null;

    public zzcxz(zzdax zzdaxVar) {
        this.f14044a = zzdaxVar;
    }

    public static zzcxz zza(zzcxz zzcxzVar) {
        zzcxz zzcxzVar2 = new zzcxz(zzcxzVar.f14044a);
        zzcxzVar2.zzb(zzcxzVar);
        return zzcxzVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdClosed() {
        zzcxz zzcxzVar = this;
        while (true) {
            zzcxz zzcxzVar2 = zzcxzVar.f14051h;
            if (zzcxzVar2 != null) {
                zzcxzVar = zzcxzVar2;
            } else {
                zzcxzVar.f14044a.onAdClosed();
                zzcxp.zza(zzcxzVar.f14047d, C2409zg.f10756a);
                zzcxp.zza(zzcxzVar.f14048e, C2408zf.f10755a);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void onAdFailedToLoad(final int i) {
        zzcxz zzcxzVar = this;
        while (true) {
            zzcxz zzcxzVar2 = zzcxzVar.f14051h;
            if (zzcxzVar2 != null) {
                zzcxzVar = zzcxzVar2;
            } else {
                zzcxp.zza(zzcxzVar.f14046c, new zzcxo(i) { // from class: com.google.android.gms.internal.ads.zc

                    /* renamed from: a */
                    private final int f10752a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10752a = i;
                    }

                    @Override // com.google.android.gms.internal.ads.zzcxo
                    public final void zzt(Object obj) {
                        ((zzaso) obj).onRewardedAdFailedToLoad(this.f10752a);
                    }
                });
                zzcxp.zza(zzcxzVar.f14048e, new zzcxo(i) { // from class: com.google.android.gms.internal.ads.zb

                    /* renamed from: a */
                    private final int f10751a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10751a = i;
                    }

                    @Override // com.google.android.gms.internal.ads.zzcxo
                    public final void zzt(Object obj) {
                        ((zzaro) obj).onRewardedVideoAdFailedToLoad(this.f10751a);
                    }
                });
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdLeftApplication() {
        zzcxz zzcxzVar = this;
        while (true) {
            zzcxz zzcxzVar2 = zzcxzVar.f14051h;
            if (zzcxzVar2 != null) {
                zzcxzVar = zzcxzVar2;
            } else {
                zzcxp.zza(zzcxzVar.f14048e, C2411zi.f10758a);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqb
    public final void onAdLoaded() {
        zzcxz zzcxzVar = this;
        while (true) {
            zzcxz zzcxzVar2 = zzcxzVar.f14051h;
            if (zzcxzVar2 != null) {
                zzcxzVar = zzcxzVar2;
            } else {
                zzcxp.zza(zzcxzVar.f14046c, C2393yr.f10735a);
                zzcxp.zza(zzcxzVar.f14048e, C2396yu.f10738a);
                return;
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        zzcxz zzcxzVar = this.f14051h;
        if (zzcxzVar != null) {
            zzcxzVar.onAdMetadataChanged();
        } else {
            zzcxp.zza(this.f14045b, C2401yz.f10747a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdOpened() {
        zzcxz zzcxzVar = this;
        while (true) {
            zzcxz zzcxzVar2 = zzcxzVar.f14051h;
            if (zzcxzVar2 != null) {
                zzcxzVar = zzcxzVar2;
            } else {
                zzcxp.zza(zzcxzVar.f14047d, C2407ze.f10754a);
                zzcxp.zza(zzcxzVar.f14048e, C2406zd.f10753a);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onRewardedVideoCompleted() {
        zzcxz zzcxzVar = this;
        while (true) {
            zzcxz zzcxzVar2 = zzcxzVar.f14051h;
            if (zzcxzVar2 != null) {
                zzcxzVar = zzcxzVar2;
            } else {
                zzcxp.zza(zzcxzVar.f14048e, C2399yx.f10743a);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onRewardedVideoStarted() {
        zzcxz zzcxzVar = this;
        while (true) {
            zzcxz zzcxzVar2 = zzcxzVar.f14051h;
            if (zzcxzVar2 != null) {
                zzcxzVar = zzcxzVar2;
            } else {
                zzcxp.zza(zzcxzVar.f14048e, C2410zh.f10757a);
                return;
            }
        }
    }

    public final void zza(AdMetadataListener adMetadataListener) {
        this.f14045b.set(adMetadataListener);
    }

    public final void zza(zzaso zzasoVar) {
        this.f14046c.set(zzasoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void zzb(final zzare zzareVar, final String str, final String str2) {
        zzcxz zzcxzVar = this;
        while (true) {
            zzcxz zzcxzVar2 = zzcxzVar.f14051h;
            if (zzcxzVar2 != null) {
                zzcxzVar = zzcxzVar2;
            } else {
                zzcxp.zza(zzcxzVar.f14047d, new zzcxo(zzareVar) { // from class: com.google.android.gms.internal.ads.yt

                    /* renamed from: a */
                    private final zzare f10737a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10737a = zzareVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzcxo
                    public final void zzt(Object obj) {
                        zzare zzareVar2 = this.f10737a;
                        ((zzasl) obj).zza(new zzatc(zzareVar2.getType(), zzareVar2.getAmount()));
                    }
                });
                zzcxp.zza(zzcxzVar.f14049f, new zzcxo(zzareVar, str, str2) { // from class: com.google.android.gms.internal.ads.yw

                    /* renamed from: a */
                    private final zzare f10740a;

                    /* renamed from: b */
                    private final String f10741b;

                    /* renamed from: c */
                    private final String f10742c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10740a = zzareVar;
                        this.f10741b = str;
                        this.f10742c = str2;
                    }

                    @Override // com.google.android.gms.internal.ads.zzcxo
                    public final void zzt(Object obj) {
                        zzare zzareVar2 = this.f10740a;
                        ((zzast) obj).zza(new zzatc(zzareVar2.getType(), zzareVar2.getAmount()), this.f10741b, this.f10742c);
                    }
                });
                zzcxp.zza(zzcxzVar.f14048e, new zzcxo(zzareVar) { // from class: com.google.android.gms.internal.ads.yv

                    /* renamed from: a */
                    private final zzare f10739a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10739a = zzareVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzcxo
                    public final void zzt(Object obj) {
                        ((zzaro) obj).zza(this.f10739a);
                    }
                });
                zzcxp.zza(zzcxzVar.f14050g, new zzcxo(zzareVar, str, str2) { // from class: com.google.android.gms.internal.ads.yy

                    /* renamed from: a */
                    private final zzare f10744a;

                    /* renamed from: b */
                    private final String f10745b;

                    /* renamed from: c */
                    private final String f10746c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10744a = zzareVar;
                        this.f10745b = str;
                        this.f10746c = str2;
                    }

                    @Override // com.google.android.gms.internal.ads.zzcxo
                    public final void zzt(Object obj) {
                        ((zzarj) obj).zza(this.f10744a, this.f10745b, this.f10746c);
                    }
                });
                return;
            }
        }
    }

    @Deprecated
    public final void zzb(zzarj zzarjVar) {
        this.f14050g.set(zzarjVar);
    }

    @Deprecated
    public final void zzb(zzaro zzaroVar) {
        this.f14048e.set(zzaroVar);
    }

    public final void zzb(zzasl zzaslVar) {
        this.f14047d.set(zzaslVar);
    }

    public final void zzb(zzast zzastVar) {
        this.f14049f.set(zzastVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcxq
    public final void zzb(zzcxq zzcxqVar) {
        this.f14051h = (zzcxz) zzcxqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpa
    public final void zzco(final int i) {
        zzcxz zzcxzVar = this;
        while (true) {
            zzcxz zzcxzVar2 = zzcxzVar.f14051h;
            if (zzcxzVar2 != null) {
                zzcxzVar = zzcxzVar2;
            } else {
                zzcxp.zza(zzcxzVar.f14047d, new zzcxo(i) { // from class: com.google.android.gms.internal.ads.za

                    /* renamed from: a */
                    private final int f10750a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10750a = i;
                    }

                    @Override // com.google.android.gms.internal.ads.zzcxo
                    public final void zzt(Object obj) {
                        ((zzasl) obj).onRewardedAdFailedToShow(this.f10750a);
                    }
                });
                return;
            }
        }
    }
}
