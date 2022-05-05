package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawk.class */
public class zzawk extends zzawl {
    @Override // com.google.android.gms.internal.ads.zzawl, com.google.android.gms.internal.ads.zzawh
    public final boolean isAttachedToWindow(View view) {
        return view.isAttachedToWindow();
    }

    @Override // com.google.android.gms.internal.ads.zzawh
    public final ViewGroup.LayoutParams zzwp() {
        return new ViewGroup.LayoutParams(-1, -1);
    }
}
