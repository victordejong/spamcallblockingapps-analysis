package p131c.p161d.p170b.p188c.p204h1;

import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.Format;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p204h1.AbstractC2930q;
import p131c.p161d.p170b.p188c.p208u0.C3015c;
/* renamed from: c.d.b.c.h1.q */
/* loaded from: classes-dex2jar.jar:c/d/b/c/h1/q.class */
public interface AbstractC2930q {

    /* renamed from: c.d.b.c.h1.q$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/h1/q$a.class */
    public static final class C2931a {

        /* renamed from: a */
        public final Handler f10613a;

        /* renamed from: b */
        public final AbstractC2930q f10614b;

        public C2931a(Handler handler, AbstractC2930q qVar) {
            Handler handler2;
            if (qVar != null) {
                C2877e.m28737a(handler);
                handler2 = handler;
            } else {
                handler2 = null;
            }
            this.f10613a = handler2;
            this.f10614b = qVar;
        }

        /* renamed from: a */
        public /* synthetic */ void m28467a(int i, int i2, int i3, float f) {
            AbstractC2930q qVar = this.f10614b;
            C2885h0.m28670a(qVar);
            qVar.m28474a(i, i2, i3, f);
        }

        /* renamed from: a */
        public void m28466a(final int i, final long j) {
            Handler handler = this.f10613a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c.d.b.c.h1.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2930q.C2931a.this.m28460b(i, j);
                    }
                });
            }
        }

        /* renamed from: a */
        public /* synthetic */ void m28465a(Surface surface) {
            AbstractC2930q qVar = this.f10614b;
            C2885h0.m28670a(qVar);
            qVar.m28472a(surface);
        }

        /* renamed from: a */
        public void m28464a(final C3015c cVar) {
            cVar.m28137a();
            Handler handler = this.f10613a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c.d.b.c.h1.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2930q.C2931a.this.m28455c(cVar);
                    }
                });
            }
        }

        /* renamed from: a */
        public void m28463a(final Format format) {
            Handler handler = this.f10613a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c.d.b.c.h1.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2930q.C2931a.this.m28457b(format);
                    }
                });
            }
        }

        /* renamed from: a */
        public void m28462a(final String str, final long j, final long j2) {
            Handler handler = this.f10613a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c.d.b.c.h1.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2930q.C2931a.this.m28456b(str, j, j2);
                    }
                });
            }
        }

        /* renamed from: b */
        public void m28461b(final int i, final int i2, final int i3, final float f) {
            Handler handler = this.f10613a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c.d.b.c.h1.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2930q.C2931a.this.m28467a(i, i2, i3, f);
                    }
                });
            }
        }

        /* renamed from: b */
        public /* synthetic */ void m28460b(int i, long j) {
            AbstractC2930q qVar = this.f10614b;
            C2885h0.m28670a(qVar);
            qVar.m28473a(i, j);
        }

        /* renamed from: b */
        public void m28459b(final Surface surface) {
            Handler handler = this.f10613a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c.d.b.c.h1.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2930q.C2931a.this.m28465a(surface);
                    }
                });
            }
        }

        /* renamed from: b */
        public void m28458b(final C3015c cVar) {
            Handler handler = this.f10613a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c.d.b.c.h1.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2930q.C2931a.this.m28454d(cVar);
                    }
                });
            }
        }

        /* renamed from: b */
        public /* synthetic */ void m28457b(Format format) {
            AbstractC2930q qVar = this.f10614b;
            C2885h0.m28670a(qVar);
            qVar.m28470a(format);
        }

        /* renamed from: b */
        public /* synthetic */ void m28456b(String str, long j, long j2) {
            AbstractC2930q qVar = this.f10614b;
            C2885h0.m28670a(qVar);
            qVar.m28469a(str, j, j2);
        }

        /* renamed from: c */
        public /* synthetic */ void m28455c(C3015c cVar) {
            cVar.m28137a();
            AbstractC2930q qVar = this.f10614b;
            C2885h0.m28670a(qVar);
            qVar.m28468b(cVar);
        }

        /* renamed from: d */
        public /* synthetic */ void m28454d(C3015c cVar) {
            AbstractC2930q qVar = this.f10614b;
            C2885h0.m28670a(qVar);
            qVar.m28471a(cVar);
        }
    }

    /* renamed from: a */
    void m28474a(int i, int i2, int i3, float f);

    /* renamed from: a */
    void m28473a(int i, long j);

    /* renamed from: a */
    void m28472a(Surface surface);

    /* renamed from: a */
    void m28471a(C3015c cVar);

    /* renamed from: a */
    void m28470a(Format format);

    /* renamed from: a */
    void m28469a(String str, long j, long j2);

    /* renamed from: b */
    void m28468b(C3015c cVar);
}
