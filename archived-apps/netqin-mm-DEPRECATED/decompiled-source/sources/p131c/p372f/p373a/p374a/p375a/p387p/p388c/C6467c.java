package p131c.p372f.p373a.p374a.p375a.p387p.p388c;

import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p131c.p372f.p373a.p374a.p375a.p387p.p388c.AbstractAsyncTaskC6464b;
/* renamed from: c.f.a.a.a.p.c.c */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/p/c/c.class */
public class C6467c implements AbstractAsyncTaskC6464b.AbstractC6465a {

    /* renamed from: c */
    public final ArrayDeque<AbstractAsyncTaskC6464b> f20163c = new ArrayDeque<>();

    /* renamed from: d */
    public AbstractAsyncTaskC6464b f20164d = null;

    /* renamed from: a */
    public final BlockingQueue<Runnable> f20161a = new LinkedBlockingQueue();

    /* renamed from: b */
    public final ThreadPoolExecutor f20162b = new ThreadPoolExecutor(1, 1, 1, TimeUnit.SECONDS, this.f20161a);

    /* renamed from: a */
    public final void m20781a() {
        AbstractAsyncTaskC6464b poll = this.f20163c.poll();
        this.f20164d = poll;
        if (poll != null) {
            poll.m20782a(this.f20162b);
        }
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p387p.p388c.AbstractAsyncTaskC6464b.AbstractC6465a
    /* renamed from: a */
    public void mo20780a(AbstractAsyncTaskC6464b bVar) {
        this.f20164d = null;
        m20781a();
    }

    /* renamed from: b */
    public void m20779b(AbstractAsyncTaskC6464b bVar) {
        bVar.m20783a(this);
        this.f20163c.add(bVar);
        if (this.f20164d == null) {
            m20781a();
        }
    }
}
