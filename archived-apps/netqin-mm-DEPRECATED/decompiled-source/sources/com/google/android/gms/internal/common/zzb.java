package com.google.android.gms.internal.common;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/common/zzb.class */
public class zzb implements IInterface {

    /* renamed from: a */
    public final IBinder f29354a;

    /* renamed from: b */
    public final String f29355b;

    public zzb(IBinder iBinder, String str) {
        this.f29354a = iBinder;
        this.f29355b = str;
    }

    /* renamed from: W */
    public final Parcel m10522W() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f29355b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m10521a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f29354a.transact(i, parcel, obtain, 0);
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
        return this.f29354a;
    }

    /* renamed from: b */
    public final void m10520b(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f29354a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* renamed from: c */
    public final void m10519c(int i, Parcel parcel) throws RemoteException {
        try {
            this.f29354a.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
