package p081h.p119d.p120a.p124s.p126i;

import android.os.Looper;
import android.os.MessageQueue;
import android.util.Log;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import p081h.p119d.p120a.EnumC5779n;
import p081h.p119d.p120a.p124s.AbstractC5806c;
import p081h.p119d.p120a.p124s.AbstractC5810g;
import p081h.p119d.p120a.p124s.p125h.AbstractC5813c;
import p081h.p119d.p120a.p124s.p126i.C5823a;
import p081h.p119d.p120a.p124s.p126i.C5841h;
import p081h.p119d.p120a.p124s.p126i.p128o.AbstractC5870a;
import p081h.p119d.p120a.p124s.p126i.p128o.AbstractC5884h;
import p081h.p119d.p120a.p124s.p126i.p128o.C5873b;
import p081h.p119d.p120a.p124s.p134k.p141k.AbstractC6019d;
import p081h.p119d.p120a.p144v.AbstractC6045b;
import p081h.p119d.p120a.p145w.AbstractC6058g;
import p081h.p119d.p120a.p149y.C6092d;
import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.s.i.c */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/c.class */
public class C5828c implements AbstractC5838e, AbstractC5884h.AbstractC5885a, C5841h.AbstractC5842a {

    /* renamed from: a */
    public final Map<AbstractC5806c, C5834d> f14694a;

    /* renamed from: b */
    public final C5840g f14695b;

    /* renamed from: c */
    public final AbstractC5884h f14696c;

    /* renamed from: d */
    public final C5829a f14697d;

    /* renamed from: e */
    public final Map<AbstractC5806c, WeakReference<C5841h<?>>> f14698e;

    /* renamed from: f */
    public final C5849m f14699f;

    /* renamed from: g */
    public final C5830b f14700g;

    /* renamed from: h */
    public ReferenceQueue<C5841h<?>> f14701h;

    /* renamed from: h.d.a.s.i.c$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/c$a.class */
    public static class C5829a {

        /* renamed from: a */
        public final ExecutorService f14702a;

        /* renamed from: b */
        public final ExecutorService f14703b;

        /* renamed from: c */
        public final AbstractC5838e f14704c;

        public C5829a(ExecutorService executorService, ExecutorService executorService2, AbstractC5838e eVar) {
            this.f14702a = executorService;
            this.f14703b = executorService2;
            this.f14704c = eVar;
        }

        /* renamed from: a */
        public C5834d m24274a(AbstractC5806c cVar, boolean z) {
            return new C5834d(cVar, this.f14702a, this.f14703b, z, this.f14704c);
        }
    }

    /* renamed from: h.d.a.s.i.c$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/c$b.class */
    public static class C5830b implements C5823a.AbstractC5824a {

        /* renamed from: a */
        public final AbstractC5870a.AbstractC5871a f14705a;

        /* renamed from: b */
        public volatile AbstractC5870a f14706b;

        public C5830b(AbstractC5870a.AbstractC5871a aVar) {
            this.f14705a = aVar;
        }

        @Override // p081h.p119d.p120a.p124s.p126i.C5823a.AbstractC5824a
        /* renamed from: a */
        public AbstractC5870a mo24273a() {
            if (this.f14706b == null) {
                synchronized (this) {
                    if (this.f14706b == null) {
                        this.f14706b = this.f14705a.build();
                    }
                    if (this.f14706b == null) {
                        this.f14706b = new C5873b();
                    }
                }
            }
            return this.f14706b;
        }
    }

    /* renamed from: h.d.a.s.i.c$c */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/c$c.class */
    public static class C5831c {

        /* renamed from: a */
        public final C5834d f14707a;

        /* renamed from: b */
        public final AbstractC6058g f14708b;

        public C5831c(AbstractC6058g gVar, C5834d dVar) {
            this.f14708b = gVar;
            this.f14707a = dVar;
        }

        /* renamed from: a */
        public void m24272a() {
            this.f14707a.m24261d(this.f14708b);
        }
    }

