package com.google.android.gms.common.internal;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.base.zaa;
import com.google.android.gms.internal.base.zab;
import com.google.android.gms.internal.base.zad;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IResolveAccountCallbacks.class */
public interface IResolveAccountCallbacks extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IResolveAccountCallbacks$Stub.class */
    public static abstract class Stub extends zaa implements IResolveAccountCallbacks {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IResolveAccountCallbacks$Stub$Proxy.class */
        public static class Proxy extends zab implements IResolveAccountCallbacks {
            @Override // com.google.android.gms.common.internal.IResolveAccountCallbacks
            /* renamed from: F0 */
            public void mo14538F0(ResolveAccountResponse resolveAccountResponse) throws RemoteException {
                Parcel a = m14117a();
                zad.m14110d(a, resolveAccountResponse);
                m14115c(2, a);
            }
        }

        public Stub() {
            super("com.google.android.gms.common.internal.IResolveAccountCallbacks");
        }

        @Override // com.google.android.gms.internal.base.zaa
        protected boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 2) {
                return false;
            }
            mo14538F0((ResolveAccountResponse) zad.m14112b(parcel, ResolveAccountResponse.CREATOR));
            parcel2.writeNoException();
            return true;
        }
    }

    /* renamed from: F0 */
    void mo14538F0(ResolveAccountResponse resolveAccountResponse) throws RemoteException;
}
