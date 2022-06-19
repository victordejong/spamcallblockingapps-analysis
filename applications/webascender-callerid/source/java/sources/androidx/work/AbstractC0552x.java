package androidx.work;

import androidx.work.impl.p015n.C0513p;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
/* renamed from: androidx.work.x */
/* loaded from: classes-dex2jar.jar:androidx/work/x.class */
public abstract class AbstractC0552x {

    /* renamed from: a */
    private UUID f2681a;

    /* renamed from: b */
    private C0513p f2682b;

    /* renamed from: c */
    private Set<String> f2683c;

    /* renamed from: androidx.work.x$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/x$a.class */
    public static abstract class AbstractC0553a<B extends AbstractC0553a<?, ?>, W extends AbstractC0552x> {

        /* renamed from: c */
        C0513p f2686c;

        /* renamed from: a */
        boolean f2684a = false;

        /* renamed from: d */
        Set<String> f2687d = new HashSet();

        /* renamed from: b */
        UUID f2685b = UUID.randomUUID();

        AbstractC0553a(Class<? extends ListenableWorker> cls) {
            this.f2686c = new C0513p(this.f2685b.toString(), cls.getName());
            m4286a(cls.getName());
        }

        /* renamed from: a */
        public final B m4286a(String str) {
            this.f2687d.add(str);
            return m4283d();
        }

        /* renamed from: b */
        public final W m4285b() {
            W m4284c = m4284c();
            this.f2685b = UUID.randomUUID();
            C0513p c0513p = new C0513p(this.f2686c);
            this.f2686c = c0513p;
            c0513p.f2594a = this.f2685b.toString();
            return m4284c;
        }

        /* renamed from: c */
        abstract W m4284c();

        /* renamed from: d */
        abstract B m4283d();

        /* renamed from: e */
        public final B m4282e(C0470c c0470c) {
            this.f2686c.f2603j = c0470c;
            return m4283d();
        }

        /* renamed from: f */
        public B m4281f(long j, TimeUnit timeUnit) {
            this.f2686c.f2600g = timeUnit.toMillis(j);
            if (Long.MAX_VALUE - System.currentTimeMillis() > this.f2686c.f2600g) {
                return m4283d();
            }
            throw new IllegalArgumentException("The given initial delay is too large and will cause an overflow!");
        }

        /* renamed from: g */
        public final B m4280g(C0474e c0474e) {
            this.f2686c.f2598e = c0474e;
            return m4283d();
        }
    }

    protected AbstractC0552x(UUID uuid, C0513p c0513p, Set<String> set) {
        this.f2681a = uuid;
        this.f2682b = c0513p;
        this.f2683c = set;
    }

    /* renamed from: a */
    public String m4289a() {
        return this.f2681a.toString();
    }

    /* renamed from: b */
    public Set<String> m4288b() {
        return this.f2683c;
    }

    /* renamed from: c */
    public C0513p m4287c() {
        return this.f2682b;
    }
}
