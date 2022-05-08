package p081h.p203i.p325c.p327b0.p328p;

import p081h.p203i.p204a.p224e.p235d.p249s.AbstractC7072d;
/* renamed from: h.i.c.b0.p.l */
/* loaded from: classes2-dex2jar.jar:h/i/c/b0/p/l.class */
public final /* synthetic */ class RunnableC9428l implements Runnable {

    /* renamed from: a */
    public final AbstractC7072d f21515a;

    /* renamed from: b */
    public final String f21516b;

    /* renamed from: c */
    public final C9419f f21517c;

    public RunnableC9428l(AbstractC7072d dVar, String str, C9419f fVar) {
        this.f21515a = dVar;
        this.f21516b = str;
        this.f21517c = fVar;
    }

    /* renamed from: a */
    public static Runnable m15214a(AbstractC7072d dVar, String str, C9419f fVar) {
        return new RunnableC9428l(dVar, str, fVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f21515a.mo15286a(this.f21516b, this.f21517c);
    }
}
