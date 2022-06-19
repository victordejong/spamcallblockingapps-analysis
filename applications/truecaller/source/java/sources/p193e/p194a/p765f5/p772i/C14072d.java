package p193e.p194a.p765f5.p772i;

import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.swish.C4591R;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p712e4.AbstractC13497p;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.f5.i.d */
/* loaded from: classes14-dex2jar.jar:e/a/f5/i/d.class */
public final class C14072d implements AbstractC14071c {

    /* renamed from: a */
    public final f f40683a;

    /* renamed from: b */
    public final C20592g f40684b;

    /* renamed from: c */
    public final a<AbstractC8621z> f40685c;

    /* renamed from: d */
    public final a<AbstractC13497p> f40686d;

    /* renamed from: e */
    public final a<AbstractC6248w> f40687e;

    /* renamed from: f */
    public final a<AbstractC6708t> f40688f;

    /* renamed from: g */
    public final AbstractC19223c0 f40689g;

    /* renamed from: h */
    public final AbstractC6392i0 f40690h;

    @e(c = "com.truecaller.swish.util.SwishMessageSenderImpl$send$1", f = "SwishMessageSender.kt", l = {46}, m = "invokeSuspend")
    /* renamed from: e.a.f5.i.d$a */
    /* loaded from: classes14-dex2jar.jar:e/a/f5/i/d$a.class */
    public static final class C14073a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f40691e;

        /* renamed from: g */
        public final /* synthetic */ String f40693g;

        /* renamed from: h */
        public final /* synthetic */ String f40694h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14073a(String str, String str2, d dVar) {
            super(2, dVar);
            C14072d.this = r5;
            this.f40693g = str;
            this.f40694h = str2;
        }

        /* renamed from: i */
        public final d<s> m20794i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14073a(this.f40693g, this.f40694h, dVar);
        }

        /* renamed from: k */
        public final Object m20793k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C14073a(this.f40693g, this.f40694h, dVar).m20792s(s.a);
        }

        /* renamed from: s */
        public final Object m20792s(Object obj) {
            s sVar = s.a;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f40691e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                Participant m35458a = Participant.m35458a(this.f40693g, (AbstractC8621z) C14072d.this.f40685c.get(), ((AbstractC8621z) C14072d.this.f40685c.get()).mo28189b());
                l.d(m35458a, "Participant.buildFromAdd…t().getDefaultSimToken())");
                this.f40691e = 1;
                Object mo31555u = ((AbstractC6248w) C14072d.this.f40687e.get()).mo31555u(new Participant[]{m35458a}, 1, this);
                obj = mo31555u;
                if (mo31555u == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            Draft draft = (Draft) obj;
            if (!((AbstractC6708t) C14072d.this.f40688f.get()).mo30546p(draft.f13270e)) {
                return sVar;
            }
            Draft.C4194b m35061b = draft.m35061b();
            m35061b.f13288e = C14072d.this.f40689g.mo13768b(C4591R.string.swish_flash_message, this.f40694h);
            m35061b.f13298o = 1;
            m35061b.m35054d();
            Draft m35055c = m35061b.m35055c();
            Object obj2 = C14072d.this.f40686d.get();
            l.d(obj2, "multiSimManager.get()");
            Message m35062a = m35055c.m35062a(((AbstractC13497p) obj2).mo21743b(), "unknown");
            l.d(m35062a, "draft\n                .b…nalyticsContexts.UNKNOWN)");
            ((AbstractC6708t) C14072d.this.f40688f.get()).mo30560b(m35062a, draft.f13270e, false, false).mo11828g();
            return sVar;
        }
    }

    @Inject
    public C14072d(@Named("IO") f fVar, C20592g c20592g, a<AbstractC8621z> aVar, a<AbstractC13497p> aVar2, a<AbstractC6248w> aVar3, a<AbstractC6708t> aVar4, AbstractC19223c0 abstractC19223c0, AbstractC6392i0 abstractC6392i0) {
        l.e(fVar, "asyncContext");
        l.e(c20592g, "featuresRegistry");
        l.e(aVar, "phoneNumberHelper");
        l.e(aVar2, "multiSimManager");
        l.e(aVar3, "readMessageStorage");
        l.e(aVar4, "transportManager");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC6392i0, "settings");
        this.f40683a = fVar;
        this.f40684b = c20592g;
        this.f40685c = aVar;
        this.f40686d = aVar2;
        this.f40687e = aVar3;
        this.f40688f = aVar4;
        this.f40689g = abstractC19223c0;
        this.f40690h = abstractC6392i0;
    }

    /* renamed from: a */
    public void m20795a(String str, String str2) {
        l.e(str, "address");
        l.e(str2, AnalyticsConstants.AMOUNT);
        if (!this.f40684b.m10982W().isEnabled() || !this.f40690h.mo31159P3() || !this.f40690h.mo30989u1()) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(h1.a, this.f40683a, (j0) null, new C14073a(str, str2, null), 2, (Object) null);
    }
}
