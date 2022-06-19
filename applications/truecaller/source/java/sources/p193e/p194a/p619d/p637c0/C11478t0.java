package p193e.p194a.p619d.p637c0;

import java.util.Map;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p627b0.C11166c;
import q3.a.i0;
import q3.a.x2.g;
import q3.a.x2.i1;
import q3.a.x2.z0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.util.VoipGroupCallDetailsRepositoryKt$listenToPeerUpdates$1", f = "VoipGroupCallDetailsRepository.kt", l = {176}, m = "invokeSuspend")
/* renamed from: e.a.d.c0.t0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/t0.class */
public final class C11478t0 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33692e;

    /* renamed from: f */
    public final /* synthetic */ i1 f33693f;

    /* renamed from: g */
    public final /* synthetic */ C11166c f33694g;

    /* renamed from: h */
    public final /* synthetic */ Map f33695h;

    /* renamed from: i */
    public final /* synthetic */ z0 f33696i;

    /* renamed from: e.a.d.c0.t0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/t0$a.class */
    public static final class C11479a implements g<AbstractC11416j> {

        @e(c = "com.truecaller.voip.util.VoipGroupCallDetailsRepositoryKt$listenToPeerUpdates$1$invokeSuspend$$inlined$collect$1", f = "VoipGroupCallDetailsRepository.kt", l = {144}, m = "emit")
        /* renamed from: e.a.d.c0.t0$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/t0$a$a.class */
        public static final class C11480a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f33698d;

            /* renamed from: e */
            public int f33699e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11480a(d dVar) {
                super(dVar);
                C11479a.this = r4;
            }

            /* renamed from: s */
            public final Object m24624s(Object obj) {
                this.f33698d = obj;
                this.f33699e |= Integer.MIN_VALUE;
                return C11479a.this.m24625a(null, this);
            }
        }

        public C11479a() {
            C11478t0.this = r4;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m24625a(java.lang.Object r16, s1.w.d r17) {
            /*
                Method dump skipped, instructions count: 424
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.C11478t0.C11479a.m24625a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11478t0(i1 i1Var, C11166c c11166c, Map map, z0 z0Var, d dVar) {
        super(2, dVar);
        this.f33693f = i1Var;
        this.f33694g = c11166c;
        this.f33695h = map;
        this.f33696i = z0Var;
    }

    /* renamed from: i */
    public final d<s> m24628i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11478t0(this.f33693f, this.f33694g, this.f33695h, this.f33696i, dVar);
    }

    /* renamed from: k */
    public final Object m24627k(Object obj, Object obj2) {
        return m24628i(obj, (d) obj2).m24626s(s.a);
    }

    /* renamed from: s */
    public final Object m24626s(Object obj) {
        a aVar = a.a;
        int i = this.f33692e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1 i1Var = this.f33693f;
            C11479a c11479a = new C11479a();
            this.f33692e = 1;
            if (i1Var.c(c11479a, this) == aVar) {
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
