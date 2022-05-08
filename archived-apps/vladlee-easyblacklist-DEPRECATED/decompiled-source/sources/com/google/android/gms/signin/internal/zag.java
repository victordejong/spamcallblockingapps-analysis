package com.google.android.gms.signin.internal;

import android.os.IBinder;
import android.os.Parcel;
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
    public final void zaa(IAccountAccessor iAccountAccessor, int i, boolean z) {
        Parcel a = m2936a();
        zad.zaa(a, iAccountAccessor);
        a.writeInt(i);
        zad.writeBoolean(a, z);
        m2933b(9, a);
    }

    @Override // com.google.android.gms.signin.internal.zae
    public final void zaa(zai zaiVar, zac zacVar) {
        Parcel a = m2936a();
        zad.zaa(a, zaiVar);
        zad.zaa(a, zacVar);
        m2933b(12, a);
    }

    @Override // com.google.android.gms.signin.internal.zae
    public final void zam(int i) {
        Parcel a = m2936a();
        a.writeInt(i);
        m2933b(7, a);
    }
}
