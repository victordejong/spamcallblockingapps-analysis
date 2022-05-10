package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzc;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzel.class */
public abstract class zzel extends zzc implements zzei {
    public zzel() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.zzc
    /* renamed from: a */
    public final boolean mo9195a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                mo9035a((zzaq) zzb.m10428a(parcel, zzaq.CREATOR), (zzn) zzb.m10428a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                mo9031a((zzku) zzb.m10428a(parcel, zzku.CREATOR), (zzn) zzb.m10428a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                mo9015d((zzn) zzb.m10428a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                return true;
            case 5:
                mo9033a((zzaq) zzb.m10428a(parcel, zzaq.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                mo9014e((zzn) zzb.m10428a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                List<zzku> a = mo9028a((zzn) zzb.m10428a(parcel, zzn.CREATOR), zzb.m10430a(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(a);
                return true;
            case 9:
                byte[] a2 = mo9034a((zzaq) zzb.m10428a(parcel, zzaq.CREATOR), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeByteArray(a2);
                return true;
            case 10:
                mo9037a(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                String b = mo9018b((zzn) zzb.m10428a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(b);
                return true;
            case 12:
                mo9026a((zzz) zzb.m10428a(parcel, zzz.CREATOR), (zzn) zzb.m10428a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                mo9027a((zzz) zzb.m10428a(parcel, zzz.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                List<zzku> a3 = mo9021a(parcel.readString(), parcel.readString(), zzb.m10430a(parcel), (zzn) zzb.m10428a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(a3);
                return true;
            case 15:
                List<zzku> a4 = mo9022a(parcel.readString(), parcel.readString(), parcel.readString(), zzb.m10430a(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(a4);
                return true;
            case 16:
                List<zzz> a5 = mo9024a(parcel.readString(), parcel.readString(), (zzn) zzb.m10428a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(a5);
                return true;
            case 17:
                List<zzz> a6 = mo9023a(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(a6);
                return true;
            case 18:
                mo9016c((zzn) zzb.m10428a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                return true;
            case 19:
                mo9036a((Bundle) zzb.m10428a(parcel, Bundle.CREATOR), (zzn) zzb.m10428a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                return true;
            case 20:
                mo9030a((zzn) zzb.m10428a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
