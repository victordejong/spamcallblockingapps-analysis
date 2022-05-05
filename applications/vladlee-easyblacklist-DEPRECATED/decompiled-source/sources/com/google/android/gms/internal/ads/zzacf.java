package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacf.class */
public final class zzacf extends zzgc implements zzacd {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzacf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.zzacd
    public final float getAspectRatio() {
        Parcel a = m3258a(2, m3259a());
        float readFloat = a.readFloat();
        a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzacd
    public final void zzo(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(3, a);
    }

    @Override // com.google.android.gms.internal.ads.zzacd
    public final IObjectWrapper zzre() {
        Parcel a = m3258a(4, m3259a());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a.readStrongBinder());
        a.recycle();
        return asInterface;
    }
}
