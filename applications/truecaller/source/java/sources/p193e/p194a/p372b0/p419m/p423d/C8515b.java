package p193e.p194a.p372b0.p419m.p423d;

import com.truecaller.common.payments.senderinfo.SenderInfo;
import java.util.HashMap;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import q3.a.n0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.common.payments.senderinfo.SenderInfoManagerImpl$ensureSenderInfoMap$1", f = "SenderInfoManager.kt", l = {87}, m = "invokeSuspend")
/* renamed from: e.a.b0.m.d.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/m/d/b.class */
public final class C8515b extends i implements p<i0, d<? super HashMap<String, List<? extends SenderInfo>>>, Object> {

    /* renamed from: e */
    public int f26303e;

    /* renamed from: f */
    public final /* synthetic */ C8517d f26304f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8515b(C8517d c8517d, d dVar) {
        super(2, dVar);
        this.f26304f = c8517d;
    }

    /* renamed from: i */
    public final d<s> m28427i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C8515b(this.f26304f, dVar);
    }

    /* renamed from: k */
    public final Object m28426k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C8515b(this.f26304f, dVar).m28425s(s.a);
    }

    /* renamed from: s */
    public final Object m28425s(Object obj) {
        a aVar = a.a;
        int i = this.f26303e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            n0<? extends HashMap<String, List<SenderInfo>>> n0Var = this.f26304f.f26309d;
            if (n0Var == null) {
                l.l("deferredJob");
                throw null;
            }
            this.f26303e = 1;
            Object s = n0Var.s(this);
            obj = s;
            if (s == aVar) {
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
