package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasb.class */
public final class zzasb extends zzgc implements zzarz {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzasb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zza(IObjectWrapper iObjectWrapper, zzasd zzasdVar) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzasdVar);
        m3256b(7, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzaf(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(1, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzag(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(3, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzah(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(4, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzai(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(5, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzaj(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(6, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzak(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(8, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzal(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(10, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzam(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(11, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzb(Bundle bundle) {
        Parcel a = m3259a();
        zzge.zza(a, bundle);
        m3256b(12, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzd(IObjectWrapper iObjectWrapper, int i) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        a.writeInt(i);
        m3256b(2, a);
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zze(IObjectWrapper iObjectWrapper, int i) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        a.writeInt(i);
        m3256b(9, a);
    }
}
