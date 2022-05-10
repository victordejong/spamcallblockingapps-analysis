package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavb.class */
public abstract class zzavb extends zzgt implements zzauy {
    public zzavb() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    /* renamed from: a */
    public static zzauy m16301a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
        return queryLocalInterface instanceof zzauy ? (zzauy) queryLocalInterface : new zzava(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzavl zzavlVar = null;
        zzavd zzavdVar = null;
        zzavg zzavgVar = null;
        zzavg zzavgVar2 = null;
        switch (i) {
            case 1:
                zzvg zzvgVar = (zzvg) zzgw.m12080a(parcel, zzvg.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    zzavgVar = queryLocalInterface instanceof zzavg ? (zzavg) queryLocalInterface : new zzavi(readStrongBinder);
                }
                mo10903a(zzvgVar, zzavgVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    zzavdVar = queryLocalInterface2 instanceof zzavd ? (zzavd) queryLocalInterface2 : new zzavf(readStrongBinder2);
                }
                mo10907a(zzavdVar);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean isLoaded = isLoaded();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, isLoaded);
                return true;
            case 4:
                String a = mo10909a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case 5:
                mo10898m(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    zzavlVar = queryLocalInterface3 instanceof zzavl ? (zzavl) queryLocalInterface3 : new zzavk(readStrongBinder3);
                }
                mo10905a(zzavlVar);
                parcel2.writeNoException();
                return true;
            case 7:
                mo10904a((zzavt) zzgw.m12080a(parcel, zzavt.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                mo10902a(zzyg.m11120a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle G = mo10911G();
                parcel2.writeNoException();
                zzgw.m12076b(parcel2, G);
                return true;
            case 10:
                mo10908a(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), zzgw.m12082a(parcel));
                parcel2.writeNoException();
                return true;
            case 11:
                zzaux R1 = mo10910R1();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, R1);
                return true;
            case 12:
                zzyn l = mo10899l();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, l);
                return true;
            case 13:
                mo10901a(zzyl.m11117a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 14:
                zzvg zzvgVar2 = (zzvg) zzgw.m12080a(parcel, zzvg.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    zzavgVar2 = queryLocalInterface4 instanceof zzavg ? (zzavg) queryLocalInterface4 : new zzavi(readStrongBinder4);
                }
                mo10900b(zzvgVar2, zzavgVar2);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
