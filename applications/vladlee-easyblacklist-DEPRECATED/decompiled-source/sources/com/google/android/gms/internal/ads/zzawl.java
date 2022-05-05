package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.os.StatFs;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawl.class */
public class zzawl extends zzawi {
    @Override // com.google.android.gms.internal.ads.zzawh
    public boolean isAttachedToWindow(View view) {
        return super.isAttachedToWindow(view) || view.getWindowId() != null;
    }

    @Override // com.google.android.gms.internal.ads.zzawh
    public final int zzwo() {
        return 14;
    }

    @Override // com.google.android.gms.internal.ads.zzawh
    public final long zzws() {
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzclt)).booleanValue()) {
            return -1L;
        }
        return new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / 1024;
    }
}
