package com.google.android.gms.internal.icing;

import android.os.IInterface;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzad.class */
public interface zzad extends IInterface {
    void zza(Status status) throws RemoteException;

    void zza(Status status, ParcelFileDescriptor parcelFileDescriptor) throws RemoteException;

    void zza(Status status, boolean z) throws RemoteException;

    void zza(zzp zzpVar) throws RemoteException;
}
