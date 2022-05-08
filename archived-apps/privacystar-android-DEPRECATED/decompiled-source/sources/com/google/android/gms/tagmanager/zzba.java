package com.google.android.gms.tagmanager;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzba.class */
public final class zzba implements zzdj {
    private int zzyn = 5;

    @Override // com.google.android.gms.tagmanager.zzdj
    /* renamed from: e */
    public final void mo327e(String str) {
        if (this.zzyn <= 6) {
            Log.e("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdj
    public final void setLogLevel(int i) {
        this.zzyn = i;
    }

    @Override // com.google.android.gms.tagmanager.zzdj
    /* renamed from: v */
    public final void mo326v(String str) {
        if (this.zzyn <= 2) {
            Log.v("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdj
    public final void zza(String str, Throwable th) {
        if (this.zzyn <= 6) {
            Log.e("GoogleTagManager", str, th);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdj
    public final void zzab(String str) {
        if (this.zzyn <= 5) {
            Log.w("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdj
    public final void zzb(String str, Throwable th) {
        if (this.zzyn <= 5) {
            Log.w("GoogleTagManager", str, th);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdj
    public final void zzdi(String str) {
        if (this.zzyn <= 4) {
            Log.i("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdj
    public final void zzdj(String str) {
        if (this.zzyn <= 3) {
            Log.d("GoogleTagManager", str);
        }
    }
}
