package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.dynamic.IObjectWrapper;
/* renamed from: com.google.android.gms.internal.ads.un */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/un.class */
final class BinderC2281un extends zzary {

    /* renamed from: a */
    private final /* synthetic */ zzbqj f10580a;

    /* renamed from: b */
    private final /* synthetic */ zzboq f10581b;

    /* renamed from: c */
    private final /* synthetic */ zzbpm f10582c;

    /* renamed from: d */
    private final /* synthetic */ zzbte f10583d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC2281un(zzbqj zzbqjVar, zzboq zzboqVar, zzbpm zzbpmVar, zzbte zzbteVar) {
        this.f10580a = zzbqjVar;
        this.f10581b = zzboqVar;
        this.f10582c = zzbpmVar;
        this.f10583d = zzbteVar;
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zza(IObjectWrapper iObjectWrapper, zzasd zzasdVar) {
        this.f10583d.zza(zzasdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzaf(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzag(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzah(IObjectWrapper iObjectWrapper) {
        this.f10580a.zztf();
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzai(IObjectWrapper iObjectWrapper) {
        this.f10583d.zzrs();
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzaj(IObjectWrapper iObjectWrapper) {
        this.f10580a.zzte();
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzak(IObjectWrapper iObjectWrapper) {
        this.f10581b.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzal(IObjectWrapper iObjectWrapper) {
        this.f10582c.onAdLeftApplication();
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzam(IObjectWrapper iObjectWrapper) {
        this.f10582c.onRewardedVideoCompleted();
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzb(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzd(IObjectWrapper iObjectWrapper, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zze(IObjectWrapper iObjectWrapper, int i) {
    }
}
