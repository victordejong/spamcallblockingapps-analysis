package com.google.android.gms.signin.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.internal.base.zab;
import com.google.android.gms.internal.base.zad;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/zag.class */
public final class zag extends zab implements zae {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zag(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    @Override // com.google.android.gms.signin.internal.zae
    /* renamed from: L0 */
    public final void mo10845L0(zai zaiVar, zac zacVar) throws RemoteException {
        Parcel a = m14117a();
        zad.m14110d(a, zaiVar);
        zad.m14111c(a, zacVar);
        m14115c(12, a);
    }

    @Override // com.google.android.gms.signin.internal.zae
    /* renamed from: O */
    public final void mo10844O(IAccountAccessor iAccountAccessor, int i, boolean z) throws RemoteException {
        Parcel a = m14117a();
        zad.m14111c(a, iAccountAccessor);
        a.writeInt(i);
        zad.m14113a(a, z);
        m14115c(9, a);
    }

    @Override // com.google.android.gms.signin.internal.zae
    /* renamed from: z */
    public final void mo10843z(int i) throws RemoteException {
        Parcel a = m14117a();
        a.writeInt(i);
        m14115c(7, a);
    }
}
