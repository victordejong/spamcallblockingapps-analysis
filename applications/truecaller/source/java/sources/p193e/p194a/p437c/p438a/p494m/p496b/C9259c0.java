package p193e.p194a.p437c.p438a.p494m.p496b;

import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p525b0.AbstractC9713d;
import p193e.p194a.p437c.p579q.C10516k;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.qa.presentation.UpdatesTestingViewModel$getRecentUpdates$2", f = "UpdatesTestingViewModel.kt", l = {28}, m = "invokeSuspend")
/* renamed from: e.a.c.a.m.b.c0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/c0.class */
public final class C9259c0 extends i implements p<i0, d<? super List<? extends C10516k>>, Object> {

    /* renamed from: e */
    public int f28181e;

    /* renamed from: f */
    public final /* synthetic */ C9289x f28182f;

    /* renamed from: g */
    public final /* synthetic */ String f28183g;

    /* renamed from: h */
    public final /* synthetic */ int f28184h;

    /* renamed from: i */
    public final /* synthetic */ long f28185i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9259c0(C9289x c9289x, String str, int i, long j, d dVar) {
        super(2, dVar);
        this.f28182f = c9289x;
        this.f28183g = str;
        this.f28184h = i;
        this.f28185i = j;
    }

    /* renamed from: i */
    public final d<s> m27774i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C9259c0(this.f28182f, this.f28183g, this.f28184h, this.f28185i, dVar);
    }

    /* renamed from: k */
    public final Object m27773k(Object obj, Object obj2) {
        return m27774i(obj, (d) obj2).m27772s(s.a);
    }

    /* renamed from: s */
    public final Object m27772s(Object obj) {
        a aVar = a.a;
        int i = this.f28181e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC9713d abstractC9713d = this.f28182f.f28262a;
            String str = this.f28183g;
            int i2 = this.f28184h;
            long j = this.f28185i;
            this.f28181e = 1;
            Object mo27188b = abstractC9713d.mo27188b(str, i2, j, this);
            obj = mo27188b;
            if (mo27188b == aVar) {
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
