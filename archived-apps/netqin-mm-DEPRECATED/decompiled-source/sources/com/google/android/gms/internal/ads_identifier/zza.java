package com.google.android.gms.internal.ads_identifier;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads_identifier/zza.class */
public class zza implements IInterface {

    /* renamed from: a */
    public final IBinder f29175a;

    /* renamed from: b */
    public final String f29176b;

    public zza(IBinder iBinder, String str) {
        this.f29175a = iBinder;
        this.f29176b = str;
    }

    /* renamed from: W */
    public final Parcel m10897W() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f29176b);
        return obtain;
    }

    /* renamed from: a */
    public final Parcel m10896a(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f29175a.transact(i, parcel, obtain, 0);
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
        return this.f29175a;
    }
}
