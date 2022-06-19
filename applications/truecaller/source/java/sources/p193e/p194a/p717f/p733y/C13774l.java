package p193e.p194a.p717f.p733y;

import android.telecom.Call;
import com.truecaller.incallui.utils.BlockAction;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p717f.C13712g;
import p193e.p194a.p717f.C13715i;
import p193e.p194a.p717f.p734z.AbstractC13826k;
import q3.a.i0;
import q3.a.j;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
@e(c = "com.truecaller.incallui.service.InCallUIServicePresenter$getBlockedAction$1", f = "InCallUIServicePresenter.kt", l = {199}, m = "invokeSuspend")
/* renamed from: e.a.f.y.l */
/* loaded from: classes10-dex2jar.jar:e/a/f/y/l.class */
public final class C13774l extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f39929e;

    /* renamed from: f */
    public final /* synthetic */ C13778o f39930f;

    /* renamed from: g */
    public final /* synthetic */ l f39931g;

    @e(c = "com.truecaller.incallui.service.InCallUIServicePresenter$getBlockedAction$1$action$1$1", f = "InCallUIServicePresenter.kt", l = {200}, m = "invokeSuspend")
    /* renamed from: e.a.f.y.l$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/y/l$a.class */
    public static final class C13775a extends i implements p<i0, d<? super BlockAction>, Object> {

        /* renamed from: e */
        public int f39932e;

        /* renamed from: f */
        public final /* synthetic */ Call f39933f;

        /* renamed from: g */
        public final /* synthetic */ C13774l f39934g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13775a(Call call, d dVar, C13774l c13774l) {
            super(2, dVar);
            this.f39933f = call;
            this.f39934g = c13774l;
        }

        /* renamed from: i */
        public final d<s> m21141i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C13775a(this.f39933f, dVar, this.f39934g);
        }

        /* renamed from: k */
        public final Object m21140k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C13775a(this.f39933f, dVar, this.f39934g).m21139s(s.a);
        }

        /* renamed from: s */
        public final Object m21139s(Object obj) {
            a aVar = a.a;
            int i = this.f39932e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC13826k abstractC13826k = this.f39934g.f39930f.f39962q;
                String m15626b0 = C17891a1.C17902k.m15626b0(this.f39933f);
                this.f39932e = 1;
                C13712g c13712g = (C13712g) abstractC13826k;
                Object a4 = s1.a.a.a.v0.f.d.a4(c13712g.f39705a, new C13715i(c13712g, m15626b0, null), this);
                obj = a4;
                if (a4 == aVar) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13774l(C13778o c13778o, l lVar, d dVar) {
        super(2, dVar);
        this.f39930f = c13778o;
        this.f39931g = lVar;
    }

    /* renamed from: i */
    public final d<s> m21144i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C13774l(this.f39930f, this.f39931g, dVar);
    }

    /* renamed from: k */
    public final Object m21143k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        return new C13774l(this.f39930f, this.f39931g, dVar).m21142s(s.a);
    }

    /* renamed from: s */
    public final Object m21142s(Object obj) {
        BlockAction blockAction;
        a aVar = a.a;
        int i = this.f39929e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC13773k abstractC13773k = (AbstractC13773k) this.f39930f.f57683a;
            blockAction = null;
            if (abstractC13773k != null) {
                Call mo21153r = abstractC13773k.mo21153r();
                blockAction = null;
                if (mo21153r != null) {
                    C13775a c13775a = new C13775a(mo21153r, null, this);
                    this.f39929e = 1;
                    Object c = j.c(1000L, c13775a, this);
                    obj = c;
                    if (c == aVar) {
                        return aVar;
                    }
                }
            }
            this.f39931g.d(blockAction);
            return s.a;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        blockAction = (BlockAction) obj;
        this.f39931g.d(blockAction);
        return s.a;
    }
}
