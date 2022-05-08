package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxd.class */
public final class zzxd extends zzgc implements zzxb {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzxd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final float getAspectRatio() {
        Parcel a = m3258a(9, m3259a());
        float readFloat = a.readFloat();
        a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final int getPlaybackState() {
        Parcel a = m3258a(5, m3259a());
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final boolean isClickToExpandEnabled() {
        Parcel a = m3258a(12, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final boolean isCustomControlsEnabled() {
        Parcel a = m3258a(10, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final boolean isMuted() {
        Parcel a = m3258a(4, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final void mute(boolean z) {
        Parcel a = m3259a();
        zzge.writeBoolean(a, z);
        m3256b(3, a);
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final void pause() {
        m3256b(2, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final void play() {
        m3256b(1, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final void stop() {
        m3256b(13, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final void zza(zzxg zzxgVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzxgVar);
        m3256b(8, a);
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final float zzpk() {
        Parcel a = m3258a(6, m3259a());
        float readFloat = a.readFloat();
        a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final float zzpl() {
        Parcel a = m3258a(7, m3259a());
        float readFloat = a.readFloat();
        a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final zzxg zzpm() {
        zzxg zzxgVar;
        Parcel a = m3258a(11, m3259a());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzxgVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
            zzxgVar = queryLocalInterface instanceof zzxg ? (zzxg) queryLocalInterface : new zzxi(readStrongBinder);
        }
        a.recycle();
        return zzxgVar;
    }
}
