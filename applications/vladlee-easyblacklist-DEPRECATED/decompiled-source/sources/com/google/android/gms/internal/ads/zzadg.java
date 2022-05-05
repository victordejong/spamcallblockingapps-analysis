package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadg.class */
public final class zzadg extends zzgc implements zzade {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzadg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final void destroy() {
        m3256b(8, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final List<String> getAvailableAssetNames() {
        Parcel a = m3258a(3, m3259a());
        ArrayList<String> createStringArrayList = a.createStringArrayList();
        a.recycle();
        return createStringArrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final String getCustomTemplateId() {
        Parcel a = m3258a(4, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final zzxb getVideoController() {
        Parcel a = m3258a(7, m3259a());
        zzxb zzj = zzxe.zzj(a.readStrongBinder());
        a.recycle();
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final void performClick(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        m3256b(5, a);
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final void recordImpression() {
        m3256b(6, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final String zzct(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        Parcel a2 = m3258a(1, a);
        String readString = a2.readString();
        a2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final zzaci zzcu(String str) {
        zzaci zzaciVar;
        Parcel a = m3259a();
        a.writeString(str);
        Parcel a2 = m3258a(2, a);
        IBinder readStrongBinder = a2.readStrongBinder();
        if (readStrongBinder == null) {
            zzaciVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            zzaciVar = queryLocalInterface instanceof zzaci ? (zzaci) queryLocalInterface : new zzack(readStrongBinder);
        }
        a2.recycle();
        return zzaciVar;
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final boolean zzp(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        Parcel a2 = m3258a(10, a);
        boolean zza = zzge.zza(a2);
        a2.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final void zzq(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(14, a);
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final IObjectWrapper zzrf() {
        Parcel a = m3258a(11, m3259a());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a.readStrongBinder());
        a.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final IObjectWrapper zzrk() {
        Parcel a = m3258a(9, m3259a());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a.readStrongBinder());
        a.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final boolean zzrl() {
        Parcel a = m3258a(12, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final boolean zzrm() {
        Parcel a = m3258a(13, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final void zzrn() {
        m3256b(15, m3259a());
    }
}