    /* renamed from: h.d.a.s.i.c$d */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/c$d.class */
    public static class C5832d implements MessageQueue.IdleHandler {

        /* renamed from: a */
        public final Map<AbstractC5806c, WeakReference<C5841h<?>>> f14709a;

        /* renamed from: b */
        public final ReferenceQueue<C5841h<?>> f14710b;

        public C5832d(Map<AbstractC5806c, WeakReference<C5841h<?>>> map, ReferenceQueue<C5841h<?>> referenceQueue) {
            this.f14709a = map;
            this.f14710b = referenceQueue;
        }

        @Override // android.os.MessageQueue.IdleHandler
        public boolean queueIdle() {
            C5833e eVar = (C5833e) this.f14710b.poll();
            if (eVar == null) {
                return true;
            }
            this.f14709a.remove(eVar.f14711a);
            return true;
        }
    }

    /* renamed from: h.d.a.s.i.c$e */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/c$e.class */
    public static class C5833e extends WeakReference<C5841h<?>> {

        /* renamed from: a */
        public final AbstractC5806c f14711a;

        public C5833e(AbstractC5806c cVar, C5841h<?> hVar, ReferenceQueue<? super C5841h<?>> referenceQueue) {
            super(hVar, referenceQueue);
            this.f14711a = cVar;
        }
    }

    public C5828c(AbstractC5884h hVar, AbstractC5870a.AbstractC5871a aVar, ExecutorService executorService, ExecutorService executorService2) {
        this(hVar, aVar, executorService, executorService2, null, null, null, null, null);
    }

    public C5828c(AbstractC5884h hVar, AbstractC5870a.AbstractC5871a aVar, ExecutorService executorService, ExecutorService executorService2, Map<AbstractC5806c, C5834d> map, C5840g gVar, Map<AbstractC5806c, WeakReference<C5841h<?>>> map2, C5829a aVar2, C5849m mVar) {
        this.f14696c = hVar;
        this.f14700g = new C5830b(aVar);
        this.f14698e = map2 == null ? new HashMap<>() : map2;
        this.f14695b = gVar == null ? new C5840g() : gVar;
        this.f14694a = map == null ? new HashMap<>() : map;
        this.f14697d = aVar2 == null ? new C5829a(executorService, executorService2, this) : aVar2;
        this.f14699f = mVar == null ? new C5849m() : mVar;
        hVar.mo24176a(this);
    }

    /* renamed from: a */
    public static void m24278a(String str, long j, AbstractC5806c cVar) {
        String str2 = str + " in " + C6092d.m23878a(j) + "ms, key: " + cVar;
    }

    /* renamed from: a */
    public <T, Z, R> C5831c m24280a(AbstractC5806c cVar, int i, int i2, AbstractC5813c<T> cVar2, AbstractC6045b<T, Z> bVar, AbstractC5810g<Z> gVar, AbstractC6019d<Z, R> dVar, EnumC5779n nVar, boolean z, EnumC5827b bVar2, AbstractC6058g gVar2) {
        C6096h.m23856b();
        long a = C6092d.m23879a();
        C5839f a2 = this.f14695b.m24256a(cVar2.getId(), cVar, i, i2, bVar.mo23968h(), bVar.mo23969g(), gVar, bVar.mo23970f(), dVar, bVar.mo23971d());
        C5841h<?> b = m24276b(a2, z);
        if (b != null) {
            gVar2.mo23945a(b);
            if (!Log.isLoggable("Engine", 2)) {
                return null;
            }
            m24278a("Loaded resource from cache", a, a2);
            return null;
        }
        C5841h<?> a3 = m24279a(a2, z);
        if (a3 != null) {
            gVar2.mo23945a(a3);
            if (!Log.isLoggable("Engine", 2)) {
                return null;
            }
            m24278a("Loaded resource from active resources", a, a2);
            return null;
        }
        C5834d dVar2 = this.f14694a.get(a2);
        if (dVar2 != null) {
            dVar2.m24268a(gVar2);
            if (Log.isLoggable("Engine", 2)) {
                m24278a("Added to existing load", a, a2);
            }
            return new C5831c(gVar2, dVar2);
        }
        C5834d a4 = this.f14697d.m24274a(a2, z);
        RunnableC5843i iVar = new RunnableC5843i(a4, new C5823a(a2, i, i2, cVar2, bVar, gVar, dVar, this.f14700g, bVar2, nVar), nVar);
        this.f14694a.put(a2, a4);
        a4.m24268a(gVar2);
        a4.m24265b(iVar);
        if (Log.isLoggable("Engine", 2)) {
            m24278a("Started new load", a, a2);
        }
        return new C5831c(gVar2, a4);
    }

