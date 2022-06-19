package p193e.p194a.p619d.p637c0.p638a2;

import com.truecaller.common.network.KnownDomain;
import e.m.f.a.o;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p619d.p637c0.p639b2.C11383a;
import p193e.p194a.p751f4.p753b.AbstractC13954b;
import q3.a.i0;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.c0.a2.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/a2/c.class */
public final class C11371c implements AbstractC11369a {

    /* renamed from: a */
    public final g f33414a = C25225a.m3978P1(C11375d.f33427b);

    /* renamed from: b */
    public final g f33415b = C25225a.m3978P1(new C11370b(this));

    /* renamed from: c */
    public final f f33416c;

    /* renamed from: d */
    public final C11383a f33417d;

    /* renamed from: e */
    public final AbstractC13954b f33418e;

    /* renamed from: f */
    public final AbstractC8621z f33419f;

    @e(c = "com.truecaller.voip.util.crossdc.VoipTargetDomainResolverImpl$resolveByNumber$2", f = "VoipTargetDomainResolver.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.a2.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/a2/c$a.class */
    public static final class C11372a extends i implements p<i0, d<? super AbstractC8371e>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f33421f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11372a(String str, d dVar) {
            super(2, dVar);
            C11371c.this = r5;
            this.f33421f = str;
        }

        /* renamed from: i */
        public final d<s> m24768i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11372a(this.f33421f, dVar);
        }

        /* renamed from: k */
        public final Object m24767k(Object obj, Object obj2) {
            o mo28185f;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C11371c c11371c = C11371c.this;
            String str = this.f33421f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            C11383a c11383a = c11371c.f33417d;
            Objects.requireNonNull(c11383a);
            AbstractC8371e.C8372a c8372a = AbstractC8371e.C8372a.f25732a;
            if (str != null && (mo28185f = c11383a.f33449a.mo28185f(str)) != null) {
                c8372a = c11383a.f33450b.mo28192b(mo28185f);
            }
            return c8372a;
        }

        /* renamed from: s */
        public final Object m24766s(Object obj) {
            o mo28185f;
            C25225a.m3932a3(obj);
            C11383a c11383a = C11371c.this.f33417d;
            String str = this.f33421f;
            Objects.requireNonNull(c11383a);
            AbstractC8371e.C8372a c8372a = AbstractC8371e.C8372a.f25732a;
            if (str != null && (mo28185f = c11383a.f33449a.mo28185f(str)) != null) {
                c8372a = c11383a.f33450b.mo28192b(mo28185f);
            }
            return c8372a;
        }
    }

    @e(c = "com.truecaller.voip.util.crossdc.VoipTargetDomainResolverImpl$resolveByVoipId$2", f = "VoipTargetDomainResolver.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.a2.c$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/a2/c$b.class */
    public static final class C11373b extends i implements p<i0, d<? super AbstractC8371e>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f33423f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11373b(String str, d dVar) {
            super(2, dVar);
            C11371c.this = r5;
            this.f33423f = str;
        }

        /* renamed from: i */
        public final d<s> m24765i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11373b(this.f33423f, dVar);
        }

        /* renamed from: k */
        public final Object m24764k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C11371c c11371c = C11371c.this;
            String str = this.f33423f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            KnownDomain knownDomain = c11371c.m24769f().get(str);
            return knownDomain == null ? AbstractC8371e.C8372a.f25732a : new AbstractC8371e.C8373b(knownDomain);
        }

        /* renamed from: s */
        public final Object m24763s(Object obj) {
            C25225a.m3932a3(obj);
            KnownDomain knownDomain = C11371c.this.m24769f().get(this.f33423f);
            return knownDomain == null ? AbstractC8371e.C8372a.f25732a : new AbstractC8371e.C8373b(knownDomain);
        }
    }

    @e(c = "com.truecaller.voip.util.crossdc.VoipTargetDomainResolverImpl$resolveCrossDcIsoCode$2", f = "VoipTargetDomainResolver.kt", l = {71}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.a2.c$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/a2/c$c.class */
    public static final class C11374c extends i implements p<i0, d<? super String>, Object> {

        /* renamed from: e */
        public int f33424e;

        /* renamed from: g */
        public final /* synthetic */ String f33426g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11374c(String str, d dVar) {
            super(2, dVar);
            C11371c.this = r5;
            this.f33426g = str;
        }

        /* renamed from: i */
        public final d<s> m24762i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11374c(this.f33426g, dVar);
        }

        /* renamed from: k */
        public final Object m24761k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11374c(this.f33426g, dVar).m24760s(s.a);
        }

        /* renamed from: s */
        public final Object m24760s(Object obj) {
            a aVar = a.a;
            int i = this.f33424e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                String str = this.f33426g;
                if (str == null) {
                    return null;
                }
                C11371c c11371c = C11371c.this;
                this.f33424e = 1;
                Object mo24770e = c11371c.mo24770e(str, this);
                obj = mo24770e;
                if (mo24770e == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (obj instanceof AbstractC8371e.C8372a) {
                return null;
            }
            return C11371c.this.f33419f.mo28180k(this.f33426g);
        }
    }

    @Inject
    public C11371c(@Named("CPU") f fVar, C11383a c11383a, AbstractC13954b abstractC13954b, AbstractC8621z abstractC8621z) {
        l.e(fVar, "cpuContext");
        l.e(c11383a, "crossDcUtilWrapper");
        l.e(abstractC13954b, "domainResolver");
        l.e(abstractC8621z, "phoneNumberHelper");
        this.f33416c = fVar;
        this.f33417d = c11383a;
        this.f33418e = abstractC13954b;
        this.f33419f = abstractC8621z;
    }

    @Override // p193e.p194a.p619d.p637c0.p638a2.AbstractC11369a
    /* renamed from: a */
    public void mo24774a(String str) {
        l.e(str, "voipId");
        m24769f().put(str, (KnownDomain) this.f33415b.getValue());
    }

    @Override // p193e.p194a.p619d.p637c0.p638a2.AbstractC11369a
    /* renamed from: b */
    public boolean mo24773b(String str) {
        l.e(str, "voipId");
        return m24769f().get(str) != null;
    }

    @Override // p193e.p194a.p619d.p637c0.p638a2.AbstractC11369a
    /* renamed from: c */
    public Object mo24772c(String str, d<? super AbstractC8371e> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f33416c, new C11373b(str, null), dVar);
    }

    @Override // p193e.p194a.p619d.p637c0.p638a2.AbstractC11369a
    /* renamed from: d */
    public Object mo24771d(String str, d<? super String> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f33416c, new C11374c(str, null), dVar);
    }

    @Override // p193e.p194a.p619d.p637c0.p638a2.AbstractC11369a
    /* renamed from: e */
    public Object mo24770e(String str, d<? super AbstractC8371e> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f33416c, new C11372a(str, null), dVar);
    }

    /* renamed from: f */
    public final ConcurrentHashMap<String, KnownDomain> m24769f() {
        return (ConcurrentHashMap) this.f33414a.getValue();
    }
}
