package com.google.android.gms.internal.common;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/common/zza.class */
public class zza implements IInterface {

    /* renamed from: a */
    private final IBinder f15812a;

    /* renamed from: b */
    private final String f15813b;

    /* JADX INFO: Access modifiers changed from: protected */
    public zza(IBinder iBinder, String str) {
        this.f15812a = iBinder;
        this.f15813b = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Parcel m2931a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f15813b);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Parcel m2930a(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f15812a.transact(i, parcel, obtain, 0);
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
    /* renamed from: a */
    public final void m2929a(Parcel parcel) {
        try {
            this.f15812a.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f15812a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final void m2928b(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f15812a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
