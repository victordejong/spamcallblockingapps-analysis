package p193e.p194a.p619d.p628c.p636z;

import com.truecaller.voip.VoipCallHistory;
import java.util.Comparator;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.AbstractC11462q0;
import p193e.p194a.p619d.p637c0.C11454p0;
import p193e.p194a.p619d.p637c0.C11466r0;
import p193e.p194a.p619d.p637c0.C11475s0;
import q3.a.i0;
import q3.a.x2.f;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.ui.calldetails.VoipGroupCallDetailsPresenter$fetchHistoryDetails$1", f = "VoipGroupCallDetailsPresenter.kt", l = {47, 48}, m = "invokeSuspend")
/* renamed from: e.a.d.c.z.l */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/z/l.class */
public final class C11351l extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f33374e;

    /* renamed from: f */
    public int f33375f;

    /* renamed from: g */
    public final /* synthetic */ C11354m f33376g;

    /* renamed from: h */
    public final /* synthetic */ VoipCallHistory f33377h;

    @e(c = "com.truecaller.voip.ui.calldetails.VoipGroupCallDetailsPresenter$fetchHistoryDetails$1$1", f = "VoipGroupCallDetailsPresenter.kt", l = {58}, m = "invokeSuspend")
    /* renamed from: e.a.d.c.z.l$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/z/l$a.class */
    public static final class C11352a extends i implements p<List<? extends C11454p0>, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f33378e;

        /* renamed from: f */
        public Object f33379f;

        /* renamed from: g */
        public Object f33380g;

        /* renamed from: h */
        public int f33381h;

        /* renamed from: e.a.d.c.z.l$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c/z/l$a$a.class */
        public static final class C11353a<T> implements Comparator {
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return C25225a.m4000K(Integer.valueOf(((C11454p0) t).f33637a), Integer.valueOf(((C11454p0) t2).f33637a));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11352a(d dVar) {
            super(2, dVar);
            C11351l.this = r5;
        }

        /* renamed from: i */
        public final d<s> m24788i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C11352a c11352a = new C11352a(dVar);
            c11352a.f33378e = obj;
            return c11352a;
        }

        /* renamed from: k */
        public final Object m24787k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C11352a c11352a = new C11352a(dVar);
            c11352a.f33378e = obj;
            return c11352a.m24786s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x01ac  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x0281  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x0204 -> B:38:0x0207). Please submit an issue!!! */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m24786s(java.lang.Object r10) {
            /*
                Method dump skipped, instructions count: 653
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p628c.p636z.C11351l.C11352a.m24786s(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11351l(C11354m c11354m, VoipCallHistory voipCallHistory, d dVar) {
        super(2, dVar);
        this.f33376g = c11354m;
        this.f33377h = voipCallHistory;
    }

    /* renamed from: i */
    public final d<s> m24791i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C11351l c11351l = new C11351l(this.f33376g, this.f33377h, dVar);
        c11351l.f33374e = obj;
        return c11351l;
    }

    /* renamed from: k */
    public final Object m24790k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C11351l c11351l = new C11351l(this.f33376g, this.f33377h, dVar);
        c11351l.f33374e = obj;
        return c11351l.m24789s(s.a);
    }

    /* renamed from: s */
    public final Object m24789s(Object obj) {
        a aVar = a.a;
        int i = this.f33375f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i0 i0Var = (i0) this.f33374e;
            AbstractC11462q0 abstractC11462q0 = this.f33376g.f33385f;
            long j = this.f33377h.f16261a;
            this.f33375f = 1;
            C11475s0 c11475s0 = (C11475s0) abstractC11462q0;
            Object a4 = s1.a.a.a.v0.f.d.a4(c11475s0.f33689a, new C11466r0(c11475s0, j, i0Var, null), this);
            obj = a4;
            if (a4 == aVar) {
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
        f fVar = (f) obj;
        C11352a c11352a = new C11352a(null);
        this.f33375f = 2;
        if (s1.a.a.a.v0.f.d.g0(fVar, c11352a, this) == aVar) {
            return aVar;
        }
        return s.a;
    }
}
