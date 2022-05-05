package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zze;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnt.class */
public final class zzcnt implements zze {

    /* renamed from: a */
    private zze f13423a;

    public final void zza(zze zzeVar) {
        synchronized (this) {
            this.f13423a = zzeVar;
        }
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final void zzg(View view) {
        synchronized (this) {
            if (this.f13423a != null) {
                this.f13423a.zzg(view);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final void zzjr() {
        synchronized (this) {
            if (this.f13423a != null) {
                this.f13423a.zzjr();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final void zzjs() {
        synchronized (this) {
            if (this.f13423a != null) {
                this.f13423a.zzjs();
            }
        }
    }
}
