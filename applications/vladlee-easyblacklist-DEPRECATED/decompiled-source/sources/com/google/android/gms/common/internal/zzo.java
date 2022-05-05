package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.zzk;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zza;
import com.google.android.gms.internal.common.zzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzo.class */
public final class zzo extends zza implements zzm {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // com.google.android.gms.common.internal.zzm
    public final boolean zza(zzk zzkVar, IObjectWrapper iObjectWrapper) {
        Parcel a = m2931a();
        zzc.zza(a, zzkVar);
        zzc.zza(a, iObjectWrapper);
        Parcel a2 = m2930a(5, a);
        boolean zza = zzc.zza(a2);
        a2.recycle();
        return zza;
    }
}
