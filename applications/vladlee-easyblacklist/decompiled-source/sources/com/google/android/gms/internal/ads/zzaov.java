package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaov.class */
public final class zzaov extends zzgc implements zzaot {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaov(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onActivityResult(int i, int i2, Intent intent) {
        Parcel a = m3259a();
        a.writeInt(i);
        a.writeInt(i2);
        zzge.zza(a, intent);
        m3256b(12, a);
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onBackPressed() {
        m3256b(10, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onCreate(Bundle bundle) {
        Parcel a = m3259a();
        zzge.zza(a, bundle);
        m3256b(1, a);
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onDestroy() {
        m3256b(8, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onPause() {
        m3256b(5, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onRestart() {
        m3256b(2, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onResume() {
        m3256b(4, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onSaveInstanceState(Bundle bundle) {
        Parcel a = m3259a();
        zzge.zza(a, bundle);
        Parcel a2 = m3258a(6, a);
        if (a2.readInt() != 0) {
            bundle.readFromParcel(a2);
        }
        a2.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onStart() {
        m3256b(3, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onStop() {
        m3256b(7, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void zzad(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(13, a);
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void zzdf() {
        m3256b(9, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final boolean zztm() {
        Parcel a = m3258a(11, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }
}
