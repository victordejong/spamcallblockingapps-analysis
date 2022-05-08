package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzq.class */
public class zzq implements IInterface {
    private final IBinder zzqt;
    private final String zzqu;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzq(IBinder iBinder, String str) {
        this.zzqt = iBinder;
        this.zzqu = str;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.zzqt;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel obtainAndWriteInterfaceToken() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.zzqu);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel transactAndReadException(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.zzqt.transact(i, parcel, obtain, 0);
                obtain.readException();
                parcel.recycle();
                return obtain;
            } catch (RuntimeException e) {
                obtain.recycle();
                throw e;
            }
        } catch (Throwable th) {
            parcel.recycle();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void transactAndReadExceptionReturnVoid(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.zzqt.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    protected final void transactOneway(int i, Parcel parcel) throws RemoteException {
        try {
            this.zzqt.transact(1, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
