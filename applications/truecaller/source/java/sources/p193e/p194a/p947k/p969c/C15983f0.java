package p193e.p194a.p947k.p969c;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.C16117k;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.utils.OutgoingVideoProviderImpl$shouldProvideVideoForNumber$2", f = "OutgoingVideoProvider.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.k.c.f0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/f0.class */
public final class C15983f0 extends i implements p<i0, d<? super Boolean>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C15975e0 f45059e;

    /* renamed from: f */
    public final /* synthetic */ String f45060f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15983f0(C15975e0 c15975e0, String str, d dVar) {
        super(2, dVar);
        this.f45059e = c15975e0;
        this.f45060f = str;
    }

    /* renamed from: i */
    public final d<s> m18046i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C15983f0(this.f45059e, this.f45060f, dVar);
    }

    /* renamed from: k */
    public final Object m18045k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C15975e0 c15975e0 = this.f45059e;
        String str = this.f45060f;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        boolean z = false;
        if (c15975e0.m18058e(false)) {
            z = false;
            if (((C16117k) c15975e0.f45037c).m17807d(str)) {
                z = true;
            }
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: s */
    public final Object m18044s(Object obj) {
        C25225a.m3932a3(obj);
        boolean z = false;
        if (this.f45059e.m18058e(false)) {
            z = false;
            if (((C16117k) this.f45059e.f45037c).m17807d(this.f45060f)) {
                z = true;
            }
        }
        return Boolean.valueOf(z);
    }
}
