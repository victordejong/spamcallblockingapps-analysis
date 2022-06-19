package p193e.p194a.p717f;

import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.SpamCategoryModel;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p288a0.AbstractC7395n;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.InCallUICallerInfoProviderImpl$searchCallerInternally$2$1$spamCategory$1", f = "InCallUICallerInfoProviderImpl.kt", l = {111}, m = "invokeSuspend")
/* renamed from: e.a.f.k */
/* loaded from: classes10-dex2jar.jar:e/a/f/k.class */
public final class C13717k extends i implements p<i0, d<? super SpamCategoryModel>, Object> {

    /* renamed from: e */
    public int f39733e;

    /* renamed from: f */
    public final /* synthetic */ C13718l f39734f;

    /* renamed from: g */
    public final /* synthetic */ Contact f39735g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13717k(C13718l c13718l, Contact contact, d dVar) {
        super(2, dVar);
        this.f39734f = c13718l;
        this.f39735g = contact;
    }

    /* renamed from: i */
    public final d<s> m21278i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13717k(this.f39734f, this.f39735g, dVar);
    }

    /* renamed from: k */
    public final Object m21277k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13717k(this.f39734f, this.f39735g, dVar).m21276s(s.a);
    }

    /* renamed from: s */
    public final Object m21276s(Object obj) {
        a aVar = a.a;
        int i = this.f39733e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            Object obj2 = this.f39734f.f39737b.f39713i.get();
            l.d(obj2, "spamCategoryFetcher.get()");
            AbstractC7395n abstractC7395n = (AbstractC7395n) obj2;
            Contact contact = this.f39735g;
            this.f39733e = 1;
            Object m16093Y = C17422k.m16093Y(abstractC7395n, contact, this);
            obj = m16093Y;
            if (m16093Y == aVar) {
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
