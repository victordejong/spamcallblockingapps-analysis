package com.google.android.gms.internal.ads_identifier;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads_identifier/zza.class */
public class zza implements IInterface {

    /* renamed from: a */
    private final IBinder f7815a;

    /* renamed from: b */
    private final String f7816b;

    /* JADX INFO: Access modifiers changed from: protected */
    public zza(IBinder iBinder, String str) {
        this.f7815a = iBinder;
        this.f7816b = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Parcel m14123a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f7816b);
        return obtain;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f7815a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final Parcel m14122b(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f7815a.transact(i, parcel, obtain, 0);
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
}
