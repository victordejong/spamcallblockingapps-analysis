package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Map;
import p012b.p035f.C0780a;
import p131c.p161d.p170b.p224d.p260i.p261a.C4798r1;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4778p;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4788q0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zza.class */
public final class zza extends C4798r1 {

    /* renamed from: d */
    public long f29787d;

    /* renamed from: c */
    public final Map<String, Integer> f29786c = new C0780a();

    /* renamed from: b */
    public final Map<String, Long> f29785b = new C0780a();

    public zza(zzfu zzfuVar) {
        super(zzfuVar);
    }

    /* renamed from: a */
    public final void m9367a(long j) {
        zzij a = m24884o().m8926a(false);
        for (String str : this.f29785b.keySet()) {
            m9362a(str, j - this.f29785b.get(str).longValue(), a);
        }
        if (!this.f29785b.isEmpty()) {
            m9366a(j - this.f29787d, a);
        }
        m9361b(j);
    }

    /* renamed from: a */
    public final void m9366a(long j, zzij zzijVar) {
        if (zzijVar == null) {
            mo8789p().m9144y().m9143a("Not logging ad exposure. No active activity");
        } else if (j < 1000) {
            mo8789p().m9144y().m9142a("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j);
            zzii.m8931a(zzijVar, bundle, true);
            m24887l().m8974a("am", "_xa", bundle);
        }
    }

    /* renamed from: a */
    public final void m9363a(String str, long j) {
        if (str == null || str.length() == 0) {
            mo8789p().m9152q().m9143a("Ad unit id must be a non-empty string");
        } else {
            mo8795j().m9093a(new RunnableC4788q0(this, str, j));
        }
    }

    /* renamed from: a */
    public final void m9362a(String str, long j, zzij zzijVar) {
        if (zzijVar == null) {
            mo8789p().m9144y().m9143a("Not logging ad unit exposure. No active activity");
        } else if (j < 1000) {
            mo8789p().m9144y().m9142a("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j);
            zzii.m8931a(zzijVar, bundle, true);
            m24887l().m8974a("am", "_xu", bundle);
        }
    }

    /* renamed from: b */
    public final void m9361b(long j) {
        for (String str : this.f29785b.keySet()) {
            this.f29785b.put(str, Long.valueOf(j));
        }
        if (!this.f29785b.isEmpty()) {
            this.f29787d = j;
        }
    }

    /* renamed from: b */
    public final void m9359b(String str, long j) {
        if (str == null || str.length() == 0) {
            mo8789p().m9152q().m9143a("Ad unit id must be a non-empty string");
        } else {
            mo8795j().m9093a(new RunnableC4778p(this, str, j));
        }
    }

    /* renamed from: c */
    public final void m9358c(String str, long j) {
        mo9085c();
        Preconditions.m17281b(str);
        if (this.f29786c.isEmpty()) {
            this.f29787d = j;
        }
        Integer num = this.f29786c.get(str);
        if (num != null) {
            this.f29786c.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (this.f29786c.size() >= 100) {
            mo8789p().m9149t().m9143a("Too many ads visible");
        } else {
            this.f29786c.put(str, 1);
            this.f29785b.put(str, Long.valueOf(j));
        }
    }

    /* renamed from: d */
    public final void m9357d(String str, long j) {
        mo9085c();
        Preconditions.m17281b(str);
        Integer num = this.f29786c.get(str);
        if (num != null) {
            zzij a = m24884o().m8926a(false);
            int intValue = num.intValue() - 1;
            if (intValue == 0) {
                this.f29786c.remove(str);
                Long l = this.f29785b.get(str);
                if (l == null) {
                    mo8789p().m9152q().m9143a("First ad unit exposure time was never set");
                } else {
                    long longValue = l.longValue();
                    this.f29785b.remove(str);
                    m9362a(str, j - longValue, a);
                }
                if (this.f29786c.isEmpty()) {
                    long j2 = this.f29787d;
                    if (j2 == 0) {
                        mo8789p().m9152q().m9143a("First ad exposure time was never set");
                        return;
                    }
                    m9366a(j - j2, a);
                    this.f29787d = 0L;
                    return;
                }
                return;
            }
            this.f29786c.put(str, Integer.valueOf(intValue));
            return;
        }
        mo8789p().m9152q().m9142a("Call to endAdUnitExposure for unknown ad unit id", str);
    }
}
