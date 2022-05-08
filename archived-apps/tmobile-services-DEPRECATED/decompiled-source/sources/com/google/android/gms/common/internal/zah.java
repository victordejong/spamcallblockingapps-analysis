package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.base.zab;
import com.google.android.gms.internal.base.zad;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zah.class */
public final class zah extends zab implements ISignInButtonCreator {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zah(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator");
    }

    @Override // com.google.android.gms.common.internal.ISignInButtonCreator
    /* renamed from: S */
    public final IObjectWrapper mo14434S(IObjectWrapper iObjectWrapper, SignInButtonConfig signInButtonConfig) throws RemoteException {
        Parcel a = m14117a();
        zad.m14111c(a, iObjectWrapper);
        zad.m14110d(a, signInButtonConfig);
        Parcel b = m14116b(2, a);
        IObjectWrapper b2 = IObjectWrapper.Stub.m14259b(b.readStrongBinder());
        b.recycle();
        return b2;
    }
}