    /* renamed from: a */
    public final C5841h<?> m24281a(AbstractC5806c cVar) {
        AbstractC5848l<?> a = this.f14696c.mo24178a(cVar);
        return a == null ? null : a instanceof C5841h ? (C5841h) a : new C5841h<>(a, true);
    }

    /* renamed from: a */
    public final C5841h<?> m24279a(AbstractC5806c cVar, boolean z) {
        C5841h<?> hVar = null;
        if (!z) {
            return null;
        }
        WeakReference<C5841h<?>> weakReference = this.f14698e.get(cVar);
        if (weakReference != null) {
            hVar = weakReference.get();
            if (hVar != null) {
                hVar.m24254c();
            } else {
                this.f14698e.remove(cVar);
            }
        }
        return hVar;
    }

    /* renamed from: a */
    public void m24282a() {
        this.f14700g.mo24273a().clear();
    }

    @Override // p081h.p119d.p120a.p124s.p126i.AbstractC5838e
    /* renamed from: a */
    public void mo24259a(AbstractC5806c cVar, C5841h<?> hVar) {
        C6096h.m23856b();
        if (hVar != null) {
            hVar.m24255a(cVar, this);
            if (hVar.m24253d()) {
                this.f14698e.put(cVar, new C5833e(cVar, hVar, m24277b()));
            }
        }
        this.f14694a.remove(cVar);
    }

    @Override // p081h.p119d.p120a.p124s.p126i.AbstractC5838e
    /* renamed from: a */
    public void mo24258a(C5834d dVar, AbstractC5806c cVar) {
        C6096h.m23856b();
        if (dVar.equals(this.f14694a.get(cVar))) {
            this.f14694a.remove(cVar);
        }
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p128o.AbstractC5884h.AbstractC5885a
    /* renamed from: a */
    public void mo24175a(AbstractC5848l<?> lVar) {
        C6096h.m23856b();
        this.f14699f.m24242a(lVar);
    }

    /* renamed from: b */
    public final C5841h<?> m24276b(AbstractC5806c cVar, boolean z) {
        if (!z) {
            return null;
        }
        C5841h<?> a = m24281a(cVar);
        if (a != null) {
            a.m24254c();
            this.f14698e.put(cVar, new C5833e(cVar, a, m24277b()));
        }
        return a;
    }

    /* renamed from: b */
    public final ReferenceQueue<C5841h<?>> m24277b() {
        if (this.f14701h == null) {
            this.f14701h = new ReferenceQueue<>();
            Looper.myQueue().addIdleHandler(new C5832d(this.f14698e, this.f14701h));
        }
        return this.f14701h;
    }

    @Override // p081h.p119d.p120a.p124s.p126i.C5841h.AbstractC5842a
    /* renamed from: b */
    public void mo24251b(AbstractC5806c cVar, C5841h hVar) {
        C6096h.m23856b();
        this.f14698e.remove(cVar);
        if (hVar.m24253d()) {
            this.f14696c.mo24177a(cVar, hVar);
        } else {
            this.f14699f.m24242a(hVar);
        }
    }

    /* renamed from: b */
    public void m24275b(AbstractC5848l lVar) {
        C6096h.m23856b();
        if (lVar instanceof C5841h) {
            ((C5841h) lVar).m24252e();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }
}
