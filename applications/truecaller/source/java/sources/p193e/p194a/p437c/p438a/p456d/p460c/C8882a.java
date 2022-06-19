package p193e.p194a.p437c.p438a.p456d.p460c;

import com.truecaller.insights.p168ui.domain.LifeCycleAwareAnalyticsLoggerImpl;
import java.util.Collections;
import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p419m.p421b.AbstractC8510a;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p372b0.p419m.p423d.AbstractC8514a;
import p193e.p194a.p437c.p438a.p439a.C8690g;
import p193e.p194a.p437c.p438a.p456d.p457a.C8869a;
import p193e.p194a.p437c.p438a.p456d.p461d.AbstractC8890c;
import p193e.p194a.p437c.p438a.p456d.p461d.C8888a;
import p193e.p194a.p437c.p438a.p456d.p461d.C8891d;
import p193e.p194a.p437c.p438a.p456d.p461d.C8904f;
import p193e.p194a.p437c.p438a.p456d.p461d.C8925j;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p479i.C9116j;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p548h.AbstractC10255e;
import p193e.p194a.p437c.p548h.p549k.AbstractC10261a;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p579q.AbstractC10497d;
import p193e.p194a.p437c.p606w.AbstractC10852v;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.d.c.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/c/a.class */
public final class C8882a implements AbstractC8886b {

    /* renamed from: a */
    public final C8887c f27056a;

    /* renamed from: b */
    public final AbstractC10451a f27057b;

    /* renamed from: c */
    public final AbstractC8412c f27058c;

    /* renamed from: d */
    public final AbstractC10261a f27059d;

    /* renamed from: e */
    public final AbstractC8510a f27060e;

    /* renamed from: f */
    public final C8882a f27061f = this;

    /* renamed from: g */
    public Provider<C8904f> f27062g;

    /* renamed from: h */
    public Provider<C8888a> f27063h;

    /* renamed from: i */
    public Provider<C8891d> f27064i;

    /* renamed from: j */
    public Provider<AbstractC8890c> f27065j;

    /* renamed from: k */
    public Provider<LifeCycleAwareAnalyticsLoggerImpl> f27066k;

    /* renamed from: l */
    public Provider<AbstractC9114h> f27067l;

    /* renamed from: m */
    public Provider<C8925j> f27068m;

    /* renamed from: n */
    public Provider<C8869a> f27069n;

    /* renamed from: o */
    public Provider<AbstractC27040y0> f27070o;

    /* renamed from: p */
    public Provider<C8690g> f27071p;

    /* renamed from: q */
    public Provider<C26986a1.AbstractC26987b> f27072q;

    /* renamed from: e.a.c.a.d.c.a$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/c/a$b.class */
    public static final class C8884b {

        /* renamed from: a */
        public C8887c f27073a;

        /* renamed from: b */
        public AbstractC10451a f27074b;

        /* renamed from: c */
        public AbstractC10261a f27075c;

        /* renamed from: d */
        public AbstractC8412c f27076d;

        /* renamed from: e */
        public AbstractC8510a f27077e;

        public C8884b(C8883a c8883a) {
        }

        /* renamed from: a */
        public AbstractC8886b m27981a() {
            if (this.f27073a == null) {
                this.f27073a = new C8887c();
            }
            C25225a.m3846s(this.f27074b, AbstractC10451a.class);
            C25225a.m3846s(this.f27075c, AbstractC10261a.class);
            C25225a.m3846s(this.f27076d, AbstractC8412c.class);
            C25225a.m3846s(this.f27077e, AbstractC8510a.class);
            return new C8882a(this.f27073a, this.f27074b, this.f27075c, this.f27076d, this.f27077e, null);
        }
    }

    /* renamed from: e.a.c.a.d.c.a$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/c/a$c.class */
    public static final class C8885c<T> implements Provider<T> {

        /* renamed from: a */
        public final C8882a f27078a;

        /* renamed from: b */
        public final int f27079b;

        public C8885c(C8882a c8882a, int i) {
            this.f27078a = c8882a;
            this.f27079b = i;
        }

