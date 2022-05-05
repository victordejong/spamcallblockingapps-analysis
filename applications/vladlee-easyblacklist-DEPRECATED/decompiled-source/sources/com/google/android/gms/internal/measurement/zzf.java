package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzf.class */
public final class zzf extends zza implements zzd {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzf(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // com.google.android.gms.internal.measurement.zzd
    public final Bundle zza(Bundle bundle) {
        Parcel a = m2472a();
        zzb.zza(a, bundle);
        Parcel a2 = m2471a(1, a);
        Bundle bundle2 = (Bundle) zzb.zza(a2, Bundle.CREATOR);
        a2.recycle();
        return bundle2;
    }
}
