package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzr;
import com.google.android.gms.internal.measurement.zzs;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzah.class */
public abstract class zzah extends zzr implements zzag {
    public zzah() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.zzr
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zza((zzad) zzs.zza(parcel, zzad.CREATOR), (zzh) zzs.zza(parcel, zzh.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                zza((zzfh) zzs.zza(parcel, zzfh.CREATOR), (zzh) zzs.zza(parcel, zzh.CREATOR));
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                zza((zzh) zzs.zza(parcel, zzh.CREATOR));
                parcel2.writeNoException();
                return true;
            case 5:
                zza((zzad) zzs.zza(parcel, zzad.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                zzb((zzh) zzs.zza(parcel, zzh.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                List<zzfh> zza = zza((zzh) zzs.zza(parcel, zzh.CREATOR), zzs.zza(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(zza);
                return true;
            case 9:
                byte[] zza2 = zza((zzad) zzs.zza(parcel, zzad.CREATOR), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeByteArray(zza2);
                return true;
            case 10:
                zza(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                String zzc = zzc((zzh) zzs.zza(parcel, zzh.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(zzc);
                return true;
            case 12:
                zza((zzl) zzs.zza(parcel, zzl.CREATOR), (zzh) zzs.zza(parcel, zzh.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                zzb((zzl) zzs.zza(parcel, zzl.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                List<zzfh> zza3 = zza(parcel.readString(), parcel.readString(), zzs.zza(parcel), (zzh) zzs.zza(parcel, zzh.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(zza3);
                return true;
            case 15:
                List<zzfh> zza4 = zza(parcel.readString(), parcel.readString(), parcel.readString(), zzs.zza(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(zza4);
                return true;
            case 16:
                List<zzl> zza5 = zza(parcel.readString(), parcel.readString(), (zzh) zzs.zza(parcel, zzh.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(zza5);
                return true;
            case 17:
                List<zzl> zze = zze(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(zze);
                return true;
            case 18:
                zzd((zzh) zzs.zza(parcel, zzh.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
