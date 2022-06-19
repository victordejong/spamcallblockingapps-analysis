package p193e.p194a.p773g.p774a;

import com.truecaller.data.entity.HistoryEvent;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p773g.p785j.AbstractC14268a0;
import p193e.p194a.p773g.p785j.C14270b0;
import p193e.p194a.p773g.p785j.C14272c0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.acs.ui.AfterCallBasePresenter$searchForContact$1", f = "AfterCallBasePresenter.kt", l = {1227}, m = "invokeSuspend")
/* renamed from: e.a.g.a.w */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/w.class */
public final class C14229w extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f41112e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC14205m f41113f;

    /* renamed from: g */
    public final /* synthetic */ HistoryEvent f41114g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14229w(AbstractC14205m abstractC14205m, HistoryEvent historyEvent, d dVar) {
        super(2, dVar);
        this.f41113f = abstractC14205m;
        this.f41114g = historyEvent;
    }

    /* renamed from: i */
    public final d<s> m20352i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14229w(this.f41113f, this.f41114g, dVar);
    }

    /* renamed from: k */
    public final Object m20351k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C14229w(this.f41113f, this.f41114g, dVar).m20350s(s.a);
    }

    /* renamed from: s */
    public final Object m20350s(Object obj) {
        int i;
        Object obj2 = s.a;
        Object obj3 = a.a;
        int i2 = this.f41112e;
        if (i2 == 0) {
            C25225a.m3932a3(obj);
            AbstractC14268a0 abstractC14268a0 = this.f41113f.f40983Q;
            int i3 = this.f41114g.f11550q;
            if (i3 == 1) {
                i = 2;
            } else if (i3 != 2) {
                i = 6;
                if (i3 != 3) {
                    i = 6;
                    if (i3 != 5) {
                        i = 6;
                        if (i3 != 6) {
                            i = 6;
                            if (i3 != 10) {
                                i = 999;
                            }
                        }
                    }
                }
            } else {
                i = 1;
            }
            String str = this.f41114g.f11536c;
            l.d(str, "event.rawNumber");
            String str2 = this.f41114g.f11537d;
            this.f41112e = 1;
            C14272c0 c14272c0 = (C14272c0) abstractC14268a0;
            Object a4 = s1.a.a.a.v0.f.d.a4(c14272c0.f41315b, new C14270b0(c14272c0, i, str, str2, null), this);
            if (a4 != obj3) {
                a4 = obj2;
            }
            if (a4 == obj3) {
                return obj3;
            }
        } else if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC14198h abstractC14198h = (AbstractC14198h) this.f41113f.f57683a;
        if (abstractC14198h != null) {
            abstractC14198h.mo20480zy();
        }
        return obj2;
    }
}
