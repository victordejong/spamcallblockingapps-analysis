package p193e.p194a.p947k.p948a.p962i;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.ui.settings.VideoCallerIdSettingViewPresenter$onWindowVisible$1", f = "VideoCallerIdSettingViewPresenter.kt", l = {75, 76}, m = "invokeSuspend")
/* renamed from: e.a.k.a.i.e */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/i/e.class */
public final class C15794e extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f44551e;

    /* renamed from: f */
    public final /* synthetic */ C15795f f44552f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15794e(C15795f c15795f, d dVar) {
        super(2, dVar);
        this.f44552f = c15795f;
    }

    /* renamed from: i */
    public final d<s> m18299i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C15794e(this.f44552f, dVar);
    }

    /* renamed from: k */
    public final Object m18298k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C15794e(this.f44552f, dVar).m18297s(s.a);
    }

    /* renamed from: s */
    public final Object m18297s(Object obj) {
        a aVar = a.a;
        int i = this.f44551e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C15795f c15795f = this.f44552f;
            this.f44551e = 1;
            if (c15795f.m18296Ij(this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return s.a;
        } else {
            C25225a.m3932a3(obj);
        }
        C15795f c15795f2 = this.f44552f;
        this.f44551e = 2;
        if (c15795f2.m18295Jj(this) == aVar) {
            return aVar;
        }
        return s.a;
    }
}
