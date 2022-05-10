package com.google.android.gms.common.api.internal;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.base.zab;
import com.google.android.gms.internal.base.zad;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/IStatusCallback.class */
public interface IStatusCallback extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/IStatusCallback$Stub.class */
    public static abstract class Stub extends com.google.android.gms.internal.base.zaa implements IStatusCallback {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/IStatusCallback$Stub$zaa.class */
        public static final class zaa extends zab implements IStatusCallback {
            @Override // com.google.android.gms.common.api.internal.IStatusCallback
            /* renamed from: a */
            public final void mo17599a(Status status) throws RemoteException {
                Parcel W = m10891W();
                zad.m10885a(W, status);
                m10888c(1, W);
            }
        }

        public Stub() {
            super("com.google.android.gms.common.api.internal.IStatusCallback");
        }

        @Override // com.google.android.gms.internal.base.zaa
        /* renamed from: a */
        public final boolean mo8633a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                return false;
            }
            mo17599a((Status) zad.m10886a(parcel, Status.CREATOR));
            return true;
        }
    }

    /* renamed from: a */
    void mo17599a(Status status) throws RemoteException;
}
