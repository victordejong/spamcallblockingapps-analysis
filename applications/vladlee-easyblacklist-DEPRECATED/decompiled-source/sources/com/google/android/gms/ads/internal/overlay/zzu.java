package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzaos;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzu.class */
public final class zzu extends zzaos {

    /* renamed from: a */
    private AdOverlayInfoParcel f5942a;

    /* renamed from: b */
    private Activity f5943b;

    /* renamed from: c */
    private boolean f5944c = false;

    /* renamed from: d */
    private boolean f5945d = false;

    public zzu(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f5942a = adOverlayInfoParcel;
        this.f5943b = activity;
    }

    /* renamed from: a */
    private final void m6049a() {
        synchronized (this) {
            if (!this.f5945d) {
                if (this.f5942a.zzdhq != null) {
                    this.f5942a.zzdhq.zzte();
                }
                this.f5945d = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onActivityResult(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onBackPressed() {
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onCreate(Bundle bundle) {
        boolean z = false;
        if (bundle != null) {
            z = false;
            if (bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false)) {
                z = true;
            }
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.f5942a;
        if (adOverlayInfoParcel != null && !z) {
            if (bundle == null) {
                if (adOverlayInfoParcel.zzcbt != null) {
                    this.f5942a.zzcbt.onAdClicked();
                }
                if (!(this.f5943b.getIntent() == null || !this.f5943b.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) || this.f5942a.zzdhq == null)) {
                    this.f5942a.zzdhq.zztf();
                }
            }
            zzq.zzko();
            if (!zzb.zza(this.f5943b, this.f5942a.zzdhp, this.f5942a.zzdhu)) {
                this.f5943b.finish();
                return;
            }
            return;
        }
        this.f5943b.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onDestroy() {
        if (this.f5943b.isFinishing()) {
            m6049a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onPause() {
        if (this.f5942a.zzdhq != null) {
            this.f5942a.zzdhq.onPause();
        }
        if (this.f5943b.isFinishing()) {
            m6049a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onRestart() {
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onResume() {
        if (this.f5944c) {
            this.f5943b.finish();
            return;
        }
        this.f5944c = true;
        if (this.f5942a.zzdhq != null) {
            this.f5942a.zzdhq.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.f5944c);
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onStart() {
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void onStop() {
        if (this.f5943b.isFinishing()) {
            m6049a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void zzad(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void zzdf() {
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final boolean zztm() {
        return false;
    }
}
