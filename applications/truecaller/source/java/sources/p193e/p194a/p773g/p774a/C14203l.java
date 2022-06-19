package p193e.p194a.p773g.p774a;

import com.truecaller.ads.campaigns.AdCampaign;
import com.truecaller.ads.campaigns.AdCampaigns;
import com.truecaller.data.entity.Contact;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p773g.C14233b;
import p193e.p194a.p773g.p780e.AbstractC14237a;
import p193e.p194a.p773g.p780e.C14240d;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$fetchAndApplyAdCampaigns$1", f = "AfterCallBasePresenter.kt", l = {313}, m = "invokeSuspend")
/* renamed from: e.a.g.a.l */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/l.class */
public final class C14203l extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f40962e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC14205m f40963f;

    @e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$fetchAndApplyAdCampaigns$1$campaigns$1", f = "AfterCallBasePresenter.kt", l = {313}, m = "invokeSuspend")
    /* renamed from: e.a.g.a.l$a */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/l$a.class */
    public static final class C14204a extends i implements p<i0, d<? super AdCampaigns>, Object> {

        /* renamed from: e */
        public int f40964e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14204a(d dVar) {
            super(2, dVar);
            C14203l.this = r5;
        }

        /* renamed from: i */
        public final d<s> m20473i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14204a(dVar);
        }

        /* renamed from: k */
        public final Object m20472k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C14204a(dVar).m20471s(s.a);
        }

        /* renamed from: s */
        public final Object m20471s(Object obj) {
            a aVar = a.a;
            int i = this.f40964e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC14237a abstractC14237a = C14203l.this.f40963f.f40980N;
                this.f40964e = 1;
                Object m20339b = ((C14233b) ((C14240d) abstractC14237a).f41146h).m20339b(this);
                obj = m20339b;
                if (m20339b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14203l(AbstractC14205m abstractC14205m, d dVar) {
        super(2, dVar);
        this.f40963f = abstractC14205m;
    }

    /* renamed from: i */
    public final d<s> m20476i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14203l(this.f40963f, dVar);
    }

    /* renamed from: k */
    public final Object m20475k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C14203l(this.f40963f, dVar).m20474s(s.a);
    }

    /* renamed from: s */
    public final Object m20474s(Object obj) {
        AdCampaign m35991c;
        AdCampaign.Style style;
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f40962e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            Contact contact = this.f40963f.m20451Oj().f11539f;
            if (contact != null && !contact.m35499r0() && !contact.m35492v0() && !contact.m35565G0() && !contact.m35506m0()) {
                f fVar = this.f40963f.f41034z;
                C14204a c14204a = new C14204a(null);
                this.f40962e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c14204a, this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            }
            return sVar;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AdCampaigns adCampaigns = (AdCampaigns) obj;
        if (adCampaigns != null && (m35991c = adCampaigns.m35991c()) != null && (style = m35991c.f9821b) != null) {
            AbstractC14205m abstractC14205m = this.f40963f;
            abstractC14205m.f41012o = style;
            l.d(style, "style");
            abstractC14205m.mo20463Ij(style);
        }
        return sVar;
    }
}
