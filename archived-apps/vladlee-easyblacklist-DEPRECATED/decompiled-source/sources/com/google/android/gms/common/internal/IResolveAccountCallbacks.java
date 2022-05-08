package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.base.zaa;
import com.google.android.gms.internal.base.zab;
import com.google.android.gms.internal.base.zad;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IResolveAccountCallbacks.class */
public interface IResolveAccountCallbacks extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IResolveAccountCallbacks$Stub.class */
    public static abstract class Stub extends zaa implements IResolveAccountCallbacks {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IResolveAccountCallbacks$Stub$Proxy.class */
        public static class Proxy extends zab implements IResolveAccountCallbacks {
            Proxy(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.IResolveAccountCallbacks");
            }

            @Override // com.google.android.gms.common.internal.IResolveAccountCallbacks
            public void onAccountResolutionComplete(ResolveAccountResponse resolveAccountResponse) {
                Parcel a = m2936a();
                zad.zaa(a, resolveAccountResponse);
                m2933b(2, a);
            }
        }

        public Stub() {
            super("com.google.android.gms.common.internal.IResolveAccountCallbacks");
        }

        public static IResolveAccountCallbacks asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IResolveAccountCallbacks");
            return queryLocalInterface instanceof IResolveAccountCallbacks ? (IResolveAccountCallbacks) queryLocalInterface : new Proxy(iBinder);
        }

        @Override // com.google.android.gms.internal.base.zaa
        /* renamed from: a */
        protected final boolean mo1588a(int i, Parcel parcel, Parcel parcel2) {
            if (i != 2) {
                return false;
            }
            onAccountResolutionComplete((ResolveAccountResponse) zad.zaa(parcel, ResolveAccountResponse.CREATOR));
            parcel2.writeNoException();
            return true;
        }
    }

    void onAccountResolutionComplete(ResolveAccountResponse resolveAccountResponse);
}
