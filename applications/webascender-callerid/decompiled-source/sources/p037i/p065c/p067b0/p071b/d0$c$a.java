package p037i.p065c.p067b0.p071b;

import i.c.b0.e.a.f;
import java.util.concurrent.TimeUnit;
import p037i.p065c.p067b0.p071b.AbstractC0475d0;
/* renamed from: i.c.b0.b.d0$c$a */
/* loaded from: classes2-dex2jar.jar:i/c/b0/b/d0$c$a.class */
final class d0$c$a implements Runnable {

    /* renamed from: f */
    final Runnable f1182f;

    /* renamed from: g */
    final f f1183g;

    /* renamed from: h */
    final long f1184h;

    /* renamed from: i */
    long f1185i;

    /* renamed from: j */
    long f1186j;

    /* renamed from: k */
    long f1187k;

    /* renamed from: l */
    final /* synthetic */ AbstractC0475d0.c f1188l;

    d0$c$a(AbstractC0475d0.c cVar, long j, Runnable runnable, long j2, f fVar, long j3) {
        this.f1188l = cVar;
        this.f1182f = runnable;
        this.f1183g = fVar;
        this.f1184h = j3;
        this.f1186j = j2;
        this.f1187k = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        long j;
        this.f1182f.run();
        if (!this.f1183g.isDisposed()) {
            AbstractC0475d0.c cVar = this.f1188l;
            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
            long a = cVar.a(timeUnit);
            long j2 = AbstractC0475d0.f1181a;
            long j3 = this.f1186j;
            if (a + j2 >= j3) {
                long j4 = this.f1184h;
                if (a < j3 + j4 + j2) {
                    long j5 = this.f1187k;
                    long j6 = this.f1185i + 1;
                    this.f1185i = j6;
                    j = j5 + (j6 * j4);
                    this.f1186j = a;
                    this.f1183g.a(this.f1188l.c(this, j - a, timeUnit));
                }
            }
            long j7 = this.f1184h;
            j = a + j7;
            long j8 = this.f1185i + 1;
            this.f1185i = j8;
            this.f1187k = j - (j7 * j8);
            this.f1186j = a;
            this.f1183g.a(this.f1188l.c(this, j - a, timeUnit));
        }
    }
}
