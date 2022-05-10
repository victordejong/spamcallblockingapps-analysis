package p131c.p161d.p282e.p335s.p337p;

import java.util.concurrent.TimeUnit;
import p131c.p161d.p282e.p335s.C5906n;
/* renamed from: c.d.e.s.p.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/s/p/d.class */
public class C5920d {

    /* renamed from: d */
    public static final long f19267d = TimeUnit.HOURS.toMillis(24);

    /* renamed from: e */
    public static final long f19268e = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: a */
    public final C5906n f19269a = C5906n.m22761d();

    /* renamed from: b */
    public long f19270b;

    /* renamed from: c */
    public int f19271c;

    /* renamed from: c */
    public static boolean m22700c(int i) {
        return i == 429 || (i >= 500 && i < 600);
    }

    /* renamed from: d */
    public static boolean m22699d(int i) {
        return (i >= 200 && i < 300) || i == 401 || i == 404;
    }

    /* renamed from: a */
    public final long m22703a(int i) {
        synchronized (this) {
            if (!m22700c(i)) {
                return f19267d;
            }
            double pow = Math.pow(2.0d, this.f19271c);
            double c = this.f19269a.m22762c();
            Double.isNaN(c);
            return (long) Math.min(pow + c, f19268e);
        }
    }

    /* renamed from: a */
    public boolean m22704a() {
        boolean z;
        synchronized (this) {
            if (this.f19271c != 0) {
                if (this.f19269a.m22768a() <= this.f19270b) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public final void m22702b() {
        synchronized (this) {
            this.f19271c = 0;
        }
    }

    /* renamed from: b */
    public void m22701b(int i) {
        synchronized (this) {
            if (m22699d(i)) {
                m22702b();
                return;
            }
            this.f19271c++;
            this.f19270b = this.f19269a.m22768a() + m22703a(i);
        }
    }
}
