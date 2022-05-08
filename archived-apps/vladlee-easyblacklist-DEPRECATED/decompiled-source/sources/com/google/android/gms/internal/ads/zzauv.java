package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzauv.class */
public final class zzauv extends zzgc implements zzaut {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzauv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzaut
    public final zzauo zzf(IObjectWrapper iObjectWrapper, int i) {
        zzauo zzauoVar;
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        a.writeInt(12451009);
        Parcel a2 = m3258a(1, a);
        IBinder readStrongBinder = a2.readStrongBinder();
        if (readStrongBinder == null) {
            zzauoVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            zzauoVar = queryLocalInterface instanceof zzauo ? (zzauo) queryLocalInterface : new zzauq(readStrongBinder);
        }
        a2.recycle();
        return zzauoVar;
    }
}
