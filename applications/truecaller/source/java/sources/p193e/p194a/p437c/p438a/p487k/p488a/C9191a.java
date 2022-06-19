package p193e.p194a.p437c.p438a.p487k.p488a;

import com.truecaller.insights.p168ui.domain.LifeCycleAwareAnalyticsLoggerImpl;
import com.truecaller.insights.p168ui.important.presentation.LifecycleAwareToolTipControllerImpl;
import com.truecaller.insights.p168ui.markedimportantpage.presentation.MarkedImportantViewModel;
import java.util.Collections;
import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p437c.p438a.p439a.C8690g;
import p193e.p194a.p437c.p438a.p446c.p451h.AbstractC8852j;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p479i.C9116j;
import p193e.p194a.p437c.p438a.p487k.p489b.C9199b;
import p193e.p194a.p437c.p438a.p487k.p489b.C9206e;
import p193e.p194a.p437c.p438a.p487k.p491d.C9215b;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p548h.AbstractC10254d;
import p193e.p194a.p437c.p548h.AbstractC10257g;
import p193e.p194a.p437c.p548h.AbstractC10258h;
import p193e.p194a.p437c.p548h.p549k.AbstractC10261a;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.k.a.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/k/a/a.class */
public final class C9191a {

    /* renamed from: a */
    public final C9194b f27938a;

    /* renamed from: b */
    public final AbstractC10261a f27939b;

    /* renamed from: c */
    public final AbstractC8412c f27940c;

    /* renamed from: d */
    public final AbstractC10451a f27941d;

    /* renamed from: e */
    public final C9191a f27942e = this;

    /* renamed from: f */
    public Provider<C9199b> f27943f;

    /* renamed from: g */
    public Provider<C9206e> f27944g;

    /* renamed from: h */
    public Provider<LifeCycleAwareAnalyticsLoggerImpl> f27945h;

    /* renamed from: i */
    public Provider<AbstractC9114h> f27946i;

    /* renamed from: j */
    public Provider<MarkedImportantViewModel> f27947j;

    /* renamed from: k */
    public Provider<AbstractC27040y0> f27948k;

    /* renamed from: l */
    public Provider<C8690g> f27949l;

    /* renamed from: m */
    public Provider<C26986a1.AbstractC26987b> f27950m;

    /* renamed from: n */
    public Provider<AbstractC8852j> f27951n;

    /* renamed from: o */
    public Provider<C9215b> f27952o;

    /* renamed from: e.a.c.a.k.a.a$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/k/a/a$b.class */
    public static final class C9193b<T> implements Provider<T> {

        /* renamed from: a */
        public final C9191a f27953a;

        /* renamed from: b */
        public final int f27954b;

        public C9193b(C9191a c9191a, int i) {
            this.f27953a = c9191a;
            this.f27954b = i;
        }

