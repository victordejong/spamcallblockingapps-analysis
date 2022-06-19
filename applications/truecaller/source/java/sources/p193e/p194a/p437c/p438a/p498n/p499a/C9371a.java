package p193e.p194a.p437c.p438a.p498n.p499a;

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
import p193e.p194a.p437c.p438a.p446c.p449f.C8803g;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p479i.C9116j;
import p193e.p194a.p437c.p438a.p498n.p500b.AbstractC9376a;
import p193e.p194a.p437c.p438a.p498n.p500b.C9377b;
import p193e.p194a.p437c.p438a.p498n.p500b.C9390e;
import p193e.p194a.p437c.p438a.p498n.p501c.C9417c;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p548h.AbstractC10255e;
import p193e.p194a.p437c.p548h.p549k.AbstractC10261a;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p579q.AbstractC10497d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.n.a.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/n/a/a.class */
public final class C9371a implements AbstractC9374b {

    /* renamed from: a */
    public final C9375c f28474a;

    /* renamed from: b */
    public final AbstractC10451a f28475b;

    /* renamed from: c */
    public final AbstractC8412c f28476c;

    /* renamed from: d */
    public final AbstractC10261a f28477d;

    /* renamed from: e */
    public final AbstractC8510a f28478e;

    /* renamed from: f */
    public final C9371a f28479f = this;

    /* renamed from: g */
    public Provider<C8803g> f28480g;

    /* renamed from: h */
    public Provider<C9390e> f28481h;

    /* renamed from: i */
    public Provider<C9377b> f28482i;

    /* renamed from: j */
    public Provider<AbstractC9376a> f28483j;

    /* renamed from: k */
    public Provider<LifeCycleAwareAnalyticsLoggerImpl> f28484k;

    /* renamed from: l */
    public Provider<AbstractC9114h> f28485l;

    /* renamed from: m */
    public Provider<C9417c> f28486m;

    /* renamed from: n */
    public Provider<AbstractC27040y0> f28487n;

    /* renamed from: o */
    public Provider<C8690g> f28488o;

    /* renamed from: p */
    public Provider<C26986a1.AbstractC26987b> f28489p;

    /* renamed from: e.a.c.a.n.a.a$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/n/a/a$b.class */
    public static final class C9373b<T> implements Provider<T> {

        /* renamed from: a */
        public final C9371a f28490a;

        /* renamed from: b */
        public final int f28491b;

        public C9373b(C9371a c9371a, int i) {
            this.f28490a = c9371a;
            this.f28491b = i;
        }

