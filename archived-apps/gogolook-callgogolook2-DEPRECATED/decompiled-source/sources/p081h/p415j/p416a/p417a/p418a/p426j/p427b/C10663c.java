package p081h.p415j.p416a.p417a.p418a.p426j.p427b;

import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p081h.p415j.p416a.p417a.p418a.p426j.p427b.AbstractAsyncTaskC10660b;
/* renamed from: h.j.a.a.a.j.b.c */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/j/b/c.class */
public class C10663c implements AbstractAsyncTaskC10660b.AbstractC10661a {

    /* renamed from: c */
    public final ArrayDeque<AbstractAsyncTaskC10660b> f24262c = new ArrayDeque<>();

    /* renamed from: d */
    public AbstractAsyncTaskC10660b f24263d = null;

    /* renamed from: a */
    public final BlockingQueue<Runnable> f24260a = new LinkedBlockingQueue();

    /* renamed from: b */
    public final ThreadPoolExecutor f24261b = new ThreadPoolExecutor(1, 1, 1, TimeUnit.SECONDS, this.f24260a);

    /* renamed from: a */
    public final void m11031a() {
        this.f24263d = this.f24262c.poll();
        AbstractAsyncTaskC10660b bVar = this.f24263d;
        if (bVar != null) {
            bVar.m11032a(this.f24261b);
        }
    }

    @Override // p081h.p415j.p416a.p417a.p418a.p426j.p427b.AbstractAsyncTaskC10660b.AbstractC10661a
    /* renamed from: a */
    public void mo11030a(AbstractAsyncTaskC10660b bVar) {
        this.f24263d = null;
        m11031a();
    }

    /* renamed from: b */
    public void m11029b(AbstractAsyncTaskC10660b bVar) {
        bVar.m11033a(this);
        this.f24262c.add(bVar);
        if (this.f24263d == null) {
            m11031a();
        }
    }
}
