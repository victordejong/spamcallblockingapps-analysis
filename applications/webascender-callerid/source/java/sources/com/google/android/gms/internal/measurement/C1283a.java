package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.measurement.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/a.class */
public class C1283a implements IInterface {

    /* renamed from: a */
    private final IBinder f3863a;

    /* renamed from: b */
    private final String f3864b;

    protected C1283a(IBinder iBinder, String str) {
        this.f3863a = iBinder;
        this.f3864b = str;
    }

    /* renamed from: B */
    protected final Parcel m2264B(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f3863a.transact(i, parcel, obtain, 0);
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

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f3863a;
    }

    /* renamed from: q */
    protected final Parcel m2263q() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f3864b);
        return obtain;
    }

    /* renamed from: w */
    protected final void m2262w(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f3863a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
