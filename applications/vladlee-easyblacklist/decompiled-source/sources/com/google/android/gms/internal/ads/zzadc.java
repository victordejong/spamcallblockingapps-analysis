package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadc.class */
public final class zzadc extends zzgc implements zzada {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzadc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void destroy() {
        m3256b(10, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final String getAdvertiser() {
        Parcel a = m3258a(8, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final String getBody() {
        Parcel a = m3258a(5, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final String getCallToAction() {
        Parcel a = m3258a(7, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final Bundle getExtras() {
        Parcel a = m3258a(9, m3259a());
        Bundle bundle = (Bundle) zzge.zza(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final String getHeadline() {
        Parcel a = m3258a(3, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final List getImages() {
        Parcel a = m3258a(4, m3259a());
        ArrayList zzb = zzge.zzb(a);
        a.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final String getMediationAdapterClassName() {
        Parcel a = m3258a(17, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final zzxb getVideoController() {
        Parcel a = m3258a(11, m3259a());
        zzxb zzj = zzxe.zzj(a.readStrongBinder());
        a.recycle();
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void performClick(Bundle bundle) {
        Parcel a = m3259a();
        zzge.zza(a, bundle);
        m3256b(12, a);
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final boolean recordImpression(Bundle bundle) {
        Parcel a = m3259a();
        zzge.zza(a, bundle);
        Parcel a2 = m3258a(13, a);
        boolean zza = zzge.zza(a2);
        a2.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void reportTouchEvent(Bundle bundle) {
        Parcel a = m3259a();
        zzge.zza(a, bundle);
        m3256b(14, a);
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final IObjectWrapper zzrf() {
        Parcel a = m3258a(2, m3259a());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a.readStrongBinder());
        a.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final zzaca zzrh() {
        zzaca zzacaVar;
        Parcel a = m3258a(15, m3259a());
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

    @Override // com.google.android.gms.internal.ads.zzada
    public final IObjectWrapper zzri() {
        Parcel a = m3258a(16, m3259a());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a.readStrongBinder());
        a.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final zzaci zzrj() {
        zzaci zzaciVar;
        Parcel a = m3258a(6, m3259a());
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
}
