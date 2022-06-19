package p193e.p194a.p717f.p718a.p719a.p720o;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p717f.C13724r;
import p193e.p194a.p717f.p734z.AbstractC13863x;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.incoming.rejectmessage.RejectMessagePresenter$rejectTruecallerMessage$1", f = "RejectMessagePresenter.kt", l = {48}, m = "invokeSuspend")
/* renamed from: e.a.f.a.a.o.e */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/a/o/e.class */
public final class C13552e extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f39300e;

    /* renamed from: f */
    public final /* synthetic */ C13553f f39301f;

    /* renamed from: g */
    public final /* synthetic */ String f39302g;

    /* renamed from: h */
    public final /* synthetic */ Integer f39303h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13552e(C13553f c13553f, String str, Integer num, d dVar) {
        super(2, dVar);
        this.f39301f = c13553f;
        this.f39302g = str;
        this.f39303h = num;
    }

    /* renamed from: i */
    public final d<s> m21633i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13552e(this.f39301f, this.f39302g, this.f39303h, dVar);
    }

    /* renamed from: k */
    public final Object m21632k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13552e(this.f39301f, this.f39302g, this.f39303h, dVar).m21631s(s.a);
    }

    /* renamed from: s */
    public final Object m21631s(Object obj) {
        a aVar = a.a;
        int i = this.f39300e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC13863x abstractC13863x = this.f39301f.f39306f;
            String str = this.f39302g;
            Integer num = this.f39303h;
            this.f39300e = 1;
            if (((C13724r) abstractC13863x).m21246b(str, num, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        this.f39301f.f39305e.mo21186u(false);
        return s.a;
    }
}
