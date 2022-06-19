package p193e.p194a.p677d3;

import com.truecaller.videocallerid.data.OutgoingVideoDetails;
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
@e(c = "com.truecaller.businesscard.BusinessCardManagerImpl$getOutgoingVideoId$1", f = "BusinessCardManager.kt", l = {59}, m = "invokeSuspend")
/* renamed from: e.a.d3.e */
/* loaded from: classes6-dex2jar.jar:e/a/d3/e.class */
public final class C12586e extends i implements p<i0, d<? super OutgoingVideoDetails>, Object> {

    /* renamed from: e */
    public int f36719e;

    /* renamed from: f */
    public final /* synthetic */ C12587f f36720f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12586e(C12587f c12587f, d dVar) {
        super(2, dVar);
        this.f36720f = c12587f;
    }

    /* renamed from: i */
    public final d<s> m22858i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12586e(this.f36720f, dVar);
    }

    /* renamed from: k */
    public final Object m22857k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12586e(this.f36720f, dVar).m22856s(s.a);
    }

    /* renamed from: s */
    public final Object m22856s(Object obj) {
        OutgoingVideoDetails outgoingVideoDetails;
        a aVar = a.a;
        int i = this.f36719e;
        try {
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f36719e = 1;
                Object mo17838h = ((AbstractC16111h) this.f36720f.f36723c.get()).mo17838h(true, this);
                obj = mo17838h;
                if (mo17838h == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            outgoingVideoDetails = (OutgoingVideoDetails) obj;
        } catch (Exception e) {
            outgoingVideoDetails = null;
        }
        return outgoingVideoDetails;
    }
}
