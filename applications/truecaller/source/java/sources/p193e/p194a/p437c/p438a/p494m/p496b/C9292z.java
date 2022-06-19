package p193e.p194a.p437c.p438a.p494m.p496b;

import com.truecaller.insights.models.pdo.ParsedDataObject;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p606w.AbstractC10750a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.qa.presentation.UpdatesTestingViewModel$getAllPdos$2", f = "UpdatesTestingViewModel.kt", l = {44}, m = "invokeSuspend")
/* renamed from: e.a.c.a.m.b.z */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/z.class */
public final class C9292z extends i implements p<i0, d<? super List<? extends ParsedDataObject>>, Object> {

    /* renamed from: e */
    public int f28274e;

    /* renamed from: f */
    public final /* synthetic */ C9289x f28275f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9292z(C9289x c9289x, d dVar) {
        super(2, dVar);
        this.f28275f = c9289x;
    }

    /* renamed from: i */
    public final d<s> m27741i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C9292z(this.f28275f, dVar);
    }

    /* renamed from: k */
    public final Object m27740k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C9292z(this.f28275f, dVar).m27739s(s.a);
    }

    /* renamed from: s */
    public final Object m27739s(Object obj) {
        a aVar = a.a;
        int i = this.f28274e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            Date time = new GregorianCalendar(2019, 0, 1).getTime();
            Date date = new Date();
            AbstractC10750a abstractC10750a = this.f28275f.f28265d;
            l.d(time, "minDate");
            this.f28274e = 1;
            Object mo25665b = abstractC10750a.mo25665b(time, date, this);
            obj = mo25665b;
            if (mo25665b == aVar) {
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
