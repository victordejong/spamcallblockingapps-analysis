package p193e.p194a.p673d0.p674a;

import com.truecaller.data.entity.Contact;
import java.util.Iterator;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p673d0.C12560v;
import p193e.p194a.p673d0.p674a.AbstractC12464x;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.b;
import s1.z.c.j;
@e(c = "com.truecaller.callerid.window.CallerIdWindowPresenter$buildInfoLines$1", f = "CallerIdWindowPresenter.kt", l = {214}, m = "invokeSuspend")
/* renamed from: e.a.d0.a.n */
/* loaded from: classes6-dex2jar.jar:e/a/d0/a/n.class */
public final class C12447n extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f36373e;

    /* renamed from: f */
    public final /* synthetic */ C12439m f36374f;

    /* renamed from: g */
    public final /* synthetic */ C12560v f36375g;

    /* renamed from: e.a.d0.a.n$a */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/n$a.class */
    public static final /* synthetic */ class C12448a extends j implements l<AbstractC12464x.C12466b, s> {
        public C12448a(AbstractC12438l abstractC12438l) {
            super(1, abstractC12438l, AbstractC12438l.class, "setInfoLineOne", "setInfoLineOne(Lcom/truecaller/callerid/window/InfoLine$Regular;)V", 0);
        }

        /* renamed from: d */
        public Object m22996d(Object obj) {
            ((AbstractC12438l) ((b) this).b).mo23040Y5((AbstractC12464x.C12466b) obj);
            return s.a;
        }
    }

    /* renamed from: e.a.d0.a.n$b */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/n$b.class */
    public static final /* synthetic */ class C12449b extends j implements a<s> {
        public C12449b(AbstractC12438l abstractC12438l) {
            super(0, abstractC12438l, AbstractC12438l.class, "hideInfoLineOne", "hideInfoLineOne()V", 0);
        }

        public Object invoke() {
            ((AbstractC12438l) ((b) this).b).mo23023s5();
            return s.a;
        }
    }

    /* renamed from: e.a.d0.a.n$c */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/n$c.class */
    public static final /* synthetic */ class C12450c extends j implements l<AbstractC12464x.C12466b, s> {
        public C12450c(AbstractC12438l abstractC12438l) {
            super(1, abstractC12438l, AbstractC12438l.class, "setInfoLineTwo", "setInfoLineTwo(Lcom/truecaller/callerid/window/InfoLine$Regular;)V", 0);
        }

        /* renamed from: d */
        public Object m22995d(Object obj) {
            ((AbstractC12438l) ((b) this).b).mo23020v5((AbstractC12464x.C12466b) obj);
            return s.a;
        }
    }

    /* renamed from: e.a.d0.a.n$d */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/n$d.class */
    public static final /* synthetic */ class C12451d extends j implements a<s> {
        public C12451d(AbstractC12438l abstractC12438l) {
            super(0, abstractC12438l, AbstractC12438l.class, "hideInfoLineTwo", "hideInfoLineTwo()V", 0);
        }

        public Object invoke() {
            ((AbstractC12438l) ((b) this).b).mo23028f6();
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12447n(C12439m c12439m, C12560v c12560v, d dVar) {
        super(2, dVar);
        this.f36374f = c12439m;
        this.f36375g = c12560v;
    }

    /* renamed from: i */
    public final d<s> m22999i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C12447n(this.f36374f, this.f36375g, dVar);
    }

    /* renamed from: k */
    public final Object m22998k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        return new C12447n(this.f36374f, this.f36375g, dVar).m22997s(s.a);
    }

    /* renamed from: s */
    public final Object m22997s(Object obj) {
        boolean z;
        boolean z2;
        Contact contact;
        s1.w.j.a aVar = s1.w.j.a.a;
        int i = this.f36373e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C12439m c12439m = this.f36374f;
            C12560v c12560v = this.f36375g;
            this.f36373e = 1;
            Object m23013Kj = c12439m.m23013Kj(c12560v, this);
            obj = m23013Kj;
            if (m23013Kj == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        List<AbstractC12464x> K0 = s1.u.i.K0((Iterable) obj, 2);
        AbstractC12438l abstractC12438l = (AbstractC12438l) this.f36374f.f57683a;
        if (abstractC12438l != null) {
            C18334g0.m15233e(abstractC12438l, (AbstractC12464x) s1.u.i.G(K0, 0), new C12448a(abstractC12438l), new C12449b(abstractC12438l));
            C18334g0.m15233e(abstractC12438l, (AbstractC12464x) s1.u.i.G(K0, 1), new C12450c(abstractC12438l), new C12451d(abstractC12438l));
            if (!K0.isEmpty()) {
                for (AbstractC12464x abstractC12464x : K0) {
                    if (!Boolean.valueOf(!(abstractC12464x instanceof AbstractC12464x.C12467c)).booleanValue()) {
                        z = false;
                        break;
                    }
                }
            }
            z = true;
            if (z) {
                abstractC12438l.mo23066B5();
            }
            Contact contact2 = this.f36375g.f36680l;
            boolean z3 = (contact2 != null && contact2.m35565G0()) || ((contact = this.f36375g.f36680l) != null && contact.m35492v0());
            if (!K0.isEmpty()) {
                Iterator it = K0.iterator();
                while (true) {
                    z2 = true;
                    if (!it.hasNext()) {
                        break;
                    } else if (!Boolean.valueOf(!(((AbstractC12464x) it.next()) instanceof AbstractC12464x.C12465a)).booleanValue()) {
                        z2 = false;
                        break;
                    }
                }
            } else {
                z2 = true;
            }
            if (z2 || z3) {
                abstractC12438l.mo23044U5();
            }
        }
        return s.a;
    }
}
