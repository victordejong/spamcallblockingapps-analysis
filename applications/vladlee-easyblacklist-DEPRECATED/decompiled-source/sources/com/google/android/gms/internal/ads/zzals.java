package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzals.class */
public final class zzals extends zzgc implements zzalq {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzals(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final String getAdvertiser() {
        Parcel a = m3258a(7, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final String getBody() {
        Parcel a = m3258a(4, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final String getCallToAction() {
        Parcel a = m3258a(6, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final Bundle getExtras() {
        Parcel a = m3258a(13, m3259a());
        Bundle bundle = (Bundle) zzge.zza(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final String getHeadline() {
        Parcel a = m3258a(2, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final List getImages() {
        Parcel a = m3258a(3, m3259a());
        ArrayList zzb = zzge.zzb(a);
        a.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final boolean getOverrideClickHandling() {
        Parcel a = m3258a(12, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final boolean getOverrideImpressionRecording() {
        Parcel a = m3258a(11, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final zzxb getVideoController() {
        Parcel a = m3258a(16, m3259a());
        zzxb zzj = zzxe.zzj(a.readStrongBinder());
        a.recycle();
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final void recordImpression() {
        m3256b(8, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, iObjectWrapper2);
        zzge.zza(a, iObjectWrapper3);
        m3256b(22, a);
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final zzaca zzrh() {
        Parcel a = m3258a(19, m3259a());
        zzaca zzl = zzabz.zzl(a.readStrongBinder());
        a.recycle();
        return zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final IObjectWrapper zzri() {
        Parcel a = m3258a(21, m3259a());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a.readStrongBinder());
        a.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final zzaci zzrj() {
        Parcel a = m3258a(5, m3259a());
        zzaci zzm = zzach.zzm(a.readStrongBinder());
        a.recycle();
        return zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final IObjectWrapper zzsu() {
        Parcel a = m3258a(15, m3259a());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a.readStrongBinder());
        a.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final IObjectWrapper zzsv() {
        Parcel a = m3258a(20, m3259a());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a.readStrongBinder());
        a.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final void zzu(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(9, a);
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final void zzv(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(10, a);
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final void zzw(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(14, a);
    }
}
