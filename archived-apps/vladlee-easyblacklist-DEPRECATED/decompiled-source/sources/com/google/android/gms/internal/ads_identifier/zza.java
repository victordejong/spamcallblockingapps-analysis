package com.google.android.gms.internal.ads_identifier;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads_identifier/zza.class */
public class zza implements IInterface {

    /* renamed from: a */
    private final IBinder f15779a;

    /* renamed from: b */
    private final String f15780b;

    /* JADX INFO: Access modifiers changed from: protected */
    public zza(IBinder iBinder, String str) {
        this.f15779a = iBinder;
        this.f15780b = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Parcel m2939a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f15780b);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Parcel m2938a(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f15779a.transact(i, parcel, obtain, 0);
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
        return this.f15779a;
    }
}
