package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.os.StatFs;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazh.class */
public class zzazh extends zzaze {
    @Override // com.google.android.gms.internal.ads.zzazd
    /* renamed from: a */
    public final int mo16036a() {
        return 14;
    }

    @Override // com.google.android.gms.internal.ads.zzazd
    /* renamed from: a */
    public boolean mo16035a(View view) {
        return super.mo16035a(view) || view.getWindowId() != null;
    }

    @Override // com.google.android.gms.internal.ads.zzazd
    /* renamed from: d */
    public final long mo16034d() {
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23906w1)).booleanValue()) {
            return -1L;
        }
        return new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / 1024;
    }
}
