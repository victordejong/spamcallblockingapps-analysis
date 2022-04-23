package com.google.android.gms.common.internal.service;

import android.os.Parcel;
import com.google.android.gms.internal.base.zaa;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/service/zaj.class */
public abstract class zaj extends zaa implements zak {
    public zaj() {
        super("com.google.android.gms.common.internal.service.ICommonCallbacks");
    }

    @Override // com.google.android.gms.internal.base.zaa
    /* renamed from: a */
    protected final boolean mo1588a(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            return false;
        }
        zaj(parcel.readInt());
        parcel2.writeNoException();
        return true;
    }
}
