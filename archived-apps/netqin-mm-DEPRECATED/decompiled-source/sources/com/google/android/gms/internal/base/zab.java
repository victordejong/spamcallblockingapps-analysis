package com.google.android.gms.internal.base;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/base/zab.class */
public class zab implements IInterface {

    /* renamed from: a */
    public final IBinder f29177a;

    /* renamed from: b */
    public final String f29178b;

    public zab(IBinder iBinder, String str) {
        this.f29177a = iBinder;
        this.f29178b = str;
    }

    /* renamed from: W */
    public final Parcel m10891W() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f29178b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m10890a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f29177a.transact(2, parcel, obtain, 0);
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
        return this.f29177a;
    }

    /* renamed from: b */
    public final void m10889b(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f29177a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* renamed from: c */
    public final void m10888c(int i, Parcel parcel) throws RemoteException {
        try {
            this.f29177a.transact(1, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
