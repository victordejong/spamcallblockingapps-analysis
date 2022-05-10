package com.google.android.gms.internal.play_billing;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/play_billing/zze.class */
public class zze implements IInterface {

    /* renamed from: a */
    public final IBinder f29697a;

    /* renamed from: b */
    public final String f29698b = "com.android.vending.billing.IInAppBillingService";

    public zze(IBinder iBinder, String str) {
        this.f29697a = iBinder;
    }

    /* renamed from: a */
    public final Parcel m9429a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f29697a.transact(i, parcel, obtain, 0);
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
        return this.f29697a;
    }

    /* renamed from: w */
    public final Parcel m9428w() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f29698b);
        return obtain;
    }
}
