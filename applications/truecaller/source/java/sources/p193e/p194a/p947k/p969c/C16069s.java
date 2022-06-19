package p193e.p194a.p947k.p969c;

import com.google.android.exoplayer2.SimpleExoPlayer;
import p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24833r;
import p193e.p1577m.p1578a.p1596c.p1637r1.C24832q;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p947k.p969c.AbstractC16088u;
import q3.a.w2.v;
import q3.a.w2.x;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
@e(c = "com.truecaller.videocallerid.utils.ExoPlayerUtilImpl$getVideoEvents$1", f = "ExoPlayerUtil.kt", l = {296}, m = "invokeSuspend")
/* renamed from: e.a.k.c.s */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/s.class */
public final class C16069s extends i implements p<x<? super AbstractC16088u>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f45290e;

    /* renamed from: f */
    public int f45291f;

    /* renamed from: g */
    public final /* synthetic */ SimpleExoPlayer f45292g;

    /* renamed from: e.a.k.c.s$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/s$a.class */
    public static final class C16070a extends m implements a<s> {

        /* renamed from: c */
        public final /* synthetic */ C16071b f45294c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16070a(C16071b c16071b) {
            super(0);
            C16069s.this = r4;
            this.f45294c = c16071b;
        }

        public Object invoke() {
            C16069s.this.f45292g.removeVideoListener(this.f45294c);
            return s.a;
        }
    }

    /* renamed from: e.a.k.c.s$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/s$b.class */
    public static final class C16071b implements AbstractC24833r {

        /* renamed from: a */
        public final /* synthetic */ x f45295a;

        public C16071b(x<? super AbstractC16088u> xVar) {
            this.f45295a = xVar;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24833r
        /* renamed from: a */
        public /* synthetic */ void mo4440a(int i, int i2, int i3, float f) {
            C24832q.m4441b(this, i, i2, i3, f);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24833r
        /* renamed from: c */
        public void mo4439c() {
            C19291g.m13534l1(this.f45295a, AbstractC16088u.C16089a.f45325a);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24833r
        /* renamed from: i */
        public /* synthetic */ void mo4438i(int i, int i2) {
            C24832q.m4442a(this, i, i2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16069s(SimpleExoPlayer simpleExoPlayer, d dVar) {
        super(2, dVar);
        this.f45292g = simpleExoPlayer;
    }

    /* renamed from: i */
    public final d<s> m17928i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C16069s c16069s = new C16069s(this.f45292g, dVar);
        c16069s.f45290e = obj;
        return c16069s;
    }

    /* renamed from: k */
    public final Object m17927k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C16069s c16069s = new C16069s(this.f45292g, dVar);
        c16069s.f45290e = obj;
        return c16069s.m17926s(s.a);
    }

    /* renamed from: s */
    public final Object m17926s(Object obj) {
        s1.w.j.a aVar = s1.w.j.a.a;
        int i = this.f45291f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            x xVar = (x) this.f45290e;
            C16071b c16071b = new C16071b(xVar);
            this.f45292g.addVideoListener(c16071b);
            C16070a c16070a = new C16070a(c16071b);
            this.f45291f = 1;
            if (v.a(xVar, c16070a, this) == aVar) {
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
