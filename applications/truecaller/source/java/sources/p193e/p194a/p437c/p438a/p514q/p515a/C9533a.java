package p193e.p194a.p437c.p438a.p514q.p515a;

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
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p479i.C9116j;
import p193e.p194a.p437c.p438a.p514q.p516b.AbstractC9540c;
import p193e.p194a.p437c.p438a.p514q.p516b.C9538a;
import p193e.p194a.p437c.p438a.p514q.p516b.C9541d;
import p193e.p194a.p437c.p438a.p514q.p516b.C9554f;
import p193e.p194a.p437c.p438a.p514q.p517c.C9573b;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p548h.p549k.AbstractC10261a;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p579q.AbstractC10497d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.q.a.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/q/a/a.class */
public final class C9533a implements AbstractC9536b {

    /* renamed from: a */
    public final C9537c f28867a;

    /* renamed from: b */
    public final AbstractC10451a f28868b;

    /* renamed from: c */
    public final AbstractC8412c f28869c;

    /* renamed from: d */
    public final AbstractC10261a f28870d;

    /* renamed from: e */
    public final AbstractC8510a f28871e;

    /* renamed from: f */
    public final C9533a f28872f = this;

    /* renamed from: g */
    public Provider<C9554f> f28873g;

    /* renamed from: h */
    public Provider<C9541d> f28874h;

    /* renamed from: i */
    public Provider<AbstractC9540c> f28875i;

    /* renamed from: j */
    public Provider<LifeCycleAwareAnalyticsLoggerImpl> f28876j;

    /* renamed from: k */
    public Provider<AbstractC9114h> f28877k;

    /* renamed from: l */
    public Provider<C9573b> f28878l;

    /* renamed from: m */
    public Provider<AbstractC27040y0> f28879m;

    /* renamed from: n */
    public Provider<C8690g> f28880n;

    /* renamed from: o */
    public Provider<C26986a1.AbstractC26987b> f28881o;

    /* renamed from: e.a.c.a.q.a.a$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/a/a$b.class */
    public static final class C9535b<T> implements Provider<T> {

        /* renamed from: a */
        public final C9533a f28882a;

        /* renamed from: b */
        public final int f28883b;

        public C9535b(C9533a c9533a, int i) {
            this.f28882a = c9533a;
            this.f28883b = i;
        }

        public T get() {
            int i = this.f28883b;
            if (i != 0) {
                if (i == 1) {
                    C9533a c9533a = this.f28882a;
                    AbstractC9540c abstractC9540c = (AbstractC9540c) c9533a.f28875i.get();
                    AbstractC9114h abstractC9114h = (AbstractC9114h) c9533a.f28877k.get();
                    AbstractC10060c mo12429c5 = c9533a.f28868b.mo12429c5();
                    Objects.requireNonNull(mo12429c5, "Cannot return null from a non-@Nullable component method");
                    C9116j c9116j = new C9116j(mo12429c5);
                    AbstractC10028o mo12751E2 = c9533a.f28868b.mo12751E2();
                    Objects.requireNonNull(mo12751E2, "Cannot return null from a non-@Nullable component method");
                    return (T) new C9573b(abstractC9540c, abstractC9114h, c9116j, mo12751E2);
                } else if (i == 2) {
                    C9533a c9533a2 = this.f28882a;
                    C9554f c9554f = (C9554f) c9533a2.f28873g.get();
                    f mo12793B1 = c9533a2.f28869c.mo12793B1();
                    Objects.requireNonNull(mo12793B1, "Cannot return null from a non-@Nullable component method");
                    AbstractC10497d mo12431c2 = c9533a2.f28868b.mo12431c2();
                    Objects.requireNonNull(mo12431c2, "Cannot return null from a non-@Nullable component method");
                    f mo12793B12 = c9533a2.f28869c.mo12793B1();
                    Objects.requireNonNull(mo12793B12, "Cannot return null from a non-@Nullable component method");
                    return (T) new C9541d(c9554f, mo12793B1, new C9538a(mo12431c2, mo12793B12));
                } else if (i != 3) {
                    if (i != 4) {
                        throw new AssertionError(this.f28883b);
                    }
                    AbstractC10060c mo12429c52 = this.f28882a.f28868b.mo12429c5();
                    Objects.requireNonNull(mo12429c52, "Cannot return null from a non-@Nullable component method");
                    return (T) new LifeCycleAwareAnalyticsLoggerImpl(mo12429c52);
                } else {
                    C9533a c9533a3 = this.f28882a;
                    C9537c c9537c = c9533a3.f28867a;
                    AbstractC10497d mo12431c22 = c9533a3.f28868b.mo12431c2();
                    Objects.requireNonNull(mo12431c22, "Cannot return null from a non-@Nullable component method");
                    f mo12793B13 = c9533a3.f28869c.mo12793B1();
                    Objects.requireNonNull(mo12793B13, "Cannot return null from a non-@Nullable component method");
                    Objects.requireNonNull(c9537c);
                    l.e(mo12431c22, "insightsUiManager");
                    l.e(mo12793B13, "ioContext");
                    return (T) new C9554f(mo12431c22, mo12793B13);
                }
            }
            return (T) new C8690g(Collections.singletonMap(C9573b.class, this.f28882a.f28879m));
        }
    }

    public C9533a(C9537c c9537c, AbstractC10451a abstractC10451a, AbstractC10261a abstractC10261a, AbstractC8412c abstractC8412c, AbstractC8510a abstractC8510a, C9534a c9534a) {
        this.f28867a = c9537c;
        this.f28868b = abstractC10451a;
        this.f28869c = abstractC8412c;
        this.f28870d = abstractC10261a;
        this.f28871e = abstractC8510a;
        Provider c9535b = new C9535b(this, 3);
        Object obj = b.c;
        this.f28873g = !(c9535b instanceof b) ? new b(c9535b) : c9535b;
        C9535b c9535b2 = new C9535b(this, 2);
        this.f28874h = c9535b2;
        this.f28875i = b.b(c9535b2);
        C9535b c9535b3 = new C9535b(this, 4);
        this.f28876j = c9535b3;
        this.f28877k = b.b(c9535b3);
        C9535b c9535b4 = new C9535b(this, 1);
        this.f28878l = c9535b4;
        this.f28879m = b.b(c9535b4);
        C9535b c9535b5 = new C9535b(this, 0);
        this.f28880n = c9535b5;
        this.f28881o = b.b(c9535b5);
    }
}
