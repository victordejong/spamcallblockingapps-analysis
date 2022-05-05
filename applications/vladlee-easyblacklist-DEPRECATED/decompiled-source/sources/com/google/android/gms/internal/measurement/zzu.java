package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzu.class */
public final class zzu extends zza implements zzs {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.zzs
    public final int zza() {
        Parcel a = m2471a(2, m2472a());
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.measurement.zzs
    public final void zza(String str, String str2, Bundle bundle, long j) {
        Parcel a = m2472a();
        a.writeString(str);
        a.writeString(str2);
        zzb.zza(a, bundle);
        a.writeLong(j);
        m2470b(1, a);
    }
}
