package p193e.p194a.p804h;

import com.truecaller.calling.VideoCallerIdExistenceState;
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
@e(c = "com.truecaller.calling.CallingCleverTapUtilsImpl$getVideoCallerIdExistsSettingState$1", f = "CallingCleverTapUtils.kt", l = {176}, m = "invokeSuspend")
/* renamed from: e.a.h.j */
/* loaded from: classes2-dex2jar.jar:e/a/h/j.class */
public final class C14695j extends i implements p<i0, d<? super C14698k0>, Object> {

    /* renamed from: e */
    public int f42194e;

    /* renamed from: f */
    public final /* synthetic */ C14697k f42195f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14695j(C14697k c14697k, d dVar) {
        super(2, dVar);
        this.f42195f = c14697k;
    }

    /* renamed from: i */
    public final d<s> m19755i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14695j(this.f42195f, dVar);
    }

    /* renamed from: k */
    public final Object m19754k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C14695j(this.f42195f, dVar).m19753s(s.a);
    }

    /* renamed from: s */
    public final Object m19753s(Object obj) {
        VideoCallerIdExistenceState videoCallerIdExistenceState;
        a aVar = a.a;
        int i = this.f42194e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            if (!this.f42195f.f42201f.mo17820z()) {
                videoCallerIdExistenceState = VideoCallerIdExistenceState.NOT_SUPPORTED;
                return new C14698k0(videoCallerIdExistenceState);
            }
            AbstractC16111h abstractC16111h = this.f42195f.f42201f;
            this.f42194e = 1;
            Object mo17839g = abstractC16111h.mo17839g(this);
            obj = mo17839g;
            if (mo17839g == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        videoCallerIdExistenceState = ((Boolean) obj).booleanValue() ? VideoCallerIdExistenceState.YES : VideoCallerIdExistenceState.NO;
        return new C14698k0(videoCallerIdExistenceState);
    }
}
