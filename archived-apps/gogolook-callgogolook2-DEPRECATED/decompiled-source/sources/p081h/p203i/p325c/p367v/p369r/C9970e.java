package p081h.p203i.p325c.p367v.p369r;

import androidx.annotation.GuardedBy;
import java.util.concurrent.TimeUnit;
import p081h.p203i.p325c.p367v.C9951p;
/* renamed from: h.i.c.v.r.e */
/* loaded from: classes2-dex2jar.jar:h/i/c/v/r/e.class */
public class C9970e {

    /* renamed from: d */
    public static final long f22562d = TimeUnit.HOURS.toMillis(24);

    /* renamed from: e */
    public static final long f22563e = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: a */
    public final C9951p f22564a = C9951p.m13876d();
    @GuardedBy("this")

    /* renamed from: b */
    public long f22565b;
    @GuardedBy("this")

    /* renamed from: c */
    public int f22566c;

    /* renamed from: c */
    public static boolean m13799c(int i) {
        return i == 429 || (i >= 500 && i < 600);
    }

    /* renamed from: d */
    public static boolean m13798d(int i) {
        return (i >= 200 && i < 300) || i == 401 || i == 404;
    }

    /* renamed from: a */
    public final long m13802a(int i) {
        synchronized (this) {
            if (!m13799c(i)) {
                return f22562d;
            }
            return (long) Math.min(Math.pow(2.0d, this.f22566c) + this.f22564a.m13877c(), f22563e);
        }
    }

    /* renamed from: a */
    public boolean m13803a() {
        boolean z;
        synchronized (this) {
            if (this.f22566c != 0) {
                if (this.f22564a.m13883a() <= this.f22565b) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public final void m13801b() {
        synchronized (this) {
            this.f22566c = 0;
        }
    }

    /* renamed from: b */
    public void m13800b(int i) {
        synchronized (this) {
            if (m13798d(i)) {
                m13801b();
                return;
            }
            this.f22566c++;
            this.f22565b = this.f22564a.m13883a() + m13802a(i);
        }
    }
}
