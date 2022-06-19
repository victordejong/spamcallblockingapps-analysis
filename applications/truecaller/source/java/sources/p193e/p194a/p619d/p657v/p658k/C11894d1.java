package p193e.p194a.p619d.p657v.p658k;

import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p637c0.AbstractC11387c0;
import q3.a.i0;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.groupcall.action.UpdatePeersImpl$addPeersOnChange$1", f = "UpdatePeers.kt", l = {284}, m = "invokeSuspend")
/* renamed from: e.a.d.v.k.d1 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/d1.class */
public final class C11894d1 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f34950e;

    /* renamed from: f */
    public final /* synthetic */ C11881c1 f34951f;

    /* renamed from: g */
    public final /* synthetic */ f f34952g;

    /* renamed from: h */
    public final /* synthetic */ Set f34953h;

    /* renamed from: e.a.d.v.k.d1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/d1$a.class */
    public static final class C11895a implements g<AbstractC11387c0<Integer>> {

        @e(c = "com.truecaller.voip.groupcall.action.UpdatePeersImpl$addPeersOnChange$1$invokeSuspend$$inlined$collect$1", f = "UpdatePeers.kt", l = {135, 136}, m = "emit")
        /* renamed from: e.a.d.v.k.d1$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/d1$a$a.class */
        public static final class C11896a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f34955d;

            /* renamed from: e */
            public int f34956e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11896a(d dVar) {
                super(dVar);
                C11895a.this = r4;
            }

            /* renamed from: s */
            public final Object m23862s(Object obj) {
                this.f34955d = obj;
                this.f34956e |= Integer.MIN_VALUE;
                return C11895a.this.m23863a(null, this);
            }
        }

        public C11895a() {
            C11894d1.this = r4;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0068  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m23863a(java.lang.Object r6, s1.w.d r7) {
            /*
                Method dump skipped, instructions count: 232
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11894d1.C11895a.m23863a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11894d1(C11881c1 c11881c1, f fVar, Set set, d dVar) {
        super(2, dVar);
        this.f34951f = c11881c1;
        this.f34952g = fVar;
        this.f34953h = set;
    }

    /* renamed from: i */
    public final d<s> m23866i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11894d1(this.f34951f, this.f34952g, this.f34953h, dVar);
    }

    /* renamed from: k */
    public final Object m23865k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11894d1(this.f34951f, this.f34952g, this.f34953h, dVar).m23864s(s.a);
    }

    /* renamed from: s */
    public final Object m23864s(Object obj) {
        a aVar = a.a;
        int i = this.f34950e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            q3.a.x2.a m13539k = C19291g.m13539k(this.f34952g, this.f34953h);
            C11895a c11895a = new C11895a();
            this.f34950e = 1;
            if (m13539k.c(c11895a, this) == aVar) {
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
