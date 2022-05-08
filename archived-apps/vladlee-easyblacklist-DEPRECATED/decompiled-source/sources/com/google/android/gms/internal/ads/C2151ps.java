package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.overlay.zzt;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ps */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ps.class */
public final class C2151ps implements zzo, zzt, zzaew, zzaey, zzty {

    /* renamed from: a */
    private zzty f10339a;

    /* renamed from: b */
    private zzaew f10340b;

    /* renamed from: c */
    private zzo f10341c;

    /* renamed from: d */
    private zzaey f10342d;

    /* renamed from: e */
    private zzt f10343e;

    private C2151ps() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2151ps(byte b) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m4484a(zzty zztyVar, zzaew zzaewVar, zzo zzoVar, zzaey zzaeyVar, zzt zztVar) {
        synchronized (this) {
            this.f10339a = zztyVar;
            this.f10340b = zzaewVar;
            this.f10341c = zzoVar;
            this.f10342d = zzaeyVar;
            this.f10343e = zztVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzty
    public final void onAdClicked() {
        synchronized (this) {
            if (this.f10339a != null) {
                this.f10339a.onAdClicked();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaey
    public final void onAppEvent(String str, String str2) {
        synchronized (this) {
            if (this.f10342d != null) {
                this.f10342d.onAppEvent(str, str2);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onPause() {
        synchronized (this) {
            if (this.f10341c != null) {
                this.f10341c.onPause();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onResume() {
        synchronized (this) {
            if (this.f10341c != null) {
                this.f10341c.onResume();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaew
    public final void zza(String str, Bundle bundle) {
        synchronized (this) {
            if (this.f10340b != null) {
                this.f10340b.zza(str, bundle);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzte() {
        synchronized (this) {
            if (this.f10341c != null) {
                this.f10341c.zzte();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zztf() {
        synchronized (this) {
            if (this.f10341c != null) {
                this.f10341c.zztf();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzt
    public final void zztv() {
        synchronized (this) {
            if (this.f10343e != null) {
                this.f10343e.zztv();
            }
        }
    }
}
