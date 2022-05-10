package com.google.android.gms.common.internal.service;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.base.zaa;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/service/zal.class */
public abstract class zal extends zaa implements zai {
    public zal() {
        super("com.google.android.gms.common.internal.service.ICommonCallbacks");
    }

    @Override // com.google.android.gms.internal.base.zaa
    /* renamed from: a */
    public final boolean mo8633a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        mo17206b(parcel.readInt());
        parcel2.writeNoException();
        return true;
    }
}
