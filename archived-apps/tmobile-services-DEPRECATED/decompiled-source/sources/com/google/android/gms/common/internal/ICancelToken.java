package com.google.android.gms.common.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.common.zzb;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ICancelToken.class */
public interface ICancelToken extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ICancelToken$Stub.class */
    public static abstract class Stub extends zzb implements ICancelToken {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ICancelToken$Stub$zza.class */
        public static final class zza extends com.google.android.gms.internal.common.zza implements ICancelToken {
            @Override // com.google.android.gms.common.internal.ICancelToken
            public final void cancel() throws RemoteException {
                m14095f(2, m14098a());
            }
        }

        public Stub() {
            super("com.google.android.gms.common.internal.ICancelToken");
        }
    }

    void cancel() throws RemoteException;
}
