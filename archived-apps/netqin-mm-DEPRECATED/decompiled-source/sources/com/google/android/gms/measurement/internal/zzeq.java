package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4747l4;
import p131c.p161d.p170b.p224d.p260i.p261a.C4671d3;
import p131c.p161d.p170b.p224d.p260i.p261a.C4737k3;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4661c3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzeq.class */
public final class zzeq extends AbstractC4747l4 {

    /* renamed from: e */
    public String f29935e;

    /* renamed from: c */
    public char f29933c = (char) 0;

    /* renamed from: d */
    public long f29934d = -1;

    /* renamed from: f */
    public final zzes f29936f = new zzes(this, 6, false, false);

    /* renamed from: g */
    public final zzes f29937g = new zzes(this, 6, true, false);

    /* renamed from: h */
    public final zzes f29938h = new zzes(this, 6, false, true);

    /* renamed from: i */
    public final zzes f29939i = new zzes(this, 5, false, false);

    /* renamed from: j */
    public final zzes f29940j = new zzes(this, 5, true, false);

    /* renamed from: k */
    public final zzes f29941k = new zzes(this, 5, false, true);

    /* renamed from: l */
    public final zzes f29942l = new zzes(this, 4, false, false);

    /* renamed from: m */
    public final zzes f29943m = new zzes(this, 3, false, false);

    /* renamed from: n */
    public final zzes f29944n = new zzes(this, 2, false, false);

    public zzeq(zzfu zzfuVar) {
        super(zzfuVar);
    }

    /* renamed from: a */
    public static Object m9157a(String str) {
        if (str == null) {
            return null;
        }
        return new C4671d3(str);
    }

    @VisibleForTesting
    /* renamed from: a */
    public static String m9156a(boolean z, Object obj) {
        String str;
        String className;
        String str2 = "";
        if (obj == null) {
            return "";
        }
        Object obj2 = obj;
        if (obj instanceof Integer) {
            obj2 = Long.valueOf(((Integer) obj).intValue());
        }
        int i = 0;
        if (obj2 instanceof Long) {
            if (!z) {
                return String.valueOf(obj2);
            }
            Long l = (Long) obj2;
            if (Math.abs(l.longValue()) < 100) {
                return String.valueOf(obj2);
            }
            if (String.valueOf(obj2).charAt(0) == '-') {
                str2 = "-";
            }
            String valueOf = String.valueOf(Math.abs(l.longValue()));
            long round = Math.round(Math.pow(10.0d, valueOf.length() - 1));
            long round2 = Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
            StringBuilder sb = new StringBuilder(str2.length() + 43 + str2.length());
            sb.append(str2);
            sb.append(round);
            sb.append("...");
            sb.append(str2);
            sb.append(round2);
            return sb.toString();
        } else if (obj2 instanceof Boolean) {
            return String.valueOf(obj2);
        } else {
            if (obj2 instanceof Throwable) {
                Throwable th = (Throwable) obj2;
                StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
                String b = m9153b(zzfu.class.getCanonicalName());
                StackTraceElement[] stackTrace = th.getStackTrace();
                int length = stackTrace.length;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    StackTraceElement stackTraceElement = stackTrace[i];
                    if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && m9153b(className).equals(b)) {
                        sb2.append(": ");
                        sb2.append(stackTraceElement);
                        break;
                    }
                    i++;
                }
                return sb2.toString();
            } else if (!(obj2 instanceof C4671d3)) {
                return z ? "-" : String.valueOf(obj2);
            } else {
                str = ((C4671d3) obj2).f17030a;
                return str;
            }
        }
    }

    /* renamed from: a */
    public static String m9155a(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        String str3 = str;
        if (str == null) {
            str3 = "";
        }
        String a = m9156a(z, obj);
        String a2 = m9156a(z, obj2);
        String a3 = m9156a(z, obj3);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str3)) {
            sb.append(str3);
            str2 = ": ";
        }
        String str4 = ", ";
        String str5 = str2;
        if (!TextUtils.isEmpty(a)) {
            sb.append(str2);
            sb.append(a);
            str5 = ", ";
        }
        if (!TextUtils.isEmpty(a2)) {
            sb.append(str5);
            sb.append(a2);
        } else {
            str4 = str5;
        }
        if (!TextUtils.isEmpty(a3)) {
            sb.append(str4);
            sb.append(a3);
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static String m9153b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
    }

    /* renamed from: A */
    public final String m9165A() {
        Pair<String, Long> a = m24898g().f17210d.m9124a();
        if (a == null || a == C4737k3.f17205D) {
            return null;
        }
        String valueOf = String.valueOf(a.second);
        String str = (String) a.first;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str).length());
        sb.append(valueOf);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }

    @VisibleForTesting
    /* renamed from: C */
    public final String m9164C() {
        String str;
        synchronized (this) {
            if (this.f29935e == null) {
                this.f29935e = this.f17262a.m9038y() != null ? this.f17262a.m9038y() : "FA";
            }
            str = this.f29935e;
        }
        return str;
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m9162a(int i, String str) {
        Log.println(i, m9164C(), str);
    }

    /* renamed from: a */
    public final void m9161a(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && m9163a(i)) {
            m9162a(i, m9155a(false, str, obj, obj2, obj3));
        }
        if (!z2 && i >= 5) {
            Preconditions.m17288a(str);
            zzfr q = this.f17262a.m9046q();
            if (q == null) {
                m9162a(6, "Scheduler not set. Not logging error/warn");
            } else if (!q.m24910k()) {
                m9162a(6, "Scheduler not initialized. Not logging error/warn");
            } else {
                int i2 = i;
                if (i < 0) {
                    i2 = 0;
                }
                if (i2 >= 9) {
                    i2 = 8;
                }
                q.m9093a(new RunnableC4661c3(this, i2, str, obj, obj2, obj3));
            }
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public final boolean m9163a(int i) {
        return Log.isLoggable(m9164C(), i);
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4747l4
    /* renamed from: o */
    public final boolean mo8676o() {
        return false;
    }

    /* renamed from: q */
    public final zzes m9152q() {
        return this.f29936f;
    }

    /* renamed from: r */
    public final zzes m9151r() {
        return this.f29937g;
    }

    /* renamed from: s */
    public final zzes m9150s() {
        return this.f29938h;
    }

    /* renamed from: t */
    public final zzes m9149t() {
        return this.f29939i;
    }

    /* renamed from: u */
    public final zzes m9148u() {
        return this.f29940j;
    }

    /* renamed from: v */
    public final zzes m9147v() {
        return this.f29941k;
    }

    /* renamed from: w */
    public final zzes m9146w() {
        return this.f29942l;
    }

    /* renamed from: x */
    public final zzes m9145x() {
        return this.f29943m;
    }

    /* renamed from: y */
    public final zzes m9144y() {
        return this.f29944n;
    }
}
