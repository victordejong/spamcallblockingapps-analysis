package p193e.p194a.p717f;

import com.truecaller.incallui.utils.BlockAction;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.InCallUICallerInfoProviderImpl$getCallerBlockAction$2", f = "InCallUICallerInfoProviderImpl.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.f.i */
/* loaded from: classes10-dex2jar.jar:e/a/f/i.class */
public final class C13715i extends i implements p<i0, d<? super BlockAction>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C13712g f39722e;

    /* renamed from: f */
    public final /* synthetic */ String f39723f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13715i(C13712g c13712g, String str, d dVar) {
        super(2, dVar);
        this.f39722e = c13712g;
        this.f39723f = str;
    }

    /* renamed from: i */
    public final d<s> m21284i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13715i(this.f39722e, this.f39723f, dVar);
    }

    /* renamed from: k */
    public final Object m21283k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C13712g c13712g = this.f39722e;
        String str = this.f39723f;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        return C13712g.m21290a(c13712g, C13712g.m21289b(c13712g, str));
    }

    /* renamed from: s */
    public final Object m21282s(Object obj) {
        C25225a.m3932a3(obj);
        C13712g c13712g = this.f39722e;
        return C13712g.m21290a(c13712g, C13712g.m21289b(c13712g, this.f39723f));
    }
}
