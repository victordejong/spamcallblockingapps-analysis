package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzd.class */
public final class zzd {
    public byte[] data;
    public String zzg;
    public long zzh;
    public long zzi;
    public long zzj;
    public long zzk;
    public Map<String, String> zzl = Collections.emptyMap();
    public List<zzk> zzm;

    public final boolean isExpired() {
        return this.zzj < System.currentTimeMillis();
    }
}
