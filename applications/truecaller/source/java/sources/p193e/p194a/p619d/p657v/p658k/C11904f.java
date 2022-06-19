package p193e.p194a.p619d.p657v.p658k;

import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.C11464r;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11514a;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11522e;
import p193e.p194a.p619d.p637c0.p640x1.C11519b;
import p193e.p194a.p619d.p663x.p664q.AbstractC12236h;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.v.k.f */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/f.class */
public final class C11904f implements i0, AbstractC11897e {

    /* renamed from: a */
    public final AbstractC11522e f34968a;

    /* renamed from: b */
    public final C11464r<C11519b> f34969b;

    /* renamed from: c */
    public final AbstractC12236h f34970c;

    /* renamed from: d */
    public final /* synthetic */ i0 f34971d;

    @e(c = "com.truecaller.voip.groupcall.action.ChangeGroupCallAudioRouteImpl$changeAudioRoute$1", f = "ChangeGroupCallAudioRoute.kt", l = {29}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.k.f$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/f$a.class */
    public static final class C11905a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f34972e;

        /* renamed from: g */
        public final /* synthetic */ AbstractC11514a f34974g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11905a(AbstractC11514a abstractC11514a, d dVar) {
            super(2, dVar);
            C11904f.this = r5;
            this.f34974g = abstractC11514a;
        }

        /* renamed from: i */
        public final d<s> m23853i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11905a(this.f34974g, dVar);
        }

        /* renamed from: k */
        public final Object m23852k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11905a(this.f34974g, dVar).m23851s(s.a);
        }

        /* renamed from: s */
        public final Object m23851s(Object obj) {
            a aVar = a.a;
            int i = this.f34972e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C11904f c11904f = C11904f.this;
                AbstractC11522e abstractC11522e = c11904f.f34968a;
                AbstractC11514a abstractC11514a = this.f34974g;
                AbstractC12236h abstractC12236h = c11904f.f34970c;
                this.f34972e = 1;
                if (abstractC11522e.mo24554d(abstractC11514a, abstractC12236h, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.groupcall.action.ChangeGroupCallAudioRouteImpl$toggleSpeaker$1", f = "ChangeGroupCallAudioRoute.kt", l = {39}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.k.f$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/f$b.class */
    public static final class C11906b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f34975e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11906b(d dVar) {
            super(2, dVar);
            C11904f.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23850i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11906b(dVar);
        }

        /* renamed from: k */
        public final Object m23849k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11906b(dVar).m23848s(s.a);
        }

        /* renamed from: s */
        public final Object m23848s(Object obj) {
            a aVar = a.a;
            int i = this.f34975e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC11514a.C11516b c11516b = C11904f.this.f34969b.getValue().f33811a instanceof AbstractC11514a.C11517c ? AbstractC11514a.C11516b.f33808a : AbstractC11514a.C11517c.f33809a;
                C11904f c11904f = C11904f.this;
                AbstractC11522e abstractC11522e = c11904f.f34968a;
                AbstractC12236h abstractC12236h = c11904f.f34970c;
                this.f34975e = 1;
                if (abstractC11522e.mo24554d(c11516b, abstractC12236h, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @Inject
    public C11904f(i0 i0Var, AbstractC11522e abstractC11522e, C11464r<C11519b> c11464r, AbstractC12236h abstractC12236h) {
        l.e(i0Var, "coroutineScope");
        l.e(abstractC11522e, "audioUtil");
        l.e(c11464r, "audioState");
        l.e(abstractC12236h, "rtcManager");
        this.f34971d = i0Var;
        this.f34968a = abstractC11522e;
        this.f34969b = c11464r;
        this.f34970c = abstractC12236h;
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11897e
    /* renamed from: c */
    public p1 mo23855c(AbstractC11514a abstractC11514a) {
        l.e(abstractC11514a, "route");
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11905a(abstractC11514a, null), 3, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f34971d.getCoroutineContext();
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11897e
    /* renamed from: q */
    public p1 mo23854q() {
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11906b(null), 3, (Object) null);
    }
}
