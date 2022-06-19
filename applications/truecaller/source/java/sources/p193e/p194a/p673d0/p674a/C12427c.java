package p193e.p194a.p673d0.p674a;

import com.truecaller.callerid.window.CallerIdPopupQaActivity;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.AbstractC16111h;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.callerid.window.CallerIdPopupQaActivity$deleteIncomingVideoId$1", f = "CallerIdPopupQaActivity.kt", l = {237}, m = "invokeSuspend")
/* renamed from: e.a.d0.a.c */
/* loaded from: classes6-dex2jar.jar:e/a/d0/a/c.class */
public final class C12427c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f36271e;

    /* renamed from: f */
    public final /* synthetic */ CallerIdPopupQaActivity f36272f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12427c(CallerIdPopupQaActivity callerIdPopupQaActivity, d dVar) {
        super(2, dVar);
        this.f36272f = callerIdPopupQaActivity;
    }

    /* renamed from: i */
    public final d<s> m23075i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12427c(this.f36272f, dVar);
    }

    /* renamed from: k */
    public final Object m23074k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12427c(this.f36272f, dVar).m23073s(s.a);
    }

    /* renamed from: s */
    public final Object m23073s(Object obj) {
        a aVar = a.a;
        int i = this.f36271e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            CallerIdPopupQaActivity callerIdPopupQaActivity = this.f36272f;
            int i2 = CallerIdPopupQaActivity.f10618C;
            AbstractC16111h mo12134y = callerIdPopupQaActivity.m35770qa().mo12134y();
            String str = this.f36272f.f10623c;
            this.f36271e = 1;
            if (mo12134y.mo17828r(str, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
