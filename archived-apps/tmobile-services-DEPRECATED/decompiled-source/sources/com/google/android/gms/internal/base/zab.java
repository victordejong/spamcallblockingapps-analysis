package com.google.android.gms.internal.base;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/base/zab.class */
public class zab implements IInterface {

    /* renamed from: a */
    private final IBinder f7817a;

    /* renamed from: b */
    private final String f7818b;

    /* JADX INFO: Access modifiers changed from: protected */
    public zab(IBinder iBinder, String str) {
        this.f7817a = iBinder;
        this.f7818b = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Parcel m14117a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f7818b);
        return obtain;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f7817a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final Parcel m14116b(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f7817a.transact(i, parcel, obtain, 0);
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
    /* renamed from: c */
    public final void m14115c(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f7817a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public final void m14114f(int i, Parcel parcel) throws RemoteException {
        try {
            this.f7817a.transact(1, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
