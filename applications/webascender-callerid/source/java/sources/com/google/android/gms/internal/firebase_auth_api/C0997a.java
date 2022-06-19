package com.google.android.gms.internal.firebase_auth_api;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/a.class */
public class C0997a implements IInterface {

    /* renamed from: a */
    private final IBinder f3642a;

    /* renamed from: b */
    private final String f3643b;

    protected C0997a(IBinder iBinder, String str) {
        this.f3642a = iBinder;
        this.f3643b = str;
    }

    /* renamed from: B */
    protected final Parcel m3046B() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f3643b);
        return obtain;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f3642a;
    }

    /* renamed from: q */
    protected final void m3045q(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f3642a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* renamed from: w */
    protected final void m3044w(int i, Parcel parcel) throws RemoteException {
        try {
            this.f3642a.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