        public T get() {
            switch (this.f27954b) {
                case 0:
                    return (T) new C8690g(Collections.singletonMap(MarkedImportantViewModel.class, this.f27953a.f27948k));
                case 1:
                    C9191a c9191a = this.f27953a;
                    C9199b c9199b = (C9199b) c9191a.f27943f.get();
                    C9206e c9206e = (C9206e) c9191a.f27944g.get();
                    AbstractC9114h abstractC9114h = (AbstractC9114h) c9191a.f27946i.get();
                    AbstractC10060c mo12429c5 = c9191a.f27941d.mo12429c5();
                    Objects.requireNonNull(mo12429c5, "Cannot return null from a non-@Nullable component method");
                    C9116j c9116j = new C9116j(mo12429c5);
                    AbstractC10028o mo12751E2 = c9191a.f27941d.mo12751E2();
                    Objects.requireNonNull(mo12751E2, "Cannot return null from a non-@Nullable component method");
                    AbstractC9691j mo12160w0 = c9191a.f27941d.mo12160w0();
                    Objects.requireNonNull(mo12160w0, "Cannot return null from a non-@Nullable component method");
                    AbstractC10254d mo12359h4 = c9191a.f27939b.mo12359h4();
                    Objects.requireNonNull(mo12359h4, "Cannot return null from a non-@Nullable component method");
                    return (T) new MarkedImportantViewModel(c9199b, c9206e, abstractC9114h, c9116j, mo12751E2, mo12160w0, mo12359h4);
                case 2:
                    C9191a c9191a2 = this.f27953a;
                    C9194b c9194b = c9191a2.f27938a;
                    AbstractC10257g mo12709H3 = c9191a2.f27939b.mo12709H3();
                    Objects.requireNonNull(mo12709H3, "Cannot return null from a non-@Nullable component method");
                    f mo12793B1 = c9191a2.f27940c.mo12793B1();
                    Objects.requireNonNull(mo12793B1, "Cannot return null from a non-@Nullable component method");
                    AbstractC9691j mo12160w02 = c9191a2.f27941d.mo12160w0();
                    Objects.requireNonNull(mo12160w02, "Cannot return null from a non-@Nullable component method");
                    Objects.requireNonNull(c9194b);
                    l.e(mo12709H3, "messageFetcher");
                    l.e(mo12793B1, "ioContext");
                    l.e(mo12160w02, "insightsStatusProvider");
                    return (T) new C9199b(mo12709H3, mo12793B1, mo12160w02, c9194b.f27955a);
                case 3:
                    C9191a c9191a3 = this.f27953a;
                    C9194b c9194b2 = c9191a3.f27938a;
                    AbstractC10257g mo12709H32 = c9191a3.f27939b.mo12709H3();
                    Objects.requireNonNull(mo12709H32, "Cannot return null from a non-@Nullable component method");
                    f mo12793B12 = c9191a3.f27940c.mo12793B1();
                    Objects.requireNonNull(mo12793B12, "Cannot return null from a non-@Nullable component method");
                    Objects.requireNonNull(c9194b2);
                    l.e(mo12709H32, "messageFetcher");
                    l.e(mo12793B12, "ioContext");
                    return (T) new C9206e(mo12709H32, mo12793B12);
                case 4:
                    AbstractC10060c mo12429c52 = this.f27953a.f27941d.mo12429c5();
                    Objects.requireNonNull(mo12429c52, "Cannot return null from a non-@Nullable component method");
                    return (T) new LifeCycleAwareAnalyticsLoggerImpl(mo12429c52);
                case 5:
                    C9191a c9191a4 = this.f27953a;
                    C9194b c9194b3 = c9191a4.f27938a;
                    AbstractC9114h abstractC9114h2 = (AbstractC9114h) c9191a4.f27946i.get();
                    AbstractC10258h mo12203t = c9191a4.f27939b.mo12203t();
                    Objects.requireNonNull(mo12203t, "Cannot return null from a non-@Nullable component method");
                    AbstractC8852j abstractC8852j = (AbstractC8852j) c9191a4.f27951n.get();
                    C20592g mo12343i5 = c9191a4.f27940c.mo12343i5();
                    Objects.requireNonNull(mo12343i5, "Cannot return null from a non-@Nullable component method");
                    Objects.requireNonNull(c9194b3);
                    l.e(abstractC9114h2, "lifeCycleAwareAnalyticsLogger");
                    l.e(mo12203t, "messageLocator");
                    l.e(abstractC8852j, "toolTipController");
                    l.e(mo12343i5, "featuresRegistry");
                    return (T) new C9215b(abstractC9114h2, mo12203t, abstractC8852j, mo12343i5);
                case 6:
                    Objects.requireNonNull(this.f27953a.f27938a);
                    return (T) new LifecycleAwareToolTipControllerImpl();
                default:
                    throw new AssertionError(this.f27954b);
            }
        }
    }

    public C9191a(C9194b c9194b, AbstractC10451a abstractC10451a, AbstractC10261a abstractC10261a, AbstractC8412c abstractC8412c, C9192a c9192a) {
        this.f27938a = c9194b;
        this.f27939b = abstractC10261a;
        this.f27940c = abstractC8412c;
        this.f27941d = abstractC10451a;
        Provider c9193b = new C9193b(this, 2);
        Object obj = b.c;
        this.f27943f = !(c9193b instanceof b) ? new b(c9193b) : c9193b;
        Provider c9193b2 = new C9193b(this, 3);
        this.f27944g = !(c9193b2 instanceof b) ? new b(c9193b2) : c9193b2;
        C9193b c9193b3 = new C9193b(this, 4);
        this.f27945h = c9193b3;
        this.f27946i = b.b(c9193b3);
        C9193b c9193b4 = new C9193b(this, 1);
        this.f27947j = c9193b4;
        this.f27948k = b.b(c9193b4);
        C9193b c9193b5 = new C9193b(this, 0);
        this.f27949l = c9193b5;
        this.f27950m = b.b(c9193b5);
        Provider c9193b6 = new C9193b(this, 6);
        this.f27951n = !(c9193b6 instanceof b) ? new b(c9193b6) : c9193b6;
        Provider c9193b7 = new C9193b(this, 5);
        this.f27952o = !(c9193b7 instanceof b) ? new b(c9193b7) : c9193b7;
    }
}
