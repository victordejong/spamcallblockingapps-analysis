package com.google.android.gms.common.internal.service;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.base.zab;
import com.google.android.gms.internal.base.zad;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/service/zal.class */
public final class zal extends zab implements zam {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zal(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.service.ICommonService");
    }

    @Override // com.google.android.gms.common.internal.service.zam
    public final void zaa(zak zakVar) {
        Parcel a = m2936a();
        zad.zaa(a, zakVar);
        m2934a(a);
    }
}
