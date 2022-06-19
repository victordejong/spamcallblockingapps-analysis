package p193e.p194a.p773g.p774a;

import com.truecaller.data.entity.Contact;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p294b.p336i.AbstractC7919c;
import p193e.p194a.p773g.p774a.p775a.AbstractC14104h;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$maybeSetCallMeBackContactDetails$2$1", f = "AfterCallBasePresenter.kt", l = {557}, m = "invokeSuspend")
/* renamed from: e.a.g.a.r */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/r.class */
public final class C14223r extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f41098e;

    /* renamed from: f */
    public final /* synthetic */ String f41099f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC14205m f41100g;

    /* renamed from: h */
    public final /* synthetic */ Contact f41101h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14223r(String str, d dVar, AbstractC14205m abstractC14205m, Contact contact) {
        super(2, dVar);
        this.f41099f = str;
        this.f41100g = abstractC14205m;
        this.f41101h = contact;
    }

    /* renamed from: i */
    public final d<s> m20370i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14223r(this.f41099f, dVar, this.f41100g, this.f41101h);
    }

    /* renamed from: k */
    public final Object m20369k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C14223r(this.f41099f, dVar, this.f41100g, this.f41101h).m20368s(s.a);
    }

    /* renamed from: s */
    public final Object m20368s(Object obj) {
        AbstractC14198h abstractC14198h;
        a aVar = a.a;
        int i = this.f41098e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC14205m abstractC14205m = this.f41100g;
            boolean z = ((AbstractC14198h) abstractC14205m.f57683a) instanceof AbstractC14104h;
            AbstractC7919c abstractC7919c = abstractC14205m.f40971C0;
            String str = this.f41099f;
            l.d(str, "normalizedNumber");
            String str2 = this.f41100g.m20451Oj().f11537d;
            this.f41098e = 1;
            Object mo29121a = abstractC7919c.mo29121a(str, z, str2, this);
            obj = mo29121a;
            if (mo29121a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        if (((Boolean) obj).booleanValue() && (abstractC14198h = (AbstractC14198h) this.f41100g.f57683a) != null) {
            Contact contact = this.f41101h;
            String str3 = this.f41099f;
            l.d(str3, "normalizedNumber");
            abstractC14198h.mo20537ag(contact, str3, this.f41100g.m20451Oj().f11537d);
            abstractC14198h.mo20575Fw();
            abstractC14198h.mo20509ot();
        }
        return s.a;
    }
}
