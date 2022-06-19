package p193e.p194a.p619d.p620a;

import java.util.LinkedHashMap;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p637c0.AbstractC11387c0;
import q3.a.i0;
import q3.a.x2.a;
import q3.a.x2.g;
import s1.s;
import s1.u.u;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.debug.DebugGroupCallFragment$listenPeers$1", f = "DebugGroupCallFragment.kt", l = {145}, m = "invokeSuspend")
/* renamed from: e.a.d.a.f */
/* loaded from: classes15-dex2jar.jar:e/a/d/a/f.class */
public final class C11006f extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f32573e;

    /* renamed from: f */
    public final /* synthetic */ C10968a f32574f;

    /* renamed from: g */
    public final /* synthetic */ C11041v f32575g;

    /* renamed from: e.a.d.a.f$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/f$a.class */
    public static final class C11007a implements g<AbstractC11387c0<C11029o>> {

        /* renamed from: b */
        public final /* synthetic */ LinkedHashMap f32577b;

        @e(c = "com.truecaller.voip.debug.DebugGroupCallFragment$listenPeers$1$invokeSuspend$$inlined$collect$1", f = "DebugGroupCallFragment.kt", l = {134}, m = "emit")
        /* renamed from: e.a.d.a.f$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/a/f$a$a.class */
        public static final class C11008a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f32578d;

            /* renamed from: e */
            public int f32579e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11008a(d dVar) {
                super(dVar);
                C11007a.this = r4;
            }

            /* renamed from: s */
            public final Object m25413s(Object obj) {
                this.f32578d = obj;
                this.f32579e |= Integer.MIN_VALUE;
                return C11007a.this.m25414a(null, this);
            }
        }

        public C11007a(LinkedHashMap linkedHashMap) {
            C11006f.this = r4;
            this.f32577b = linkedHashMap;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m25414a(java.lang.Object r6, s1.w.d r7) {
            /*
                Method dump skipped, instructions count: 285
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p620a.C11006f.C11007a.m25414a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11006f(C10968a c10968a, C11041v c11041v, d dVar) {
        super(2, dVar);
        this.f32574f = c10968a;
        this.f32575g = c11041v;
    }

    /* renamed from: i */
    public final d<s> m25417i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11006f(this.f32574f, this.f32575g, dVar);
    }

    /* renamed from: k */
    public final Object m25416k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11006f(this.f32574f, this.f32575g, dVar).m25415s(s.a);
    }

    /* renamed from: s */
    public final Object m25415s(Object obj) {
        a m13539k;
        s1.w.j.a aVar = s1.w.j.a.a;
        int i = this.f32573e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            m13539k = C19291g.m13539k(this.f32575g.f32664f, (r5 & 1) != 0 ? u.a : null);
            C11007a c11007a = new C11007a(linkedHashMap);
            this.f32573e = 1;
            if (m13539k.c(c11007a, this) == aVar) {
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
