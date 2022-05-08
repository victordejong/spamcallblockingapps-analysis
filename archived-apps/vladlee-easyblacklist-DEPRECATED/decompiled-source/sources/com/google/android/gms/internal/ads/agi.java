package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/agi.class */
final class agi implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f7327a;

    /* renamed from: b */
    private final /* synthetic */ int f7328b;

    /* renamed from: c */
    private final /* synthetic */ int f7329c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public agi(int i, int i2, int i3) {
        this.f7327a = i;
        this.f7328b = i2;
        this.f7329c = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdc zzdcVar;
        zzdcVar = zzdi.f14295s;
        zzdcVar.zza(MotionEvent.obtain(0L, this.f7327a, 0, this.f7328b, this.f7329c, 0));
    }
}
