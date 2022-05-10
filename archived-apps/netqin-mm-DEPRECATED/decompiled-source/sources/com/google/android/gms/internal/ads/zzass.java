package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzass.class */
public abstract class zzass extends zzgt implements zzast {
    public zzass() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            zzasw zzaswVar = null;
            zzasw zzaswVar2 = null;
            zzasw zzaswVar3 = null;
            zzasu zzasuVar = null;
            zzasw zzaswVar4 = null;
            if (i == 2) {
                zzasn zzasnVar = (zzasn) zzgw.m12080a(parcel, zzasn.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                    zzasuVar = queryLocalInterface instanceof zzasu ? (zzasu) queryLocalInterface : new zzasx(readStrongBinder);
                }
                mo13924a(zzasnVar, zzasuVar);
                parcel2.writeNoException();
                return true;
            } else if (i == 4) {
                zzatc zzatcVar = (zzatc) zzgw.m12080a(parcel, zzatc.CREATOR);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzaswVar3 = queryLocalInterface2 instanceof zzasw ? (zzasw) queryLocalInterface2 : new zzasy(readStrongBinder2);
                }
                mo13922a(zzatcVar, zzaswVar3);
                parcel2.writeNoException();
                return true;
            } else if (i == 5) {
                zzatc zzatcVar2 = (zzatc) zzgw.m12080a(parcel, zzatc.CREATOR);
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzaswVar2 = queryLocalInterface3 instanceof zzasw ? (zzasw) queryLocalInterface3 : new zzasy(readStrongBinder3);
                }
                mo13915b(zzatcVar2, zzaswVar2);
                parcel2.writeNoException();
                return true;
            } else if (i == 6) {
                zzatc zzatcVar3 = (zzatc) zzgw.m12080a(parcel, zzatc.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzaswVar = queryLocalInterface4 instanceof zzasw ? (zzasw) queryLocalInterface4 : new zzasy(readStrongBinder4);
                }
                mo13913c(zzatcVar3, zzaswVar);
                parcel2.writeNoException();
                return true;
            } else if (i != 7) {
                return false;
            } else {
                String readString = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzaswVar4 = queryLocalInterface5 instanceof zzasw ? (zzasw) queryLocalInterface5 : new zzasy(readStrongBinder5);
                }
                mo13917a(readString, zzaswVar4);
                parcel2.writeNoException();
                return true;
            }
        } else {
            zzasp a = mo13925a((zzasn) zzgw.m12080a(parcel, zzasn.CREATOR));
            parcel2.writeNoException();
            zzgw.m12076b(parcel2, a);
            return true;
        }
    }
}
