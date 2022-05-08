package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzq;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaae.class */
public final class zzaae {

    /* renamed from: e */
    private zzaae f10806e;

    /* renamed from: b */
    private final List<zzaac> f10803b = new LinkedList();

    /* renamed from: c */
    private final Map<String, String> f10804c = new LinkedHashMap();

    /* renamed from: d */
    private final Object f10805d = new Object();

    /* renamed from: a */
    boolean f10802a = true;

    public zzaae(boolean z, String str, String str2) {
        this.f10804c.put("action", str);
        this.f10804c.put("ad_format", str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Map<String, String> m4437a() {
        synchronized (this.f10805d) {
            zzzu zzuz = zzq.zzku().zzuz();
            if (!(zzuz == null || this.f10806e == null)) {
                return zzuz.m2940a(this.f10804c, this.f10806e.m4437a());
            }
            return this.f10804c;
        }
    }

    public final boolean zza(zzaac zzaacVar, long j, String... strArr) {
        synchronized (this.f10805d) {
            for (String str : strArr) {
                this.f10803b.add(new zzaac(j, str, zzaacVar));
            }
        }
        return true;
    }

    public final void zzc(zzaae zzaaeVar) {
        synchronized (this.f10805d) {
            this.f10806e = zzaaeVar;
        }
    }

    public final zzaac zzex(long j) {
        if (!this.f10802a) {
            return null;
        }
        return new zzaac(j, null, null);
    }

    public final void zzh(String str, String str2) {
        zzzu zzuz;
        if (this.f10802a && !TextUtils.isEmpty(str2) && (zzuz = zzq.zzku().zzuz()) != null) {
            synchronized (this.f10805d) {
                zzzy zzcq = zzuz.zzcq(str);
                Map<String, String> map = this.f10804c;
                map.put(str, zzcq.zzg(map.get(str), str2));
            }
        }
    }

    public final String zzqt() {
        String sb;
        StringBuilder sb2 = new StringBuilder();
        synchronized (this.f10805d) {
            for (zzaac zzaacVar : this.f10803b) {
                long time = zzaacVar.getTime();
                String zzqq = zzaacVar.zzqq();
                zzaac zzqr = zzaacVar.zzqr();
                if (zzqr != null && time > 0) {
                    long time2 = zzqr.getTime();
                    sb2.append(zzqq);
                    sb2.append('.');
                    sb2.append(time - time2);
                    sb2.append(',');
                }
            }
            this.f10803b.clear();
            if (!TextUtils.isEmpty(null)) {
                sb2.append((String) null);
            } else if (sb2.length() > 0) {
                sb2.setLength(sb2.length() - 1);
            }
            sb = sb2.toString();
        }
        return sb;
    }
}
