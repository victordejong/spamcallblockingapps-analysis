package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwg.class */
public abstract class zzwg extends zzgb implements zzwd {
    public zzwg() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        IInterface iInterface;
        switch (i) {
            case 1:
                iInterface = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzuj) zzge.zza(parcel, zzuj.CREATOR), parcel.readString(), zzalb.zzaa(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 2:
                iInterface = zzb(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzuj) zzge.zza(parcel, zzuj.CREATOR), parcel.readString(), zzalb.zzaa(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 3:
                iInterface = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), zzalb.zzaa(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 4:
                iInterface = zzc(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 5:
                iInterface = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 6:
                iInterface = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzalb.zzaa(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 7:
                iInterface = zzd(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 8:
                iInterface = zzb(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 9:
                iInterface = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 10:
                iInterface = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzuj) zzge.zza(parcel, zzuj.CREATOR), parcel.readString(), parcel.readInt());
                break;
            case 11:
                iInterface = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 12:
                iInterface = zzb(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), zzalb.zzaa(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 13:
                iInterface = zzc(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzuj) zzge.zza(parcel, zzuj.CREATOR), parcel.readString(), zzalb.zzaa(parcel.readStrongBinder()), parcel.readInt());
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        zzge.zza(parcel2, iInterface);
        return true;
    }
}
