package p131c.p161d.p282e.p340u.p348k;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.perf.p494v1.SessionVerbosity;
import com.google.firebase.perf.util.Constants$TraceNames;
import com.google.firebase.perf.util.Timer;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p282e.p340u.p341d.C5927a;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p349l.C5993a;
import p131c.p161d.p282e.p340u.p349l.C5998f;
import p131c.p161d.p282e.p340u.p350m.C6035s;
import p131c.p161d.p282e.p340u.p350m.C6039u;
/* renamed from: c.d.e.u.k.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/k/e.class */
public final class C5984e {

    /* renamed from: a */
    public final float f19424a;

    /* renamed from: b */
    public boolean f19425b;

    /* renamed from: c */
    public C5985a f19426c;

    /* renamed from: d */
    public C5985a f19427d;

    /* renamed from: e */
    public final C5927a f19428e;

    /* renamed from: c.d.e.u.k.e$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/k/e$a.class */
    public static class C5985a {

        /* renamed from: k */
        public static final C5969a f19429k = C5969a.m22496a();

        /* renamed from: l */
        public static final long f19430l = TimeUnit.SECONDS.toMicros(1);

        /* renamed from: a */
        public long f19431a;

        /* renamed from: b */
        public double f19432b;

        /* renamed from: c */
        public Timer f19433c;

        /* renamed from: d */
        public long f19434d;

        /* renamed from: e */
        public final C5993a f19435e;

        /* renamed from: f */
        public double f19436f;

        /* renamed from: g */
        public long f19437g;

        /* renamed from: h */
        public double f19438h;

        /* renamed from: i */
        public long f19439i;

        /* renamed from: j */
        public final boolean f19440j;

        public C5985a(double d, long j, C5993a aVar, C5927a aVar2, String str, boolean z) {
            this.f19435e = aVar;
            this.f19431a = j;
            this.f19432b = d;
            this.f19434d = j;
            this.f19433c = aVar.m22373a();
            m22413a(aVar2, str, z);
            this.f19440j = z;
        }

        /* renamed from: a */
        public static long m22414a(C5927a aVar, String str) {
            return str == "Trace" ? aVar.m22648r() : aVar.m22662h();
        }

        /* renamed from: b */
        public static long m22410b(C5927a aVar, String str) {
            return str == "Trace" ? aVar.m22656k() : aVar.m22656k();
        }

        /* renamed from: c */
        public static long m22409c(C5927a aVar, String str) {
            return str == "Trace" ? aVar.m22647s() : aVar.m22660i();
        }

        /* renamed from: d */
        public static long m22408d(C5927a aVar, String str) {
            return str == "Trace" ? aVar.m22656k() : aVar.m22656k();
        }

        /* renamed from: a */
        public final void m22413a(C5927a aVar, String str, boolean z) {
            long d = m22408d(aVar, str);
            long c = m22409c(aVar, str);
            double d2 = c;
            double d3 = d;
            Double.isNaN(d2);
            Double.isNaN(d3);
            double d4 = d2 / d3;
            this.f19436f = d4;
            this.f19437g = c;
            if (z) {
                f19429k.m22495a(String.format(Locale.ENGLISH, "Foreground %s logging rate:%f, burst capacity:%d", str, Double.valueOf(d4), Long.valueOf(this.f19437g)), new Object[0]);
            }
            long b = m22410b(aVar, str);
            long a = m22414a(aVar, str);
            double d5 = a;
            double d6 = b;
            Double.isNaN(d5);
            Double.isNaN(d6);
            double d7 = d5 / d6;
            this.f19438h = d7;
            this.f19439i = a;
            if (z) {
                f19429k.m22495a(String.format(Locale.ENGLISH, "Background %s logging rate:%f, capacity:%d", str, Double.valueOf(d7), Long.valueOf(this.f19439i)), new Object[0]);
            }
        }

        /* renamed from: a */
        public void m22411a(boolean z) {
            synchronized (this) {
                this.f19432b = z ? this.f19436f : this.f19438h;
                this.f19431a = z ? this.f19437g : this.f19439i;
            }
        }

        /* renamed from: a */
        public boolean m22412a(C6035s sVar) {
            synchronized (this) {
                Timer a = this.f19435e.m22373a();
                double a2 = this.f19433c.m7218a(a);
                double d = this.f19432b;
                Double.isNaN(a2);
                double d2 = f19430l;
                Double.isNaN(d2);
                long min = Math.min(this.f19434d + Math.max(0L, (long) ((a2 * d) / d2)), this.f19431a);
                this.f19434d = min;
                if (min > 0) {
                    this.f19434d = min - 1;
                    this.f19433c = a;
                    return true;
                }
                if (this.f19440j) {
                    f19429k.m22491d("Exceeded log rate limit, dropping the log.", new Object[0]);
                }
                return false;
            }
        }
    }

    public C5984e(double d, long j, C5993a aVar, float f, C5927a aVar2) {
        this.f19425b = false;
        this.f19426c = null;
        this.f19427d = null;
        boolean z = false;
        if (0.0f <= f) {
            z = false;
            if (f < 1.0f) {
                z = true;
            }
        }
        C5998f.m22356a(z, "Sampling bucket ID should be in range [0.0f, 1.0f).");
        this.f19424a = f;
        this.f19428e = aVar2;
        this.f19426c = new C5985a(d, j, aVar, aVar2, "Trace", this.f19425b);
        this.f19427d = new C5985a(d, j, aVar, aVar2, "Network", this.f19425b);
    }

    public C5984e(Context context, double d, long j) {
        this(d, j, new C5993a(), m22415c(), C5927a.m22644v());
        this.f19425b = C5998f.m22359a(context);
    }

    @VisibleForTesting
    /* renamed from: c */
    public static float m22415c() {
        return new Random().nextFloat();
    }

    /* renamed from: a */
    public void m22418a(boolean z) {
        this.f19426c.m22411a(z);
        this.f19427d.m22411a(z);
    }

    /* renamed from: a */
    public final boolean m22421a() {
        return this.f19424a < this.f19428e.m22658j();
    }

    /* renamed from: a */
    public boolean m22420a(C6035s sVar) {
        if (sVar.mo22239j() && !m22417b() && !m22419a(sVar.mo22238k().m22218F())) {
            return false;
        }
        if (sVar.mo22237m() && !m22421a() && !m22419a(sVar.mo22236n().m7213A())) {
            return false;
        }
        if (!m22416b(sVar)) {
            return true;
        }
        if (sVar.mo22237m()) {
            return this.f19427d.m22412a(sVar);
        }
        if (sVar.mo22239j()) {
            return this.f19426c.m22412a(sVar);
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m22419a(List<C6039u> list) {
        boolean z = false;
        if (list.size() > 0) {
            z = false;
            if (list.get(0).m22228w() > 0) {
                z = false;
                if (list.get(0).m22231b(0) == SessionVerbosity.GAUGES_AND_SYSTEM_EVENTS) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m22417b() {
        return this.f19424a < this.f19428e.m22646t();
    }

    /* renamed from: b */
    public boolean m22416b(C6035s sVar) {
        return (!sVar.mo22239j() || ((!sVar.mo22238k().m22219E().equals(Constants$TraceNames.FOREGROUND_TRACE_NAME.toString()) && !sVar.mo22238k().m22219E().equals(Constants$TraceNames.BACKGROUND_TRACE_NAME.toString())) || sVar.mo22238k().m22190x() <= 0)) && !sVar.mo22240e();
    }
}
