package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgc.class */
public class zzgc implements IInterface {

    /* renamed from: a */
    private final IBinder f14807a;

    /* renamed from: b */
    private final String f14808b;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzgc(IBinder iBinder, String str) {
        this.f14807a = iBinder;
        this.f14808b = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Parcel m3259a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f14808b);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Parcel m3258a(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f14807a.transact(i, parcel, obtain, 0);
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
    public final void m3257a(Parcel parcel) {
        try {
            this.f14807a.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f14807a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final void m3256b(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f14807a.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
