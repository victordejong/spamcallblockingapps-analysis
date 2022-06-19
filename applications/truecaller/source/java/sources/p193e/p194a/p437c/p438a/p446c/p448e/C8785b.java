package p193e.p194a.p437c.p438a.p446c.p448e;

import com.truecaller.insights.p168ui.domain.DelayedAnalyticLoggerImpl;
import com.truecaller.insights.p168ui.domain.LifeCycleAwareAnalyticsLoggerImpl;
import com.truecaller.insights.p168ui.important.domain.UpdateImportantTabSeenUsecaseImpl;
import com.truecaller.insights.p168ui.important.presentation.BusinessInsightsViewModel;
import com.truecaller.insights.p168ui.important.presentation.LifecycleAwareToolTipControllerImpl;
import com.truecaller.insights.p168ui.important.presentation.SmartSmsBannerLifeCyclePresenterImpl;
import java.util.Collections;
import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p419m.p421b.AbstractC8510a;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p437c.p438a.p439a.C8690g;
import p193e.p194a.p437c.p438a.p439a.p440a.C8684c;
import p193e.p194a.p437c.p438a.p446c.p449f.AbstractC8830y;
import p193e.p194a.p437c.p438a.p446c.p449f.C8793b;
import p193e.p194a.p437c.p438a.p446c.p449f.C8803g;
import p193e.p194a.p437c.p438a.p446c.p449f.C8813j;
import p193e.p194a.p437c.p438a.p446c.p449f.C8819o;
import p193e.p194a.p437c.p438a.p446c.p449f.C8829x;
import p193e.p194a.p437c.p438a.p446c.p451h.AbstractC8852j;
import p193e.p194a.p437c.p438a.p446c.p451h.AbstractC8853k;
import p193e.p194a.p437c.p438a.p446c.p451h.p452l.C8856c;
import p193e.p194a.p437c.p438a.p446c.p451h.p452l.C8857d;
import p193e.p194a.p437c.p438a.p456d.p461d.C8888a;
import p193e.p194a.p437c.p438a.p479i.AbstractC9105a;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p479i.C9116j;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p524b.AbstractC9689h;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p548h.AbstractC10254d;
import p193e.p194a.p437c.p548h.AbstractC10255e;
import p193e.p194a.p437c.p548h.AbstractC10258h;
import p193e.p194a.p437c.p548h.AbstractC10259i;
import p193e.p194a.p437c.p548h.p549k.AbstractC10261a;
import p193e.p194a.p437c.p570j.AbstractC10439b;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p579q.AbstractC10497d;
import p193e.p194a.p437c.p609x.AbstractC10860a;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.c.e.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/e/b.class */
public final class C8785b {

    /* renamed from: a */
    public final AbstractC10261a f26793a;

    /* renamed from: b */
    public final AbstractC8510a f26794b;

    /* renamed from: c */
    public final AbstractC10451a f26795c;

    /* renamed from: d */
    public final C8784a f26796d;

    /* renamed from: e */
    public final AbstractC8412c f26797e;

    /* renamed from: f */
    public final C8785b f26798f = this;

    /* renamed from: g */
    public Provider<LifeCycleAwareAnalyticsLoggerImpl> f26799g;

    /* renamed from: h */
    public Provider<AbstractC9114h> f26800h;

    /* renamed from: i */
    public Provider<AbstractC8852j> f26801i;

    /* renamed from: j */
    public Provider<C8856c> f26802j;

    /* renamed from: k */
    public Provider<C8857d> f26803k;

    /* renamed from: l */
    public Provider<C8684c> f26804l;

    /* renamed from: m */
    public Provider<C8803g> f26805m;

    /* renamed from: n */
    public Provider<C8888a> f26806n;

    /* renamed from: o */
    public Provider<C8793b> f26807o;

    /* renamed from: p */
    public Provider<C8813j> f26808p;

    /* renamed from: q */
    public Provider<UpdateImportantTabSeenUsecaseImpl> f26809q;

    /* renamed from: r */
    public Provider<AbstractC8830y> f26810r;

    /* renamed from: s */
    public Provider<DelayedAnalyticLoggerImpl> f26811s;

    /* renamed from: t */
    public Provider<AbstractC9105a> f26812t;

    /* renamed from: u */
    public Provider<AbstractC8853k> f26813u;

    /* renamed from: v */
    public Provider<BusinessInsightsViewModel> f26814v;

