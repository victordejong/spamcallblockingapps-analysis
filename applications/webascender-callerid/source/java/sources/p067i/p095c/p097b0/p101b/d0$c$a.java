package p067i.p095c.p097b0.p101b;

import i.c.b0.e.a.f;
import java.util.concurrent.TimeUnit;
import p067i.p095c.p097b0.p101b.AbstractC2143d0;
/* renamed from: i.c.b0.b.d0$c$a */
/* loaded from: classes2-dex2jar.jar:i/c/b0/b/d0$c$a.class */
final class d0$c$a implements Runnable {

    /* renamed from: f */
    final Runnable f5861f;

    /* renamed from: g */
    final f f5862g;

    /* renamed from: h */
    final long f5863h;

    /* renamed from: i */
    long f5864i;

    /* renamed from: j */
    long f5865j;

    /* renamed from: k */
    long f5866k;

    /* renamed from: l */
    final /* synthetic */ AbstractC2143d0.c f5867l;

    d0$c$a(AbstractC2143d0.c cVar, long j, Runnable runnable, long j2, f fVar, long j3) {
        this.f5867l = cVar;
        this.f5861f = runnable;
        this.f5862g = fVar;
        this.f5863h = j3;
        this.f5865j = j2;
        this.f5866k = j;
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    @Override // java.lang.Runnable
    public void run() {
        char c;
        this.f5861f.run();
        if (!this.f5862g.isDisposed()) {
            AbstractC2143d0.c cVar = this.f5867l;
            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
            long a = cVar.a(timeUnit);
            long j = AbstractC2143d0.f5860a;
            long j2 = this.f5865j;
            if (a + j >= j2) {
                long j3 = this.f5863h;
                if (a < j2 + j3 + j) {
                    long j4 = this.f5866k;
                    long j5 = this.f5864i + 1;
                    this.f5864i = j5;
                    c = j4 + (j5 * j3);
                    this.f5865j = a;
                    this.f5862g.a(this.f5867l.c(this, c - a, timeUnit));
                }
            }
            long j6 = this.f5863h;
            c = a + j6;
            long j7 = this.f5864i + 1;
            this.f5864i = j7;
            this.f5866k = c - (j6 * j7);
            this.f5865j = a;
            this.f5862g.a(this.f5867l.c(this, c - a, timeUnit));
        }
    }
}
