package p193e.p194a.p673d0.p674a;

import com.truecaller.contextcall.p160ui.reasonpicker.ondemand.OnDemandMessageSource;
import com.truecaller.contextcall.utils.SecondCallContext;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p673d0.C12560v;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.callerid.window.CallerIdWindowPresenter$maybeShowCallReasonPickerView$1", f = "CallerIdWindowPresenter.kt", l = {564}, m = "invokeSuspend")
/* renamed from: e.a.d0.a.p */
/* loaded from: classes6-dex2jar.jar:e/a/d0/a/p.class */
public final class C12453p extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f36379e;

    /* renamed from: f */
    public Object f36380f;

    /* renamed from: g */
    public int f36381g;

    /* renamed from: h */
    public final /* synthetic */ C12439m f36382h;

    /* renamed from: i */
    public final /* synthetic */ C12560v f36383i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12453p(C12439m c12439m, C12560v c12560v, d dVar) {
        super(2, dVar);
        this.f36382h = c12439m;
        this.f36383i = c12560v;
    }

    /* renamed from: i */
    public final d<s> m22991i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12453p(this.f36382h, this.f36383i, dVar);
    }

    /* renamed from: k */
    public final Object m22990k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12453p(this.f36382h, this.f36383i, dVar).m22989s(s.a);
    }

    /* renamed from: s */
    public final Object m22989s(Object obj) {
        Contact contact;
        String str;
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f36381g;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C12560v c12560v = this.f36383i;
            contact = c12560v.f36680l;
            Number number = c12560v.f36669a;
            l.d(number, "callState.number");
            str = number.m35479e();
            C12439m c12439m = this.f36382h;
            boolean z = false;
            if (c12439m.f36314d != EnumC12426b.OUTGOING || contact == null || str == null) {
                AbstractC12438l abstractC12438l = (AbstractC12438l) c12439m.f57683a;
                if (abstractC12438l != null) {
                    abstractC12438l.mo23057J5(false);
                }
                return sVar;
            }
            AbstractC18765c abstractC18765c = c12439m.f36302A;
            if (contact.m35574A0() || contact.m35533a0() > 0) {
                z = true;
            }
            SecondCallContext.C3790b c3790b = new SecondCallContext.C3790b(str, z, C17891a1.C17902k.m15668J0(contact), this.f36382h.f36313P.m23072a(new Integer(this.f36383i.f36670b), this.f36383i.f36673e));
            this.f36379e = contact;
            this.f36380f = str;
            this.f36381g = 1;
            obj = abstractC18765c.mo14531A(c3790b, this);
            if (obj == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            str = (String) this.f36380f;
            contact = (Contact) this.f36379e;
            C25225a.m3932a3(obj);
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        AbstractC12438l abstractC12438l2 = (AbstractC12438l) this.f36382h.f57683a;
        if (abstractC12438l2 != null) {
            String m35489x = contact.m35489x();
            l.d(m35489x, "contact.displayNameOrNumber");
            abstractC12438l2.mo23052O3(new OnDemandMessageSource.MidCall(str, m35489x, "callerId"));
            abstractC12438l2.mo23057J5(booleanValue);
        }
        return sVar;
    }
}
