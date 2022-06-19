package p193e.p194a.p677d3;

import com.truecaller.api.services.callerid.p135v1.model.SignatureMetadata;
import com.truecaller.api.services.callerid.p135v1.model.SignedBusinessCard;
import com.truecaller.businesscard.BusinessCardBackgroundWorker;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.t0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d3.i */
/* loaded from: classes6-dex2jar.jar:e/a/d3/i.class */
public final class C12590i implements AbstractC12589h {

    /* renamed from: a */
    public final C20592g f36724a;

    /* renamed from: b */
    public final AbstractC12583b f36725b;

    /* renamed from: c */
    public final AbstractC19222c f36726c;

    @e(c = "com.truecaller.businesscard.BusinessCardRepositoryImpl$getBusinessCard$1", f = "BusinessCardRepository.kt", l = {34}, m = "invokeSuspend")
    /* renamed from: e.a.d3.i$a */
    /* loaded from: classes6-dex2jar.jar:e/a/d3/i$a.class */
    public static final class C12591a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f36727e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12591a(d dVar) {
            super(2, dVar);
            C12590i.this = r5;
        }

        /* renamed from: i */
        public final d<s> m22849i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12591a(dVar);
        }

        /* renamed from: k */
        public final Object m22848k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12591a(dVar).m22847s(s.a);
        }

        /* renamed from: s */
        public final Object m22847s(Object obj) {
            a aVar = s.a;
            a aVar2 = a.a;
            int i = this.f36727e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C12590i c12590i = C12590i.this;
                this.f36727e = 1;
                c12590i.mo22851c(this);
                if (aVar == aVar2) {
                    return aVar2;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return aVar;
        }
    }

    @Inject
    public C12590i(@Named("features_registry") C20592g c20592g, AbstractC12583b abstractC12583b, AbstractC19222c abstractC19222c) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC12583b, "businessCardIOUtils");
        l.e(abstractC19222c, "clock");
        this.f36724a = c20592g;
        this.f36725b = abstractC12583b;
        this.f36726c = abstractC19222c;
    }

    @Override // p193e.p194a.p677d3.AbstractC12589h
    /* renamed from: a */
    public SignedBusinessCard mo22853a() {
        SignedBusinessCard signedBusinessCard = null;
        s1.a.a.a.v0.f.d.w2(h1.a, t0.d, (j0) null, new C12591a(null), 2, (Object) null);
        if (this.f36724a.m10967f0().isEnabled() && !m22850d()) {
            signedBusinessCard = this.f36725b.mo22860a();
        }
        return signedBusinessCard;
    }

    @Override // p193e.p194a.p677d3.AbstractC12589h
    /* renamed from: b */
    public void mo22852b() {
        C26702l m1431n = C26702l.m1431n(AbstractApplicationC8442a.m28551L());
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        C26842r.C26843a m1268f = new C26842r.C26843a(BusinessCardBackgroundWorker.class).m1268f(0L, TimeUnit.SECONDS);
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        m1268f.f75127c.f74911j = new C26825d(c26826a);
        m1431n.m1279i("BusinessCardBackgroundWorker", enumC26832h, m1268f.m1272b());
    }

    @Override // p193e.p194a.p677d3.AbstractC12589h
    /* renamed from: c */
    public Object mo22851c(d<? super s> dVar) {
        if (this.f36724a.m10967f0().isEnabled() && m22850d()) {
            mo22852b();
        }
        return s.a;
    }

    /* renamed from: d */
    public final boolean m22850d() {
        SignedBusinessCard mo22860a = this.f36725b.mo22860a();
        boolean z = true;
        if (mo22860a != null) {
            int seconds = (int) TimeUnit.MILLISECONDS.toSeconds(this.f36726c.mo13819c());
            SignatureMetadata metadata = mo22860a.getMetadata();
            l.d(metadata, "it.metadata");
            z = seconds > metadata.getExpireDate();
        }
        return z;
    }
}
