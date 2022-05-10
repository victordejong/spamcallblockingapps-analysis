package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zza;
import com.google.android.gms.internal.common.zzd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzn.class */
public abstract class zzn extends zza implements zzl {
    public zzn() {
        super("com.google.android.gms.common.internal.ICertData");
    }

    /* renamed from: a */
    public static zzl m17162a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
        return queryLocalInterface instanceof zzl ? (zzl) queryLocalInterface : new zzm(iBinder);
    }

    @Override // com.google.android.gms.internal.common.zza
    /* renamed from: a */
    public final boolean mo10523a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            IObjectWrapper zzb = zzb();
            parcel2.writeNoException();
            zzd.m10517a(parcel2, zzb);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int zzc = zzc();
            parcel2.writeNoException();
            parcel2.writeInt(zzc);
            return true;
        }
    }
}
