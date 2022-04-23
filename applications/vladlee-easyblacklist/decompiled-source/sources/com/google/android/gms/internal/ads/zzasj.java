package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasj.class */
public abstract class zzasj extends zzgb implements zzasg {
    public zzasj() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    public static zzasg zzam(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
        return queryLocalInterface instanceof zzasg ? (zzasg) queryLocalInterface : new zzasi(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        IInterface iInterface;
        zzasl zzaslVar = null;
        zzaso zzasoVar = null;
        zzast zzastVar = null;
        switch (i) {
            case 1:
                zzug zzugVar = (zzug) zzge.zza(parcel, zzug.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    zzasoVar = queryLocalInterface instanceof zzaso ? (zzaso) queryLocalInterface : new zzasq(readStrongBinder);
                }
                zza(zzugVar, zzasoVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    zzaslVar = queryLocalInterface2 instanceof zzasl ? (zzasl) queryLocalInterface2 : new zzasn(readStrongBinder2);
                }
                zza(zzaslVar);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean isLoaded = isLoaded();
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, isLoaded);
                return true;
            case 4:
                String mediationAdapterClassName = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 5:
                zzh(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    zzastVar = queryLocalInterface3 instanceof zzast ? (zzast) queryLocalInterface3 : new zzass(readStrongBinder3);
                }
                zza(zzastVar);
                parcel2.writeNoException();
                return true;
            case 7:
                zza((zzatb) zzge.zza(parcel, zzatb.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                zza(zzwy.zzh(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle adMetadata = getAdMetadata();
                parcel2.writeNoException();
                zzge.zzb(parcel2, adMetadata);
                return true;
            case 10:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzge.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 11:
                iInterface = zzpz();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 12:
                iInterface = zzkb();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            default:
                return false;
        }
    }
}
