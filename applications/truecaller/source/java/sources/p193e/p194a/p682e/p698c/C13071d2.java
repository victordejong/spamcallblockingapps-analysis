package p193e.p194a.p682e.p698c;

import com.truecaller.data.entity.Contact;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1010k5.AbstractC16550a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.ui.details.DetailsHeaderPresenter$maybeShowTimezone$1", f = "DetailsHeaderPresenter.kt", l = {214}, m = "invokeSuspend")
/* renamed from: e.a.e.c.d2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/d2.class */
public final class C13071d2 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f37941e;

    /* renamed from: f */
    public final /* synthetic */ C13066c2 f37942f;

    /* renamed from: g */
    public final /* synthetic */ Contact f37943g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13071d2(C13066c2 c13066c2, Contact contact, d dVar) {
        super(2, dVar);
        this.f37942f = c13066c2;
        this.f37943g = contact;
    }

    /* renamed from: i */
    public final d<s> m22092i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13071d2(this.f37942f, this.f37943g, dVar);
    }

    /* renamed from: k */
    public final Object m22091k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13071d2(this.f37942f, this.f37943g, dVar).m22090s(s.a);
    }

    /* renamed from: s */
    public final Object m22090s(Object obj) {
        AbstractC13058a2 abstractC13058a2;
        a aVar = a.a;
        int i = this.f37941e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC16550a abstractC16550a = this.f37942f.f37928l;
            Contact contact = this.f37943g;
            this.f37941e = 1;
            Object mo17257a = abstractC16550a.mo17257a(contact, this);
            obj = mo17257a;
            if (mo17257a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        if (((Boolean) obj).booleanValue()) {
            String mo17256b = this.f37942f.f37928l.mo17256b(this.f37943g);
            if (mo17256b != null && (abstractC13058a2 = (AbstractC13058a2) this.f37942f.f57683a) != null) {
                abstractC13058a2.setTimezone(mo17256b);
            }
        } else {
            AbstractC13058a2 abstractC13058a22 = (AbstractC13058a2) this.f37942f.f57683a;
            if (abstractC13058a22 != null) {
                abstractC13058a22.mo22065z();
            }
        }
        return s.a;
    }
}
