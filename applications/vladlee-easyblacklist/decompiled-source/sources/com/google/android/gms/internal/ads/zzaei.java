package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaei.class */
public final class zzaei extends zzgc implements zzaeg {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaei(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final void cancelUnconfirmedClick() {
        m3256b(22, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final void destroy() {
        m3256b(13, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final String getAdvertiser() {
        Parcel a = m3258a(7, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final String getBody() {
        Parcel a = m3258a(4, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final String getCallToAction() {
        Parcel a = m3258a(6, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final Bundle getExtras() {
        Parcel a = m3258a(20, m3259a());
        Bundle bundle = (Bundle) zzge.zza(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final String getHeadline() {
        Parcel a = m3258a(2, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final List getImages() {
        Parcel a = m3258a(3, m3259a());
        ArrayList zzb = zzge.zzb(a);
        a.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final String getMediationAdapterClassName() {
        Parcel a = m3258a(12, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final List getMuteThisAdReasons() {
        Parcel a = m3258a(23, m3259a());
        ArrayList zzb = zzge.zzb(a);
        a.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final String getPrice() {
        Parcel a = m3258a(10, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final double getStarRating() {
        Parcel a = m3258a(8, m3259a());
        double readDouble = a.readDouble();
        a.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final String getStore() {
        Parcel a = m3258a(9, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final zzxb getVideoController() {
        Parcel a = m3258a(11, m3259a());
        zzxb zzj = zzxe.zzj(a.readStrongBinder());
        a.recycle();
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final boolean isCustomClickGestureEnabled() {
        Parcel a = m3258a(30, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final boolean isCustomMuteThisAdEnabled() {
        Parcel a = m3258a(24, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final void performClick(Bundle bundle) {
        Parcel a = m3259a();
        zzge.zza(a, bundle);
        m3256b(15, a);
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final void recordCustomClickGesture() {
        m3256b(28, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final boolean recordImpression(Bundle bundle) {
        Parcel a = m3259a();
        zzge.zza(a, bundle);
        Parcel a2 = m3258a(16, a);
        boolean zza = zzge.zza(a2);
        a2.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final void reportTouchEvent(Bundle bundle) {
        Parcel a = m3259a();
        zzge.zza(a, bundle);
        m3256b(17, a);
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final void zza(zzaeb zzaebVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzaebVar);
        m3256b(21, a);
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final void zza(zzwn zzwnVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzwnVar);
        m3256b(26, a);
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final void zza(zzwr zzwrVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzwrVar);
        m3256b(25, a);
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final zzxa zzkb() {
        Parcel a = m3258a(31, m3259a());
        zzxa zzi = zzwz.zzi(a.readStrongBinder());
        a.recycle();
        return zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final IObjectWrapper zzrf() {
        Parcel a = m3258a(18, m3259a());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a.readStrongBinder());
        a.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final zzaci zzrg() {
        zzaci zzaciVar;
        Parcel a = m3258a(5, m3259a());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzaciVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            zzaciVar = queryLocalInterface instanceof zzaci ? (zzaci) queryLocalInterface : new zzack(readStrongBinder);
        }
        a.recycle();
        return zzaciVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final zzaca zzrh() {
        zzaca zzacaVar;
        Parcel a = m3258a(14, m3259a());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzacaVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            zzacaVar = queryLocalInterface instanceof zzaca ? (zzaca) queryLocalInterface : new zzacc(readStrongBinder);
        }
        a.recycle();
        return zzacaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final IObjectWrapper zzri() {
        Parcel a = m3258a(19, m3259a());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a.readStrongBinder());
        a.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final void zzrp() {
        m3256b(27, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final zzacd zzrq() {
        zzacd zzacdVar;
        Parcel a = m3258a(29, m3259a());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzacdVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            zzacdVar = queryLocalInterface instanceof zzacd ? (zzacd) queryLocalInterface : new zzacf(readStrongBinder);
        }
        a.recycle();
        return zzacdVar;
    }
}
