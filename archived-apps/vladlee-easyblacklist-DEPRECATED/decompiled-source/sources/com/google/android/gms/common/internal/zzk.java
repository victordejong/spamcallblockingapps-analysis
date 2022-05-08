package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zza;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzk.class */
public final class zzk extends zza implements zzi {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // com.google.android.gms.common.internal.zzi
    public final IObjectWrapper zzb() {
        Parcel a = m2930a(1, m2931a());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a.readStrongBinder());
        a.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.common.internal.zzi
    public final int zzc() {
        Parcel a = m2930a(2, m2931a());
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }
}
