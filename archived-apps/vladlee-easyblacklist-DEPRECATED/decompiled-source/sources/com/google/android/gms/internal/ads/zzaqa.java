package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqa.class */
public abstract class zzaqa extends zzgb implements zzaqb {
    public zzaqa() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            zzaqe zzaqeVar = null;
            zzaqe zzaqeVar2 = null;
            zzaqe zzaqeVar3 = null;
            zzaqc zzaqcVar = null;
            zzaqe zzaqeVar4 = null;
            if (i == 2) {
                zzapv zzapvVar = (zzapv) zzge.zza(parcel, zzapv.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                    zzaqcVar = queryLocalInterface instanceof zzaqc ? (zzaqc) queryLocalInterface : new zzaqf(readStrongBinder);
                }
                zza(zzapvVar, zzaqcVar);
            } else if (i == 4) {
                zzaqk zzaqkVar = (zzaqk) zzge.zza(parcel, zzaqk.CREATOR);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzaqeVar3 = queryLocalInterface2 instanceof zzaqe ? (zzaqe) queryLocalInterface2 : new zzaqg(readStrongBinder2);
                }
                zza(zzaqkVar, zzaqeVar3);
            } else if (i == 5) {
                zzaqk zzaqkVar2 = (zzaqk) zzge.zza(parcel, zzaqk.CREATOR);
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzaqeVar2 = queryLocalInterface3 instanceof zzaqe ? (zzaqe) queryLocalInterface3 : new zzaqg(readStrongBinder3);
                }
                zzb(zzaqkVar2, zzaqeVar2);
            } else if (i == 6) {
                zzaqk zzaqkVar3 = (zzaqk) zzge.zza(parcel, zzaqk.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzaqeVar = queryLocalInterface4 instanceof zzaqe ? (zzaqe) queryLocalInterface4 : new zzaqg(readStrongBinder4);
                }
                zzc(zzaqkVar3, zzaqeVar);
            } else if (i != 7) {
                return false;
            } else {
                String readString = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzaqeVar4 = queryLocalInterface5 instanceof zzaqe ? (zzaqe) queryLocalInterface5 : new zzaqg(readStrongBinder5);
                }
                zza(readString, zzaqeVar4);
            }
            parcel2.writeNoException();
            return true;
        }
        zzapx zza = zza((zzapv) zzge.zza(parcel, zzapv.CREATOR));
        parcel2.writeNoException();
        zzge.zzb(parcel2, zza);
        return true;
    }
}
