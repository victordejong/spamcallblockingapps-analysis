package p193e.p194a.p437c.p438a.p471e.p473b;

import com.truecaller.insights.p168ui.domain.LifeCycleAwareAnalyticsLoggerImpl;
import java.util.Collections;
import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p419m.p421b.AbstractC8510a;
import p193e.p194a.p437c.p438a.p439a.C8690g;
import p193e.p194a.p437c.p438a.p471e.p474c.C8989e;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p548h.p549k.AbstractC10261a;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import s1.w.f;
/* renamed from: e.a.c.a.e.b.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/e/b/a.class */
public final class C8982a {

    /* renamed from: a */
    public final AbstractC10451a f27291a;

    /* renamed from: b */
    public final AbstractC8412c f27292b;

    /* renamed from: c */
    public final AbstractC8510a f27293c;

    /* renamed from: d */
    public final AbstractC10261a f27294d;

    /* renamed from: e */
    public final C8982a f27295e = this;

    /* renamed from: f */
    public Provider<LifeCycleAwareAnalyticsLoggerImpl> f27296f;

    /* renamed from: g */
    public Provider<AbstractC9114h> f27297g;

    /* renamed from: h */
    public Provider<C8989e> f27298h;

    /* renamed from: i */
    public Provider<AbstractC27040y0> f27299i;

    /* renamed from: j */
    public Provider<C8690g> f27300j;

    /* renamed from: k */
    public Provider<C26986a1.AbstractC26987b> f27301k;

    /* renamed from: e.a.c.a.e.b.a$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/e/b/a$b.class */
    public static final class C8984b<T> implements Provider<T> {

        /* renamed from: a */
        public final C8982a f27302a;

        /* renamed from: b */
        public final int f27303b;

        public C8984b(C8982a c8982a, int i) {
            this.f27302a = c8982a;
            this.f27303b = i;
        }

        public T get() {
            int i = this.f27303b;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        throw new AssertionError(this.f27303b);
                    }
                    AbstractC10060c mo12429c5 = this.f27302a.f27291a.mo12429c5();
                    Objects.requireNonNull(mo12429c5, "Cannot return null from a non-@Nullable component method");
                    return (T) new LifeCycleAwareAnalyticsLoggerImpl(mo12429c5);
                }
                C8982a c8982a = this.f27302a;
                AbstractC10821g mo12329j5 = c8982a.f27291a.mo12329j5();
                Objects.requireNonNull(mo12329j5, "Cannot return null from a non-@Nullable component method");
                f mo12793B1 = c8982a.f27292b.mo12793B1();
                Objects.requireNonNull(mo12793B1, "Cannot return null from a non-@Nullable component method");
                return (T) new C8989e(mo12329j5, mo12793B1, (AbstractC9114h) c8982a.f27297g.get());
            }
            return (T) new C8690g(Collections.singletonMap(C8989e.class, this.f27302a.f27299i));
        }
    }

    public C8982a(AbstractC10451a abstractC10451a, AbstractC8412c abstractC8412c, AbstractC8510a abstractC8510a, AbstractC10261a abstractC10261a, C8983a c8983a) {
        this.f27291a = abstractC10451a;
        this.f27292b = abstractC8412c;
        this.f27293c = abstractC8510a;
        this.f27294d = abstractC10261a;
        C8984b c8984b = new C8984b(this, 2);
        this.f27296f = c8984b;
        this.f27297g = b.b(c8984b);
        C8984b c8984b2 = new C8984b(this, 1);
        this.f27298h = c8984b2;
        this.f27299i = b.b(c8984b2);
        C8984b c8984b3 = new C8984b(this, 0);
        this.f27300j = c8984b3;
        this.f27301k = b.b(c8984b3);
    }
}
