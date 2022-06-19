package com.google.android.gms.internal.firebase_auth_api;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.w2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/w2.class */
public class BinderC1237w2 extends Binder implements IInterface {
    protected BinderC1237w2(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i <= 16777215) {
            parcel.enforceInterface(getInterfaceDescriptor());
        } else if (super.onTransact(i, parcel, parcel2, i2)) {
            return true;
        }
        return m2372q(i, parcel, parcel2, i2);
    }

    /* renamed from: q */
    protected boolean m2372q(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        throw null;
    }
}
