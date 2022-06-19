package p193e.p194a.p947k.p948a.p964k;

import com.truecaller.data.entity.Number;
import com.truecaller.videocallerid.p187ui.videoplayer.playing.PlayingBehaviour;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p948a.p964k.AbstractC15816a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.ui.videoplayer.VideoPlayerPresenter$setConfig$1", f = "VideoPlayerPresenter.kt", l = {77, 84, 88}, m = "invokeSuspend")
/* renamed from: e.a.k.a.k.u */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/k/u.class */
public final class C15859u extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f44749e;

    /* renamed from: f */
    public int f44750f;

    /* renamed from: g */
    public final /* synthetic */ C15850r f44751g;

    /* renamed from: h */
    public final /* synthetic */ AbstractC15816a f44752h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15859u(C15850r c15850r, AbstractC15816a abstractC15816a, d dVar) {
        super(2, dVar);
        this.f44751g = c15850r;
        this.f44752h = abstractC15816a;
    }

    /* renamed from: i */
    public final d<s> m18226i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C15859u c15859u = new C15859u(this.f44751g, this.f44752h, dVar);
        c15859u.f44749e = obj;
        return c15859u;
    }

    /* renamed from: k */
    public final Object m18225k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C15859u c15859u = new C15859u(this.f44751g, this.f44752h, dVar);
        c15859u.f44749e = obj;
        return c15859u.m18224s(s.a);
    }

    /* renamed from: s */
    public final Object m18224s(Object obj) {
        i0 i0Var;
        a aVar = a.a;
        int i = this.f44750f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i0Var = (i0) this.f44749e;
            C15850r c15850r = this.f44751g;
            this.f44749e = i0Var;
            this.f44750f = 1;
            if (c15850r.m18245Nj(this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2 && i != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return s.a;
        } else {
            C25225a.m3932a3(obj);
            i0Var = (i0) this.f44749e;
        }
        AbstractC15862x abstractC15862x = (AbstractC15862x) this.f44751g.f57683a;
        if (abstractC15862x != null) {
            abstractC15862x.setAvatarXConfig(this.f44752h.mo18281b());
        }
        AbstractC15816a abstractC15816a = this.f44752h;
        if (abstractC15816a instanceof AbstractC15816a.C15817a) {
            this.f44751g.f44712p.mo18211e(i0Var);
        } else if (abstractC15816a instanceof AbstractC15816a.C15819c) {
            C15850r c15850r2 = this.f44751g;
            AbstractC15816a.C15819c c15819c = (AbstractC15816a.C15819c) abstractC15816a;
            String str = c15819c.f44618b;
            PlayingBehaviour playingBehaviour = c15819c.f44619c;
            String str2 = c15819c.f44622f;
            this.f44749e = null;
            this.f44750f = 2;
            if (C15850r.m18248Kj(c15850r2, str, null, playingBehaviour, false, str2, null, this, 42) == aVar) {
                return aVar;
            }
        } else if (abstractC15816a instanceof AbstractC15816a.C15818b) {
            C15850r c15850r3 = this.f44751g;
            AbstractC15816a.C15818b c15818b = (AbstractC15816a.C15818b) abstractC15816a;
            List<Number> list = c15818b.f44614b;
            PlayingBehaviour playingBehaviour2 = c15818b.f44615c;
            this.f44749e = null;
            this.f44750f = 3;
            if (c15850r3.m18247Lj(list, null, playingBehaviour2, false, this) == aVar) {
                return aVar;
            }
        }
        return s.a;
    }
}