        public T get() {
            switch (this.f27079b) {
                case 0:
                    return (T) new C8690g(Collections.singletonMap(C8869a.class, this.f27078a.f27070o));
                case 1:
                    C8882a c8882a = this.f27078a;
                    AbstractC8890c abstractC8890c = (AbstractC8890c) c8882a.f27065j.get();
                    AbstractC9114h abstractC9114h = (AbstractC9114h) c8882a.f27067l.get();
                    AbstractC10060c mo12429c5 = c8882a.f27057b.mo12429c5();
                    Objects.requireNonNull(mo12429c5, "Cannot return null from a non-@Nullable component method");
                    C9116j c9116j = new C9116j(mo12429c5);
                    AbstractC10028o mo12751E2 = c8882a.f27057b.mo12751E2();
                    Objects.requireNonNull(mo12751E2, "Cannot return null from a non-@Nullable component method");
                    return (T) new C8869a(abstractC8890c, abstractC9114h, c9116j, mo12751E2, (C8925j) c8882a.f27068m.get());
                case 2:
                    C8882a c8882a2 = this.f27078a;
                    C8904f c8904f = (C8904f) c8882a2.f27062g.get();
                    f mo12793B1 = c8882a2.f27058c.mo12793B1();
                    Objects.requireNonNull(mo12793B1, "Cannot return null from a non-@Nullable component method");
                    return (T) new C8891d(c8904f, mo12793B1, (C8888a) c8882a2.f27063h.get());
                case 3:
                    C8882a c8882a3 = this.f27078a;
                    C8887c c8887c = c8882a3.f27056a;
                    AbstractC10497d mo12431c2 = c8882a3.f27057b.mo12431c2();
                    Objects.requireNonNull(mo12431c2, "Cannot return null from a non-@Nullable component method");
                    f mo12793B12 = c8882a3.f27058c.mo12793B1();
                    Objects.requireNonNull(mo12793B12, "Cannot return null from a non-@Nullable component method");
                    AbstractC10255e mo12807A1 = c8882a3.f27059d.mo12807A1();
                    Objects.requireNonNull(mo12807A1, "Cannot return null from a non-@Nullable component method");
                    Objects.requireNonNull(c8887c);
                    l.e(mo12431c2, "insightsUiManager");
                    l.e(mo12793B12, "ioContext");
                    l.e(mo12807A1, "insightsFilterFetcher");
                    return (T) new C8904f(mo12431c2, mo12793B12, mo12807A1);
                case 4:
                    C8882a c8882a4 = this.f27078a;
                    C8887c c8887c2 = c8882a4.f27056a;
                    AbstractC10497d mo12431c22 = c8882a4.f27057b.mo12431c2();
                    Objects.requireNonNull(mo12431c22, "Cannot return null from a non-@Nullable component method");
                    f mo12793B13 = c8882a4.f27058c.mo12793B1();
                    Objects.requireNonNull(mo12793B13, "Cannot return null from a non-@Nullable component method");
                    Objects.requireNonNull(c8887c2);
                    l.e(mo12431c22, "insightsUiManager");
                    l.e(mo12793B13, "ioContext");
                    return (T) new C8888a(mo12431c22, mo12793B13);
                case 5:
                    AbstractC10060c mo12429c52 = this.f27078a.f27057b.mo12429c5();
                    Objects.requireNonNull(mo12429c52, "Cannot return null from a non-@Nullable component method");
                    return (T) new LifeCycleAwareAnalyticsLoggerImpl(mo12429c52);
                case 6:
                    C8882a c8882a5 = this.f27078a;
                    C8887c c8887c3 = c8882a5.f27056a;
                    f mo12793B14 = c8882a5.f27058c.mo12793B1();
                    Objects.requireNonNull(mo12793B14, "Cannot return null from a non-@Nullable component method");
                    AbstractC8511a mo12189u = c8882a5.f27060e.mo12189u();
                    Objects.requireNonNull(mo12189u, "Cannot return null from a non-@Nullable component method");
                    AbstractC8514a mo12557S7 = c8882a5.f27060e.mo12557S7();
                    Objects.requireNonNull(mo12557S7, "Cannot return null from a non-@Nullable component method");
                    AbstractC10852v mo12401e5 = c8882a5.f27057b.mo12401e5();
                    Objects.requireNonNull(mo12401e5, "Cannot return null from a non-@Nullable component method");
                    AbstractC10821g mo12329j5 = c8882a5.f27057b.mo12329j5();
                    Objects.requireNonNull(mo12329j5, "Cannot return null from a non-@Nullable component method");
                    AbstractC10255e mo12807A12 = c8882a5.f27059d.mo12807A1();
                    Objects.requireNonNull(mo12807A12, "Cannot return null from a non-@Nullable component method");
                    Objects.requireNonNull(c8887c3);
                    l.e(mo12793B14, "ioContext");
                    l.e(mo12189u, "addressProfileLoader");
                    l.e(mo12557S7, "senderInfoManager");
                    l.e(mo12401e5, "accountRepository");
                    l.e(mo12329j5, "smartSmsFeatureFilter");
                    l.e(mo12807A12, "insightsFilterFetcher");
                    return (T) new C8925j(mo12793B14, mo12189u, mo12557S7, mo12401e5, mo12329j5, mo12807A12);
                default:
                    throw new AssertionError(this.f27079b);
            }
        }
    }

    public C8882a(C8887c c8887c, AbstractC10451a abstractC10451a, AbstractC10261a abstractC10261a, AbstractC8412c abstractC8412c, AbstractC8510a abstractC8510a, C8883a c8883a) {
        this.f27056a = c8887c;
        this.f27057b = abstractC10451a;
        this.f27058c = abstractC8412c;
        this.f27059d = abstractC10261a;
        this.f27060e = abstractC8510a;
        Provider c8885c = new C8885c(this, 3);
        Object obj = b.c;
        this.f27062g = !(c8885c instanceof b) ? new b(c8885c) : c8885c;
        Provider c8885c2 = new C8885c(this, 4);
        this.f27063h = !(c8885c2 instanceof b) ? new b(c8885c2) : c8885c2;
        C8885c c8885c3 = new C8885c(this, 2);
        this.f27064i = c8885c3;
        this.f27065j = b.b(c8885c3);
        C8885c c8885c4 = new C8885c(this, 5);
        this.f27066k = c8885c4;
        this.f27067l = b.b(c8885c4);
        Provider c8885c5 = new C8885c(this, 6);
        this.f27068m = !(c8885c5 instanceof b) ? new b(c8885c5) : c8885c5;
        C8885c c8885c6 = new C8885c(this, 1);
        this.f27069n = c8885c6;
        this.f27070o = b.b(c8885c6);
        C8885c c8885c7 = new C8885c(this, 0);
        this.f27071p = c8885c7;
        this.f27072q = b.b(c8885c7);
    }

    /* renamed from: a */
    public static C8884b m27982a() {
        return new C8884b(null);
    }
}
