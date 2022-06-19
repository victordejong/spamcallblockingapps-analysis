package p193e.p194a.p717f;

import android.app.Activity;
import com.truecaller.incallui.callui.InCallUIActivity;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.InCallUIActivityListener$onForeground$1", f = "InCallUIActivityListener.kt", l = {67}, m = "invokeSuspend")
/* renamed from: e.a.f.c */
/* loaded from: classes10-dex2jar.jar:e/a/f/c.class */
public final class C13708c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f39691e;

    /* renamed from: f */
    public final /* synthetic */ Activity f39692f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13708c(Activity activity, d dVar) {
        super(2, dVar);
        this.f39692f = activity;
    }

    /* renamed from: i */
    public final d<s> m21296i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13708c(this.f39692f, dVar);
    }

    /* renamed from: k */
    public final Object m21295k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13708c(this.f39692f, dVar).m21294s(s.a);
    }

    /* renamed from: s */
    public final Object m21294s(Object obj) {
        a aVar = a.a;
        int i = this.f39691e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f39691e = 1;
            if (s1.a.a.a.v0.f.d.D0(10L, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        Activity activity = this.f39692f;
        activity.startActivity(InCallUIActivity.f12407g.m35302a(activity, null));
        return s.a;
    }
}
