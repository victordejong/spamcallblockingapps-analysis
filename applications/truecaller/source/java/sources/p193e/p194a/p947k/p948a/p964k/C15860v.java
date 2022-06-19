package p193e.p194a.p947k.p948a.p964k;

import com.truecaller.videocallerid.p187ui.videoplayer.playing.PlayingBehaviour;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p948a.p964k.AbstractC15836l;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.ui.videoplayer.VideoPlayerPresenter$setConfig$2", f = "VideoPlayerPresenter.kt", l = {106, 113}, m = "invokeSuspend")
/* renamed from: e.a.k.a.k.v */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/k/v.class */
public final class C15860v extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f44753e;

    /* renamed from: f */
    public final /* synthetic */ C15850r f44754f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC15836l f44755g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15860v(C15850r c15850r, AbstractC15836l abstractC15836l, d dVar) {
        super(2, dVar);
        this.f44754f = c15850r;
        this.f44755g = abstractC15836l;
    }

    /* renamed from: i */
    public final d<s> m18223i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C15860v(this.f44754f, this.f44755g, dVar);
    }

    /* renamed from: k */
    public final Object m18222k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C15860v(this.f44754f, this.f44755g, dVar).m18221s(s.a);
    }

    /* renamed from: s */
    public final Object m18221s(Object obj) {
        a aVar = a.a;
        int i = this.f44753e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C15850r c15850r = this.f44754f;
            this.f44753e = 1;
            if (c15850r.m18245Nj(this) == aVar) {
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
        AbstractC15836l abstractC15836l = this.f44755g;
        if (abstractC15836l instanceof AbstractC15836l.C15839c) {
            C15850r c15850r2 = this.f44754f;
            AbstractC15836l.C15839c c15839c = (AbstractC15836l.C15839c) abstractC15836l;
            String str = c15839c.f44671b;
            String str2 = c15839c.f44672c;
            PlayingBehaviour mo18262b = abstractC15836l.mo18262b();
            AbstractC15836l.C15839c c15839c2 = (AbstractC15836l.C15839c) this.f44755g;
            boolean z = c15839c2.f44673d;
            String str3 = c15839c2.f44674e;
            this.f44753e = 2;
            if (C15850r.m18248Kj(c15850r2, str, str2, mo18262b, z, str3, null, this, 32) == aVar) {
                return aVar;
            }
        } else if (abstractC15836l instanceof AbstractC15836l.C15838b) {
            i0 i0Var = this.f44754f;
            Objects.requireNonNull((AbstractC15836l.C15838b) abstractC15836l);
            Objects.requireNonNull((AbstractC15836l.C15838b) this.f44755g);
            i0Var.f44712p.mo18213c(i0Var, null, null, this.f44755g.mo18262b());
        } else if (abstractC15836l instanceof AbstractC15836l.C15837a) {
            i0 i0Var2 = this.f44754f;
            AbstractC15836l.C15837a c15837a = (AbstractC15836l.C15837a) abstractC15836l;
            i0Var2.f44712p.mo18212d(i0Var2, c15837a.f44667b, c15837a.f44668c, abstractC15836l.mo18262b());
        }
        return s.a;
    }
}
