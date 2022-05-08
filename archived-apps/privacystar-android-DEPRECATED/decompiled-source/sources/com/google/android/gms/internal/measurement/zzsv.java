package com.google.android.gms.internal.measurement;

import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzsv.class */
public final class zzsv {
    private final String zzbrm;
    private final Uri zzbrn;
    private final String zzbro;
    private final String zzbrp;
    private final boolean zzbrq;
    private final boolean zzbrr;
    private final boolean zzbrs;

    public zzsv(Uri uri) {
        this(null, uri, "", "", false, false, false);
    }

    private zzsv(String str, Uri uri, String str2, String str3, boolean z, boolean z2, boolean z3) {
        this.zzbrm = null;
        this.zzbrn = uri;
        this.zzbro = str2;
        this.zzbrp = str3;
        this.zzbrq = false;
        this.zzbrr = false;
        this.zzbrs = false;
    }

    public final zzsl<Double> zzb(String str, double d) {
        return zzsl.zzb(this, str, d);
    }

    public final zzsl<Integer> zzd(String str, int i) {
        return zzsl.zzb(this, str, i);
    }

    public final zzsl<Long> zze(String str, long j) {
        return zzsl.zzb(this, str, j);
    }

    public final zzsl<Boolean> zzf(String str, boolean z) {
        return zzsl.zzb(this, str, z);
    }

    public final zzsl<String> zzx(String str, String str2) {
        return zzsl.zzb(this, str, str2);
    }
}
