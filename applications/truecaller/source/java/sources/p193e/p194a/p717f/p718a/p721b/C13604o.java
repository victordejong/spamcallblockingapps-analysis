package p193e.p194a.p717f.p718a.p721b;

import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1010k5.AbstractC16550a;
import p193e.p194a.p717f.C13727t;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter$maybeShowTimezone$1", f = "OngoingCallPresenter.kt", l = {410}, m = "invokeSuspend")
/* renamed from: e.a.f.a.b.o */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/o.class */
public final class C13604o extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f39441e;

    /* renamed from: f */
    public final /* synthetic */ C13590j f39442f;

    /* renamed from: g */
    public final /* synthetic */ Contact f39443g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13604o(C13590j c13590j, Contact contact, d dVar) {
        super(2, dVar);
        this.f39442f = c13590j;
        this.f39443g = contact;
    }

    /* renamed from: i */
    public final d<s> m21509i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13604o(this.f39442f, this.f39443g, dVar);
    }

    /* renamed from: k */
    public final Object m21508k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13604o(this.f39442f, this.f39443g, dVar).m21507s(s.a);
    }

    /* renamed from: s */
    public final Object m21507s(Object obj) {
        AbstractC13589i abstractC13589i;
        a aVar = a.a;
        int i = this.f39441e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C13727t c13727t = this.f39442f.f39383w;
            Contact contact = this.f39443g;
            this.f39441e = 1;
            Object mo17257a = ((AbstractC16550a) c13727t.f39768a.get()).mo17257a(contact, this);
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
            C13727t c13727t2 = this.f39442f.f39383w;
            Contact contact2 = this.f39443g;
            Objects.requireNonNull(c13727t2);
            l.e(contact2, AnalyticsConstants.CONTACT);
            String mo17256b = ((AbstractC16550a) c13727t2.f39768a.get()).mo17256b(contact2);
            if (mo17256b != null && (abstractC13589i = (AbstractC13589i) this.f39442f.f57683a) != null) {
                abstractC13589i.setTimezone(mo17256b);
            }
        } else {
            AbstractC13589i abstractC13589i2 = (AbstractC13589i) this.f39442f.f57683a;
            if (abstractC13589i2 != null) {
                abstractC13589i2.mo21407z();
            }
        }
        return s.a;
    }
}