    /* renamed from: w */
    public Provider<AbstractC27040y0> f26815w;

    /* renamed from: x */
    public Provider<C8690g> f26816x;

    /* renamed from: y */
    public Provider<C26986a1.AbstractC26987b> f26817y;

    /* renamed from: e.a.c.a.c.e.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/c/e/b$b.class */
    public static final class C8787b<T> implements Provider<T> {

        /* renamed from: a */
        public final C8785b f26818a;

        /* renamed from: b */
        public final int f26819b;

        public C8787b(C8785b c8785b, int i) {
            this.f26818a = c8785b;
            this.f26819b = i;
        }

        public T get() {
            switch (this.f26819b) {
                case 0:
                    C8785b c8785b = this.f26818a;
                    C8784a c8784a = c8785b.f26796d;
                    AbstractC10258h mo12203t = c8785b.f26793a.mo12203t();
                    Objects.requireNonNull(mo12203t, "Cannot return null from a non-@Nullable component method");
                    AbstractC8511a mo12189u = c8785b.f26794b.mo12189u();
                    Objects.requireNonNull(mo12189u, "Cannot return null from a non-@Nullable component method");
                    AbstractC10860a mo12443b3 = c8785b.f26795c.mo12443b3();
                    Objects.requireNonNull(mo12443b3, "Cannot return null from a non-@Nullable component method");
                    AbstractC9114h abstractC9114h = (AbstractC9114h) c8785b.f26800h.get();
                    AbstractC8852j abstractC8852j = (AbstractC8852j) c8785b.f26801i.get();
                    AbstractC9691j mo12160w0 = c8785b.f26795c.mo12160w0();
                    Objects.requireNonNull(mo12160w0, "Cannot return null from a non-@Nullable component method");
                    C8856c c8856c = (C8856c) c8785b.f26802j.get();
                    C8857d c8857d = (C8857d) c8785b.f26803k.get();
                    AbstractC10060c mo12429c5 = c8785b.f26795c.mo12429c5();
                    Objects.requireNonNull(mo12429c5, "Cannot return null from a non-@Nullable component method");
                    AbstractC10439b mo12795B = c8785b.f26795c.mo12795B();
                    Objects.requireNonNull(mo12795B, "Cannot return null from a non-@Nullable component method");
                    return (T) C10480a.m25988a2(c8784a, mo12203t, mo12189u, mo12443b3, abstractC9114h, abstractC8852j, mo12160w0, c8856c, c8857d, mo12429c5, mo12795B);
                case 1:
                    AbstractC10060c mo12429c52 = this.f26818a.f26795c.mo12429c5();
                    Objects.requireNonNull(mo12429c52, "Cannot return null from a non-@Nullable component method");
                    return (T) new LifeCycleAwareAnalyticsLoggerImpl(mo12429c52);
                case 2:
                    Objects.requireNonNull(this.f26818a.f26796d);
                    return (T) new LifecycleAwareToolTipControllerImpl();
                case 3:
                    C8785b c8785b2 = this.f26818a;
                    C8784a c8784a2 = c8785b2.f26796d;
                    AbstractC10258h mo12203t2 = c8785b2.f26793a.mo12203t();
                    Objects.requireNonNull(mo12203t2, "Cannot return null from a non-@Nullable component method");
                    AbstractC8511a mo12189u2 = c8785b2.f26794b.mo12189u();
                    Objects.requireNonNull(mo12189u2, "Cannot return null from a non-@Nullable component method");
                    AbstractC9114h abstractC9114h2 = (AbstractC9114h) c8785b2.f26800h.get();
                    AbstractC9691j mo12160w02 = c8785b2.f26795c.mo12160w0();
                    Objects.requireNonNull(mo12160w02, "Cannot return null from a non-@Nullable component method");
                    return (T) C10480a.m25943j2(c8784a2, mo12203t2, mo12189u2, abstractC9114h2, mo12160w02);
                case 4:
                    C8785b c8785b3 = this.f26818a;
                    C8784a c8784a3 = c8785b3.f26796d;
                    AbstractC10258h mo12203t3 = c8785b3.f26793a.mo12203t();
                    Objects.requireNonNull(mo12203t3, "Cannot return null from a non-@Nullable component method");
                    AbstractC8511a mo12189u3 = c8785b3.f26794b.mo12189u();
                    Objects.requireNonNull(mo12189u3, "Cannot return null from a non-@Nullable component method");
                    AbstractC9114h abstractC9114h3 = (AbstractC9114h) c8785b3.f26800h.get();
                    AbstractC9691j mo12160w03 = c8785b3.f26795c.mo12160w0();
                    Objects.requireNonNull(mo12160w03, "Cannot return null from a non-@Nullable component method");
                    return (T) C10480a.m25938k2(c8784a3, mo12203t3, mo12189u3, abstractC9114h3, mo12160w03);
                case 5:
                    return (T) new C8690g(Collections.singletonMap(BusinessInsightsViewModel.class, this.f26818a.f26815w));
                case 6:
                    C8785b c8785b4 = this.f26818a;
                    C8803g c8803g = (C8803g) c8785b4.f26805m.get();
                    C8793b c8793b = (C8793b) c8785b4.f26807o.get();
                    C8813j c8813j = (C8813j) c8785b4.f26808p.get();
                    AbstractC10060c mo12429c53 = c8785b4.f26795c.mo12429c5();
                    Objects.requireNonNull(mo12429c53, "Cannot return null from a non-@Nullable component method");
                    C9116j c9116j = new C9116j(mo12429c53);
                    AbstractC10028o mo12751E2 = c8785b4.f26795c.mo12751E2();
                    Objects.requireNonNull(mo12751E2, "Cannot return null from a non-@Nullable component method");
                    AbstractC10259i mo12575R3 = c8785b4.f26793a.mo12575R3();
                    Objects.requireNonNull(mo12575R3, "Cannot return null from a non-@Nullable component method");
                    AbstractC10060c mo12429c54 = c8785b4.f26795c.mo12429c5();
                    Objects.requireNonNull(mo12429c54, "Cannot return null from a non-@Nullable component method");
                    AbstractC9691j mo12160w04 = c8785b4.f26795c.mo12160w0();
                    Objects.requireNonNull(mo12160w04, "Cannot return null from a non-@Nullable component method");
                    AbstractC9686e mo12141x6 = c8785b4.f26795c.mo12141x6();
                    Objects.requireNonNull(mo12141x6, "Cannot return null from a non-@Nullable component method");
                    f mo12793B1 = c8785b4.f26797e.mo12793B1();
                    Objects.requireNonNull(mo12793B1, "Cannot return null from a non-@Nullable component method");
                    C8819o c8819o = new C8819o(mo12751E2, mo12575R3, mo12429c54, mo12160w04, mo12141x6, mo12793B1);
                    AbstractC9691j mo12160w05 = c8785b4.f26795c.mo12160w0();
                    Objects.requireNonNull(mo12160w05, "Cannot return null from a non-@Nullable component method");
                    AbstractC10028o mo12751E22 = c8785b4.f26795c.mo12751E2();
                    Objects.requireNonNull(mo12751E22, "Cannot return null from a non-@Nullable component method");
                    AbstractC8830y abstractC8830y = (AbstractC8830y) c8785b4.f26810r.get();
                    AbstractC9114h abstractC9114h4 = (AbstractC9114h) c8785b4.f26800h.get();
                    AbstractC8852j abstractC8852j2 = (AbstractC8852j) c8785b4.f26801i.get();
                    AbstractC9105a abstractC9105a = (AbstractC9105a) c8785b4.f26812t.get();
                    AbstractC10254d mo12359h4 = c8785b4.f26793a.mo12359h4();
                    Objects.requireNonNull(mo12359h4, "Cannot return null from a non-@Nullable component method");
                    f mo12793B12 = c8785b4.f26797e.mo12793B1();
                    Objects.requireNonNull(mo12793B12, "Cannot return null from a non-@Nullable component method");
                    AbstractC10028o mo12751E23 = c8785b4.f26795c.mo12751E2();
                    Objects.requireNonNull(mo12751E23, "Cannot return null from a non-@Nullable component method");
                    AbstractC9689h mo12618O0 = c8785b4.f26795c.mo12618O0();
                    Objects.requireNonNull(mo12618O0, "Cannot return null from a non-@Nullable component method");
                    f mo12793B13 = c8785b4.f26797e.mo12793B1();
                    Objects.requireNonNull(mo12793B13, "Cannot return null from a non-@Nullable component method");
                    AbstractC10060c mo12429c55 = c8785b4.f26795c.mo12429c5();
                    Objects.requireNonNull(mo12429c55, "Cannot return null from a non-@Nullable component method");
                    return (T) new BusinessInsightsViewModel(c8803g, c8793b, c8813j, c9116j, c8819o, mo12160w05, mo12751E22, abstractC8830y, abstractC9114h4, abstractC8852j2, abstractC9105a, mo12359h4, mo12793B12, new C8829x(mo12751E23, mo12618O0, mo12793B13, mo12429c55), (AbstractC8853k) c8785b4.f26813u.get());
                case 7:
                    C8785b c8785b5 = this.f26818a;
                    C8784a c8784a4 = c8785b5.f26796d;
                    AbstractC10497d mo12431c2 = c8785b5.f26795c.mo12431c2();
                    Objects.requireNonNull(mo12431c2, "Cannot return null from a non-@Nullable component method");
                    f mo12793B14 = c8785b5.f26797e.mo12793B1();
                    Objects.requireNonNull(mo12793B14, "Cannot return null from a non-@Nullable component method");
                    AbstractC9691j mo12160w06 = c8785b5.f26795c.mo12160w0();
                    Objects.requireNonNull(mo12160w06, "Cannot return null from a non-@Nullable component method");
                    AbstractC10255e mo12807A1 = c8785b5.f26793a.mo12807A1();
                    Objects.requireNonNull(mo12807A1, "Cannot return null from a non-@Nullable component method");
                    return (T) C10480a.m25918o2(c8784a4, mo12431c2, mo12793B14, mo12160w06, mo12807A1);
                case 8:
                    C8785b c8785b6 = this.f26818a;
                    C8784a c8784a5 = c8785b6.f26796d;
                    AbstractC10497d mo12431c22 = c8785b6.f26795c.mo12431c2();
                    Objects.requireNonNull(mo12431c22, "Cannot return null from a non-@Nullable component method");
                    f mo12793B15 = c8785b6.f26797e.mo12793B1();
                    Objects.requireNonNull(mo12793B15, "Cannot return null from a non-@Nullable component method");
                    AbstractC9691j mo12160w07 = c8785b6.f26795c.mo12160w0();
                    Objects.requireNonNull(mo12160w07, "Cannot return null from a non-@Nullable component method");
                    AbstractC10028o mo12751E24 = c8785b6.f26795c.mo12751E2();
                    Objects.requireNonNull(mo12751E24, "Cannot return null from a non-@Nullable component method");
                    C8888a c8888a = (C8888a) c8785b6.f26806n.get();
                    AbstractC10060c mo12429c56 = c8785b6.f26795c.mo12429c5();
                    Objects.requireNonNull(mo12429c56, "Cannot return null from a non-@Nullable component method");
                    return (T) C10480a.m25978c2(c8784a5, mo12431c22, mo12793B15, mo12160w07, mo12751E24, c8888a, mo12429c56);
                case 9:
                    C8785b c8785b7 = this.f26818a;
                    C8784a c8784a6 = c8785b7.f26796d;
                    AbstractC10497d mo12431c23 = c8785b7.f26795c.mo12431c2();
                    Objects.requireNonNull(mo12431c23, "Cannot return null from a non-@Nullable component method");
                    f mo12793B16 = c8785b7.f26797e.mo12793B1();
                    Objects.requireNonNull(mo12793B16, "Cannot return null from a non-@Nullable component method");
                    Objects.requireNonNull(c8784a6);
                    l.e(mo12431c23, "businessInsightsManager");
                    l.e(mo12793B16, "ioContext");
                    return (T) new C8888a(mo12431c23, mo12793B16);
                case 10:
                    C8785b c8785b8 = this.f26818a;
                    C8784a c8784a7 = c8785b8.f26796d;
                    AbstractC10497d mo12431c24 = c8785b8.f26795c.mo12431c2();
                    Objects.requireNonNull(mo12431c24, "Cannot return null from a non-@Nullable component method");
                    f mo12793B17 = c8785b8.f26797e.mo12793B1();
                    Objects.requireNonNull(mo12793B17, "Cannot return null from a non-@Nullable component method");
                    AbstractC9691j mo12160w08 = c8785b8.f26795c.mo12160w0();
                    Objects.requireNonNull(mo12160w08, "Cannot return null from a non-@Nullable component method");
                    AbstractC10028o mo12751E25 = c8785b8.f26795c.mo12751E2();
                    Objects.requireNonNull(mo12751E25, "Cannot return null from a non-@Nullable component method");
                    return (T) C10480a.m25968e2(c8784a7, mo12431c24, mo12793B17, mo12160w08, mo12751E25);
                case 11:
                    AbstractC10028o mo12751E26 = this.f26818a.f26795c.mo12751E2();
                    Objects.requireNonNull(mo12751E26, "Cannot return null from a non-@Nullable component method");
                    return (T) new UpdateImportantTabSeenUsecaseImpl(mo12751E26);
                case 12:
                    C8785b c8785b9 = this.f26818a;
                    AbstractC10060c mo12429c57 = c8785b9.f26795c.mo12429c5();
                    Objects.requireNonNull(mo12429c57, "Cannot return null from a non-@Nullable component method");
                    f mo12793B18 = c8785b9.f26797e.mo12793B1();
                    Objects.requireNonNull(mo12793B18, "Cannot return null from a non-@Nullable component method");
                    return (T) new DelayedAnalyticLoggerImpl(mo12429c57, mo12793B18);
                case 13:
                    C8785b c8785b10 = this.f26818a;
                    C8784a c8784a8 = c8785b10.f26796d;
                    f mo12793B19 = c8785b10.f26797e.mo12793B1();
                    Objects.requireNonNull(mo12793B19, "Cannot return null from a non-@Nullable component method");
                    AbstractC10028o mo12751E27 = c8785b10.f26795c.mo12751E2();
                    Objects.requireNonNull(mo12751E27, "Cannot return null from a non-@Nullable component method");
                    Objects.requireNonNull(c8784a8);
                    l.e(mo12793B19, "ioContext");
                    l.e(mo12751E27, "insightConfig");
                    return (T) new SmartSmsBannerLifeCyclePresenterImpl(mo12793B19, mo12751E27);
                default:
                    throw new AssertionError(this.f26819b);
            }
        }
    }

