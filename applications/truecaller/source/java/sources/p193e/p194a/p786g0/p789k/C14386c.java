package p193e.p194a.p786g0.p789k;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p678d4.AbstractC12603e;
import s1.g;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.g0.k.c */
/* loaded from: classes14-dex2jar.jar:e/a/g0/k/c.class */
public final class C14386c implements AbstractC14385b {

    /* renamed from: a */
    public final g f41522a = C25225a.m3978P1(new C14387a());

    /* renamed from: b */
    public final g f41523b = C25225a.m3978P1(new C14388b());

    /* renamed from: c */
    public final AbstractC12597c f41524c;

    /* renamed from: d */
    public final AbstractC14389d f41525d;

    /* renamed from: e */
    public final AbstractC14389d f41526e;

    /* renamed from: e.a.g0.k.c$a */
    /* loaded from: classes14-dex2jar.jar:e/a/g0/k/c$a.class */
    public static final class C14387a extends m implements a<AbstractC12603e> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14387a() {
            super(0);
            C14386c.this = r4;
        }

        public Object invoke() {
            return (AbstractC12603e) i.C(C14386c.this.f41524c.mo22841c());
        }
    }

    /* renamed from: e.a.g0.k.c$b */
    /* loaded from: classes14-dex2jar.jar:e/a/g0/k/c$b.class */
    public static final class C14388b extends m implements a<AbstractC14389d> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14388b() {
            super(0);
            C14386c.this = r4;
        }

        public Object invoke() {
            AbstractC12603e m20151a = C14386c.this.m20151a();
            return l.a(m20151a, AbstractC12603e.C12604a.f36737c) ? C14386c.this.f41525d : l.a(m20151a, AbstractC12603e.C12605b.f36738c) ? C14386c.this.f41526e : null;
        }
    }

    @Inject
    public C14386c(AbstractC12597c abstractC12597c, @Named("pu+gmsc") AbstractC14389d abstractC14389d, @Named("pu+hmsc") AbstractC14389d abstractC14389d2) {
        l.e(abstractC12597c, "mobileServicesAvailabilityProvider");
        l.e(abstractC14389d, "gmsCaptchaProvider");
        l.e(abstractC14389d2, "hmsCaptchaProvider");
        this.f41524c = abstractC12597c;
        this.f41525d = abstractC14389d;
        this.f41526e = abstractC14389d2;
    }

    /* renamed from: a */
    public final AbstractC12603e m20151a() {
        return (AbstractC12603e) this.f41522a.getValue();
    }

    /* renamed from: b */
    public final AbstractC14389d m20150b() {
        return (AbstractC14389d) this.f41523b.getValue();
    }
}
