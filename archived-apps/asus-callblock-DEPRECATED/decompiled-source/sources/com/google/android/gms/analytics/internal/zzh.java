package com.google.android.gms.analytics.internal;

import com.google.android.gms.common.internal.b;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzh.class */
public class zzh {

    /* renamed from: a  reason: collision with root package name */
    private final long f3861a;

    /* renamed from: b  reason: collision with root package name */
    private final String f3862b;
    private final String c;
    private final boolean d;
    private long e;
    private final Map<String, String> f;

    public zzh(long j, String str, String str2, boolean z, long j2, Map<String, String> map) {
        b.a(str);
        b.a(str2);
        this.f3861a = j;
        this.f3862b = str;
        this.c = str2;
        this.d = z;
        this.e = j2;
        if (map != null) {
            this.f = new HashMap(map);
        } else {
            this.f = Collections.emptyMap();
        }
    }

    public String zzku() {
        return this.f3862b;
    }

    public Map<String, String> zzm() {
        return this.f;
    }

    public long zzmi() {
        return this.f3861a;
    }

    public String zzmj() {
        return this.c;
    }

    public boolean zzmk() {
        return this.d;
    }

    public long zzml() {
        return this.e;
    }

    public void zzp(long j) {
        this.e = j;
    }
}
