package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzank.class */
public abstract class zzank extends zzgt implements zzanh {
    public zzank() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    /* renamed from: a */
    public static zzanh m16636a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        return queryLocalInterface instanceof zzanh ? (zzanh) queryLocalInterface : new zzanj(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzanm zzanmVar;
        switch (i) {
            case 1:
                onAdClicked();
                break;
            case 2:
                mo13796A();
                break;
            case 3:
                mo13792a(parcel.readInt());
                break;
            case 4:
                mo13779k();
                break;
            case 5:
                mo13776t();
                break;
            case 6:
                mo13775x();
                break;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzanmVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
                    zzanmVar = queryLocalInterface instanceof zzanm ? (zzanm) queryLocalInterface : new zzanl(readStrongBinder);
                }
                mo13789a(zzanmVar);
                break;
            case 8:
                mo13795M();
                break;
            case 9:
                mo13786a(parcel.readString(), parcel.readString());
                break;
            case 10:
                mo13790a(zzaez.m16809a(parcel.readStrongBinder()), parcel.readString());
                break;
            case 11:
                mo13781h0();
                break;
            case 12:
                mo13778l(parcel.readString());
                break;
            case 13:
                mo13793X1();
                break;
            case 14:
                mo13788a((zzauv) zzgw.m12080a(parcel, zzauv.CREATOR));
                break;
            case 15:
                mo13785a0();
                break;
            case 16:
                mo13787a(zzauw.m16317a(parcel.readStrongBinder()));
                break;
            case 17:
                mo13780j(parcel.readInt());
                break;
            case 18:
                mo13794P1();
                break;
            case 19:
                mo13783c((Bundle) zzgw.m12080a(parcel, Bundle.CREATOR));
                break;
            case 20:
                mo13777m0();
                break;
            case 21:
                mo13774y(parcel.readString());
                break;
            case 22:
                mo13791a(parcel.readInt(), parcel.readString());
                break;
            case 23:
                mo13784b((zzva) zzgw.m12080a(parcel, zzva.CREATOR));
                break;
            case 24:
                mo13782g((zzva) zzgw.m12080a(parcel, zzva.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
