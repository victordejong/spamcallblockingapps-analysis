package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabs.class */
public final class zzabs {

    /* renamed from: e */
    public zzabs f23952e;

    /* renamed from: b */
    public final List<zzabq> f23949b = new LinkedList();

    /* renamed from: c */
    public final Map<String, String> f23950c = new LinkedHashMap();

    /* renamed from: d */
    public final Object f23951d = new Object();
    @VisibleForTesting

    /* renamed from: a */
    public boolean f23948a = true;

    public zzabs(boolean z, String str, String str2) {
        this.f23950c.put("action", str);
        this.f23950c.put("ad_format", str2);
    }

    /* renamed from: a */
    public final zzabq m16885a(long j) {
        if (!this.f23948a) {
            return null;
        }
        return new zzabq(j, null, null);
    }

    /* renamed from: a */
    public final String m16886a() {
        String sb;
        StringBuilder sb2 = new StringBuilder();
        synchronized (this.f23951d) {
            try {
                for (zzabq zzabqVar : this.f23949b) {
                    long a = zzabqVar.m16889a();
                    String b = zzabqVar.m16888b();
                    zzabq c = zzabqVar.m16887c();
                    if (c != null && a > 0) {
                        long a2 = c.m16889a();
                        sb2.append(b);
                        sb2.append('.');
                        sb2.append(a - a2);
                        sb2.append(',');
                    }
                }
                this.f23949b.clear();
                if (!TextUtils.isEmpty(null)) {
                    sb2.append((String) null);
                } else if (sb2.length() > 0) {
                    sb2.setLength(sb2.length() - 1);
                }
                sb = sb2.toString();
            } catch (Throwable th) {
                throw th;
            }
        }
        return sb;
    }

    /* renamed from: a */
    public final void m16883a(zzabs zzabsVar) {
        synchronized (this.f23951d) {
            this.f23952e = zzabsVar;
        }
    }

    /* renamed from: a */
    public final void m16882a(String str, String str2) {
        zzabi c;
        if (this.f23948a && !TextUtils.isEmpty(str2) && (c = zzp.m17965g().m16184c()) != null) {
            synchronized (this.f23951d) {
                zzabm a = c.m16900a(str);
                Map<String, String> map = this.f23950c;
                map.put(str, a.mo16893a(map.get(str), str2));
            }
        }
    }

    /* renamed from: a */
    public final boolean m16884a(zzabq zzabqVar, long j, String... strArr) {
        synchronized (this.f23951d) {
            try {
                for (String str : strArr) {
                    this.f23949b.add(new zzabq(j, str, zzabqVar));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return true;
    }

    @VisibleForTesting
    /* renamed from: b */
    public final Map<String, String> m16881b() {
        synchronized (this.f23951d) {
            zzabi c = zzp.m17965g().m16184c();
            if (!(c == null || this.f23952e == null)) {
                return c.m16898a(this.f23950c, this.f23952e.m16881b());
            }
            return this.f23950c;
        }
    }
}
