package com.google.android.gms.internal.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zza.class */
public class zza implements IInterface {

    /* renamed from: a */
    public final IBinder f29356a;

    /* renamed from: b */
    public final String f29357b;

    public zza(IBinder iBinder, String str) {
        this.f29356a = iBinder;
        this.f29357b = str;
    }

    /* renamed from: W */
    public final Parcel m10509W() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f29357b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m10508a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f29356a.transact(i, parcel, obtain, 0);
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
    public IBinder asBinder() {
        return this.f29356a;
    }

    /* renamed from: b */
    public final void m10507b(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f29356a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* renamed from: c */
    public final void m10506c(int i, Parcel parcel) throws RemoteException {
        try {
            this.f29356a.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
