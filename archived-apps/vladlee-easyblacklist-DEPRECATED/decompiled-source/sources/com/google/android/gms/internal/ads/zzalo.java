package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalo.class */
public abstract class zzalo extends zzgb implements zzall {
    public zzalo() {
        super("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        String str;
        IInterface iInterface;
        boolean z;
        switch (i) {
            case 2:
                str = getHeadline();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 3:
                List images = getImages();
                parcel2.writeNoException();
                parcel2.writeList(images);
                return true;
            case 4:
                str = getBody();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 5:
                iInterface = zzrg();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 6:
                str = getCallToAction();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 7:
                double starRating = getStarRating();
                parcel2.writeNoException();
                parcel2.writeDouble(starRating);
                return true;
            case 8:
                str = getStore();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 9:
                str = getPrice();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 10:
                recordImpression();
                parcel2.writeNoException();
                return true;
            case 11:
                zzu(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 12:
                zzv(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 13:
                z = getOverrideImpressionRecording();
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, z);
                return true;
            case 14:
                z = getOverrideClickHandling();
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, z);
                return true;
            case 15:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzge.zzb(parcel2, extras);
                return true;
            case 16:
                zzw(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 17:
                iInterface = getVideoController();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 18:
                iInterface = zzsu();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 19:
                iInterface = zzrh();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 20:
                iInterface = zzsv();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 21:
                iInterface = zzri();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 22:
                zzc(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