        public T get() {
            int i = this.f28491b;
            if (i != 0) {
                if (i == 1) {
                    C9371a c9371a = this.f28490a;
                    AbstractC9376a abstractC9376a = (AbstractC9376a) c9371a.f28483j.get();
                    AbstractC9114h abstractC9114h = (AbstractC9114h) c9371a.f28485l.get();
                    AbstractC10060c mo12429c5 = c9371a.f28475b.mo12429c5();
                    Objects.requireNonNull(mo12429c5, "Cannot return null from a non-@Nullable component method");
                    C9116j c9116j = new C9116j(mo12429c5);
                    AbstractC10028o mo12751E2 = c9371a.f28475b.mo12751E2();
                    Objects.requireNonNull(mo12751E2, "Cannot return null from a non-@Nullable component method");
                    return (T) new C9417c(abstractC9376a, abstractC9114h, c9116j, mo12751E2);
                } else if (i == 2) {
                    C9371a c9371a2 = this.f28490a;
                    C9390e c9390e = (C9390e) c9371a2.f28481h.get();
                    f mo12793B1 = c9371a2.f28476c.mo12793B1();
                    Objects.requireNonNull(mo12793B1, "Cannot return null from a non-@Nullable component method");
                    return (T) new C9377b(c9390e, mo12793B1);
                } else if (i == 3) {
                    C9371a c9371a3 = this.f28490a;
                    C9375c c9375c = c9371a3.f28474a;
                    AbstractC10497d mo12431c2 = c9371a3.f28475b.mo12431c2();
                    Objects.requireNonNull(mo12431c2, "Cannot return null from a non-@Nullable component method");
                    C8803g c8803g = (C8803g) c9371a3.f28480g.get();
                    f mo12793B12 = c9371a3.f28476c.mo12793B1();
                    Objects.requireNonNull(mo12793B12, "Cannot return null from a non-@Nullable component method");
                    AbstractC10255e mo12807A1 = c9371a3.f28477d.mo12807A1();
                    Objects.requireNonNull(mo12807A1, "Cannot return null from a non-@Nullable component method");
                    Objects.requireNonNull(c9375c);
                    l.e(mo12431c2, "insightsUiManager");
                    l.e(c8803g, "upcomingUseCase");
                    l.e(mo12793B12, "ioContext");
                    l.e(mo12807A1, "insightsFilterFetcher");
                    return (T) new C9390e(mo12431c2, c8803g, mo12793B12, mo12807A1);
                } else if (i != 4) {
                    if (i != 5) {
                        throw new AssertionError(this.f28491b);
                    }
                    AbstractC10060c mo12429c52 = this.f28490a.f28475b.mo12429c5();
                    Objects.requireNonNull(mo12429c52, "Cannot return null from a non-@Nullable component method");
                    return (T) new LifeCycleAwareAnalyticsLoggerImpl(mo12429c52);
                } else {
                    C9371a c9371a4 = this.f28490a;
                    C9375c c9375c2 = c9371a4.f28474a;
                    AbstractC10497d mo12431c22 = c9371a4.f28475b.mo12431c2();
                    Objects.requireNonNull(mo12431c22, "Cannot return null from a non-@Nullable component method");
                    f mo12793B13 = c9371a4.f28476c.mo12793B1();
                    Objects.requireNonNull(mo12793B13, "Cannot return null from a non-@Nullable component method");
                    AbstractC9691j mo12160w0 = c9371a4.f28475b.mo12160w0();
                    Objects.requireNonNull(mo12160w0, "Cannot return null from a non-@Nullable component method");
                    AbstractC10255e mo12807A12 = c9371a4.f28477d.mo12807A1();
                    Objects.requireNonNull(mo12807A12, "Cannot return null from a non-@Nullable component method");
                    Objects.requireNonNull(c9375c2);
                    l.e(mo12431c22, "businessInsightsManager");
                    l.e(mo12793B13, "ioContext");
                    l.e(mo12160w0, "insightsStatusProvider");
                    l.e(mo12807A12, "insightsFilterFetcher");
                    return (T) new C8803g(mo12431c22, mo12793B13, mo12160w0, mo12807A12);
                }
            }
            return (T) new C8690g(Collections.singletonMap(C9417c.class, this.f28490a.f28487n));
        }
    }

    public C9371a(C9375c c9375c, AbstractC10451a abstractC10451a, AbstractC10261a abstractC10261a, AbstractC8412c abstractC8412c, AbstractC8510a abstractC8510a, C9372a c9372a) {
        this.f28474a = c9375c;
        this.f28475b = abstractC10451a;
        this.f28476c = abstractC8412c;
        this.f28477d = abstractC10261a;
        this.f28478e = abstractC8510a;
        Provider c9373b = new C9373b(this, 4);
        Object obj = b.c;
        this.f28480g = !(c9373b instanceof b) ? new b(c9373b) : c9373b;
        Provider c9373b2 = new C9373b(this, 3);
        this.f28481h = !(c9373b2 instanceof b) ? new b(c9373b2) : c9373b2;
        C9373b c9373b3 = new C9373b(this, 2);
        this.f28482i = c9373b3;
        this.f28483j = b.b(c9373b3);
        C9373b c9373b4 = new C9373b(this, 5);
        this.f28484k = c9373b4;
        this.f28485l = b.b(c9373b4);
        C9373b c9373b5 = new C9373b(this, 1);
        this.f28486m = c9373b5;
        this.f28487n = b.b(c9373b5);
        C9373b c9373b6 = new C9373b(this, 0);
        this.f28488o = c9373b6;
        this.f28489p = b.b(c9373b6);
    }
}
