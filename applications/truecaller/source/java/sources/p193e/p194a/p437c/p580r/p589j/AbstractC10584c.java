package p193e.p194a.p437c.p580r.p589j;

import com.truecaller.insights.models.DomainOrigin;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p523a0.AbstractC9625e;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.r.j.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/c.class */
public abstract class AbstractC10584c extends AbstractC10592f {

    /* renamed from: b */
    public final AbstractC9625e f31573b;

    /* renamed from: c */
    public final f f31574c;

    /* renamed from: d */
    public final f f31575d;

    /* renamed from: e */
    public final AbstractC10060c f31576e;

    /* renamed from: f */
    public final long f31577f;

    /* renamed from: g */
    public final DomainOrigin f31578g;

    /* renamed from: e.a.c.r.j.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/c$a.class */
    public interface AbstractC10585a {
        /* renamed from: I */
        AbstractC9625e mo12699I();

        @Named("IO")
        /* renamed from: a */
        f mo11651a();

        @Named("UI")
        /* renamed from: e */
        f mo11644e();

        /* renamed from: n */
        AbstractC10060c mo12282n();
    }

    @e(c = "com.truecaller.insights.models.smartcards.ActionUseCase$invoke$1", f = "ActionUseCases.kt", l = {77}, m = "invokeSuspend")
    /* renamed from: e.a.c.r.j.c$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/c$b.class */
    public static final class C10586b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f31579e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10586b(d dVar) {
            super(2, dVar);
            AbstractC10584c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m25776i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10586b(dVar);
        }

        /* renamed from: k */
        public final Object m25775k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10586b(dVar).m25774s(s.a);
        }

        /* renamed from: s */
        public final Object m25774s(Object obj) {
            a aVar = a.a;
            int i = this.f31579e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10584c abstractC10584c = AbstractC10584c.this;
                this.f31579e = 1;
                if (abstractC10584c.mo25534a(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC10584c.this.mo25754e();
            return s.a;
        }
    }

    public AbstractC10584c(long j, DomainOrigin domainOrigin) {
        l.e(domainOrigin, "origin");
        this.f31577f = j;
        this.f31578g = domainOrigin;
        AbstractC10585a abstractC10585a = (AbstractC10585a) C22128a.m8726C1(AbstractC10585a.class, "EntryPointAccessors.from…), Injection::class.java)");
        this.f31573b = abstractC10585a.mo12699I();
        this.f31574c = abstractC10585a.mo11651a();
        this.f31576e = abstractC10585a.mo12282n();
        this.f31575d = abstractC10585a.mo11644e();
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: d */
    public void mo25772d() {
        s1.a.a.a.v0.f.d.w2(m25773c(), (f) null, (j0) null, new C10586b(null), 3, (Object) null);
    }

    /* renamed from: e */
    public abstract void mo25754e();
}
