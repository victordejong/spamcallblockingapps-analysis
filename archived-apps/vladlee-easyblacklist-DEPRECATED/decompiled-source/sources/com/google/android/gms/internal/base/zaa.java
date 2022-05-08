package com.google.android.gms.internal.base;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/base/zaa.class */
public class zaa extends Binder implements IInterface {

    /* renamed from: a */
    private static zac f15787a;

    /* JADX INFO: Access modifiers changed from: protected */
    public zaa(String str) {
        attachInterface(this, str);
    }

    /* renamed from: a */
    protected boolean mo1588a(int i, Parcel parcel, Parcel parcel2) {
        return false;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        if (i > 16777215) {
            z = super.onTransact(i, parcel, parcel2, i2);
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
            z = false;
        }
        if (z) {
            return true;
        }
        return mo1588a(i, parcel, parcel2);
    }
}
