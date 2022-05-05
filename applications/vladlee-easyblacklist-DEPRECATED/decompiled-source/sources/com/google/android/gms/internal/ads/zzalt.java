package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalt.class */
public final class zzalt extends zzgc implements zzalr {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzalt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final String getAdvertiser() {
        Parcel a = m3258a(7, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final String getBody() {
        Parcel a = m3258a(4, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final String getCallToAction() {
        Parcel a = m3258a(6, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final Bundle getExtras() {
        Parcel a = m3258a(16, m3259a());
        Bundle bundle = (Bundle) zzge.zza(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final String getHeadline() {
        Parcel a = m3258a(2, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final List getImages() {
        Parcel a = m3258a(3, m3259a());
        ArrayList zzb = zzge.zzb(a);
        a.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final float getMediaContentAspectRatio() {
        Parcel a = m3258a(23, m3259a());
        float readFloat = a.readFloat();
        a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final boolean getOverrideClickHandling() {
        Parcel a = m3258a(18, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final boolean getOverrideImpressionRecording() {
        Parcel a = m3258a(17, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final String getPrice() {
        Parcel a = m3258a(10, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final double getStarRating() {
        Parcel a = m3258a(8, m3259a());
        double readDouble = a.readDouble();
        a.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final String getStore() {
        Parcel a = m3258a(9, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final zzxb getVideoController() {
        Parcel a = m3258a(11, m3259a());
        zzxb zzj = zzxe.zzj(a.readStrongBinder());
        a.recycle();
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final void recordImpression() {
        m3256b(19, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, iObjectWrapper2);
        zzge.zza(a, iObjectWrapper3);
        m3256b(21, a);
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final zzaci zzrg() {
        Parcel a = m3258a(5, m3259a());
        zzaci zzm = zzach.zzm(a.readStrongBinder());
        a.recycle();
        return zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final zzaca zzrh() {
        Parcel a = m3258a(12, m3259a());
        zzaca zzl = zzabz.zzl(a.readStrongBinder());
        a.recycle();
        return zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final IObjectWrapper zzri() {
        Parcel a = m3258a(15, m3259a());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a.readStrongBinder());
        a.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final IObjectWrapper zzsu() {
        Parcel a = m3258a(13, m3259a());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a.readStrongBinder());
        a.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final IObjectWrapper zzsv() {
        Parcel a = m3258a(14, m3259a());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a.readStrongBinder());
        a.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final void zzu(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(20, a);
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final void zzw(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(22, a);
    }
}
