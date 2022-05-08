package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzw.class */
public final class zzw extends zzq implements zzu {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzw(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // com.google.android.gms.internal.measurement.zzu
    public final Bundle zza(Bundle bundle) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzs.zza(obtainAndWriteInterfaceToken, bundle);
        Parcel transactAndReadException = transactAndReadException(1, obtainAndWriteInterfaceToken);
        Bundle bundle2 = (Bundle) zzs.zza(transactAndReadException, Bundle.CREATOR);
        transactAndReadException.recycle();
        return bundle2;
    }
}
