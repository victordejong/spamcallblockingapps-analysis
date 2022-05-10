package p131c.p135b.p136a.p138b;

import android.os.Handler;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
/* renamed from: c.b.a.b.h */
/* loaded from: classes-dex2jar.jar:c/b/a/b/h.class */
public final class C2082h {

    /* renamed from: a */
    public final C2374t f8054a;

    /* renamed from: b */
    public final Handler f8055b;

    /* renamed from: c */
    public final Set<C2085c> f8056c = new HashSet();

    /* renamed from: d */
    public final AtomicInteger f8057d = new AtomicInteger();

    /* renamed from: c.b.a.b.h$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/h$a.class */
    public class RunnableC2083a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2085c f8058a;

        /* renamed from: b */
        public final /* synthetic */ int f8059b;

        public RunnableC2083a(C2085c cVar, int i) {
            this.f8058a = cVar;
            this.f8059b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC2084b c = this.f8058a.m31093c();
            if (!c.mo19211b()) {
                C2374t tVar = C2082h.this.f8054a;
                tVar.m30044b("CountdownManager", "Ending countdown for " + this.f8058a.m31097a());
            } else if (C2082h.this.f8057d.get() == this.f8059b) {
                try {
                    c.mo19212a();
                } catch (Throwable th) {
                    C2374t tVar2 = C2082h.this.f8054a;
                    tVar2.m30043b("CountdownManager", "Encountered error on countdown step for: " + this.f8058a.m31097a(), th);
                }
                C2082h.this.m31104a(this.f8058a, this.f8059b);
            } else {
                C2374t tVar3 = C2082h.this.f8054a;
                tVar3.m30040d("CountdownManager", "Killing duplicate countdown from previous generation: " + this.f8058a.m31097a());
            }
        }
    }

    /* renamed from: c.b.a.b.h$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/h$b.class */
    public interface AbstractC2084b {
        /* renamed from: a */
        void mo19212a();

        /* renamed from: b */
        boolean mo19211b();
    }

    /* renamed from: c.b.a.b.h$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/h$c.class */
    public static class C2085c {

        /* renamed from: a */
        public final String f8061a;

        /* renamed from: b */
        public final AbstractC2084b f8062b;

        /* renamed from: c */
        public final long f8063c;

        public C2085c(String str, long j, AbstractC2084b bVar) {
            this.f8061a = str;
            this.f8063c = j;
            this.f8062b = bVar;
        }

        public /* synthetic */ C2085c(String str, long j, AbstractC2084b bVar, RunnableC2083a aVar) {
            this(str, j, bVar);
        }

        /* renamed from: a */
        public final String m31097a() {
            return this.f8061a;
        }

        /* renamed from: b */
        public final long m31095b() {
            return this.f8063c;
        }

        /* renamed from: c */
        public final AbstractC2084b m31093c() {
            return this.f8062b;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C2085c)) {
                return false;
            }
            String str = this.f8061a;
            String str2 = ((C2085c) obj).f8061a;
            if (str != null) {
                z = str.equalsIgnoreCase(str2);
            } else if (str2 != null) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            String str = this.f8061a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return "CountdownProxy{identifier='" + this.f8061a + "', countdownStepMillis=" + this.f8063c + '}';
        }
    }

    public C2082h(Handler handler, C2341l lVar) {
        if (handler == null) {
            throw new IllegalArgumentException("No handler specified.");
        } else if (lVar != null) {
            this.f8055b = handler;
            this.f8054a = lVar.m30262d0();
        } else {
            throw new IllegalArgumentException("No sdk specified.");
        }
    }

    /* renamed from: a */
    public void m31105a() {
        HashSet<C2085c> hashSet = new HashSet(this.f8056c);
        C2374t tVar = this.f8054a;
        tVar.m30044b("CountdownManager", "Starting " + hashSet.size() + " countdowns...");
        int incrementAndGet = this.f8057d.incrementAndGet();
        for (C2085c cVar : hashSet) {
            C2374t tVar2 = this.f8054a;
            tVar2.m30044b("CountdownManager", "Starting countdown: " + cVar.m31097a() + " for generation " + incrementAndGet + "...");
            m31104a(cVar, incrementAndGet);
        }
    }

    /* renamed from: a */
    public final void m31104a(C2085c cVar, int i) {
        this.f8055b.postDelayed(new RunnableC2083a(cVar, i), cVar.m31095b());
    }

    /* renamed from: a */
    public void m31101a(String str, long j, AbstractC2084b bVar) {
        if (j <= 0) {
            throw new IllegalArgumentException("Invalid step specified.");
        } else if (this.f8055b != null) {
            C2374t tVar = this.f8054a;
            tVar.m30044b("CountdownManager", "Adding countdown: " + str);
            this.f8056c.add(new C2085c(str, j, bVar, null));
        } else {
            throw new IllegalArgumentException("No handler specified.");
        }
    }

    /* renamed from: b */
    public void m31100b() {
        this.f8054a.m30044b("CountdownManager", "Removing all countdowns...");
        m31098c();
        this.f8056c.clear();
    }

    /* renamed from: c */
    public void m31098c() {
        this.f8054a.m30044b("CountdownManager", "Stopping countdowns...");
        this.f8057d.incrementAndGet();
        this.f8055b.removeCallbacksAndMessages(null);
    }
}
