package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvw.class */
public final class zzcvw {

    /* renamed from: a */
    private final zzaqk f13976a;

    public zzcvw(zzaqk zzaqkVar) {
        this.f13976a = zzaqkVar;
    }

    public final String zzant() {
        return this.f13976a.packageName;
    }

    public final String zzanu() {
        return this.f13976a.zzdlu.getString("ms");
    }

    public final PackageInfo zzanv() {
        return this.f13976a.zzdip;
    }

    public final boolean zzanw() {
        return this.f13976a.zzdlv;
    }

    public final List<String> zzanx() {
        return this.f13976a.zzdiz;
    }

    public final ApplicationInfo zzany() {
        return this.f13976a.applicationInfo;
    }

    public final String zzanz() {
        return this.f13976a.zzdlw;
    }
}