    public C8785b(C8784a c8784a, AbstractC8412c abstractC8412c, AbstractC10451a abstractC10451a, AbstractC10261a abstractC10261a, AbstractC8510a abstractC8510a, C8786a c8786a) {
        this.f26793a = abstractC10261a;
        this.f26794b = abstractC8510a;
        this.f26795c = abstractC10451a;
        this.f26796d = c8784a;
        this.f26797e = abstractC8412c;
        C8787b c8787b = new C8787b(this, 1);
        this.f26799g = c8787b;
        this.f26800h = b.b(c8787b);
        Provider c8787b2 = new C8787b(this, 2);
        this.f26801i = !(c8787b2 instanceof b) ? new b(c8787b2) : c8787b2;
        Provider c8787b3 = new C8787b(this, 3);
        this.f26802j = !(c8787b3 instanceof b) ? new b(c8787b3) : c8787b3;
        Provider c8787b4 = new C8787b(this, 4);
        this.f26803k = !(c8787b4 instanceof b) ? new b(c8787b4) : c8787b4;
        Provider c8787b5 = new C8787b(this, 0);
        this.f26804l = !(c8787b5 instanceof b) ? new b(c8787b5) : c8787b5;
        Provider c8787b6 = new C8787b(this, 7);
        this.f26805m = !(c8787b6 instanceof b) ? new b(c8787b6) : c8787b6;
        Provider c8787b7 = new C8787b(this, 9);
        this.f26806n = !(c8787b7 instanceof b) ? new b(c8787b7) : c8787b7;
        Provider c8787b8 = new C8787b(this, 8);
        this.f26807o = !(c8787b8 instanceof b) ? new b(c8787b8) : c8787b8;
        Provider c8787b9 = new C8787b(this, 10);
        this.f26808p = !(c8787b9 instanceof b) ? new b(c8787b9) : c8787b9;
        C8787b c8787b10 = new C8787b(this, 11);
        this.f26809q = c8787b10;
        this.f26810r = b.b(c8787b10);
        C8787b c8787b11 = new C8787b(this, 12);
        this.f26811s = c8787b11;
        this.f26812t = b.b(c8787b11);
        Provider c8787b12 = new C8787b(this, 13);
        this.f26813u = !(c8787b12 instanceof b) ? new b(c8787b12) : c8787b12;
        C8787b c8787b13 = new C8787b(this, 6);
        this.f26814v = c8787b13;
        this.f26815w = b.b(c8787b13);
        C8787b c8787b14 = new C8787b(this, 5);
        this.f26816x = c8787b14;
        this.f26817y = b.b(c8787b14);
    }
}
