package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.common.zza;
import com.google.android.gms.internal.common.zzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzl.class */
public final class zzl extends zza implements IGmsCallbacks {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void onPostInitComplete(int i, IBinder iBinder, Bundle bundle) {
        Parcel a = m2931a();
        a.writeInt(i);
        a.writeStrongBinder(iBinder);
        zzc.zza(a, bundle);
        m2928b(1, a);
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zza(int i, Bundle bundle) {
        Parcel a = m2931a();
        a.writeInt(i);
        zzc.zza(a, bundle);
        m2928b(2, a);
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zza(int i, IBinder iBinder, zzb zzbVar) {
        Parcel a = m2931a();
        a.writeInt(i);
        a.writeStrongBinder(iBinder);
        zzc.zza(a, zzbVar);
        m2928b(3, a);
    }
}
