package p193e.p194a.p673d0.p674a;

import com.truecaller.data.entity.CallContextMessage;
import com.truecaller.data.entity.Number;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
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
@e(c = "com.truecaller.callerid.window.CallerIdWindowPresenter$maybeShowOutgoingCallContext$1", f = "CallerIdWindowPresenter.kt", l = {534}, m = "invokeSuspend")
/* renamed from: e.a.d0.a.q */
/* loaded from: classes6-dex2jar.jar:e/a/d0/a/q.class */
public final class C12454q extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f36384e;

    /* renamed from: f */
    public final /* synthetic */ C12439m f36385f;

    /* renamed from: g */
    public final /* synthetic */ C12560v f36386g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12454q(C12439m c12439m, C12560v c12560v, d dVar) {
        super(2, dVar);
        this.f36385f = c12439m;
        this.f36386g = c12560v;
    }

    /* renamed from: i */
    public final d<s> m22988i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12454q(this.f36385f, this.f36386g, dVar);
    }

    /* renamed from: k */
    public final Object m22987k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12454q(this.f36385f, this.f36386g, dVar).m22986s(s.a);
    }

    /* renamed from: s */
    public final Object m22986s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f36384e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            Number number = this.f36386g.f36669a;
            l.d(number, "callState.number");
            String m35479e = number.m35479e();
            if (m35479e != null) {
                AbstractC18765c abstractC18765c = this.f36385f.f36302A;
                this.f36384e = 1;
                Object mo14514k = abstractC18765c.mo14514k(m35479e, this);
                obj = mo14514k;
                if (mo14514k == aVar) {
                    return aVar;
                }
            }
            return sVar;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        CallContextMessage callContextMessage = (CallContextMessage) obj;
        if (callContextMessage == null) {
            AbstractC12438l abstractC12438l = (AbstractC12438l) this.f36385f.f57683a;
            if (abstractC12438l != null) {
                abstractC12438l.mo23047R5();
            }
        } else {
            AbstractC12438l abstractC12438l2 = (AbstractC12438l) this.f36385f.f57683a;
            if (abstractC12438l2 != null) {
                abstractC12438l2.mo23058I5(callContextMessage.f11498c, 5000L, false, true);
            }
        }
        return sVar;
    }
}
