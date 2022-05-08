package com.google.android.gms.internal.base;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/base/zab.class */
public class zab implements IInterface {

    /* renamed from: a */
    private final IBinder f15788a;

    /* renamed from: b */
    private final String f15789b;

    /* JADX INFO: Access modifiers changed from: protected */
    public zab(IBinder iBinder, String str) {
        this.f15788a = iBinder;
        this.f15789b = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Parcel m2936a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f15789b);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Parcel m2935a(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f15788a.transact(i, parcel, obtain, 0);
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
    public final void m2934a(Parcel parcel) {
        try {
            this.f15788a.transact(1, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f15788a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final void m2933b(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f15788a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
