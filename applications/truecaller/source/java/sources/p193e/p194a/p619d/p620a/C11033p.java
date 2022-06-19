package p193e.p194a.p619d.p620a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p627b0.C11161a;
import p193e.p194a.p619d.p637c0.AbstractC11394e;
import p193e.p194a.p619d.p637c0.AbstractC11416j;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11592d;
import p193e.p194a.p619d.p637c0.p642z1.C11593e;
import q3.a.i0;
import q3.a.p1;
import q3.a.t0;
import q3.a.x2.a1;
import q3.a.x2.i1;
import q3.a.x2.k1;
import q3.a.y2.q;
import s1.u.i;
import s1.u.u;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.d.a.p */
/* loaded from: classes15-dex2jar.jar:e/a/d/a/p.class */
public final class C11033p implements i0, AbstractC11592d {

    /* renamed from: c */
    public int f32631c;

    /* renamed from: e */
    public final AbstractC11394e f32633e;

    /* renamed from: a */
    public final a1<Set<C11593e>> f32629a = k1.a(u.a);

    /* renamed from: b */
    public final Map<Integer, C11161a> f32630b = new LinkedHashMap();

    /* renamed from: d */
    public final Map<String, Integer> f32632d = new LinkedHashMap();

    @e(c = "com.truecaller.voip.debug.MockCallInfo", f = "MockCallInfo.kt", l = {55}, m = "getCallUser")
    /* renamed from: e.a.d.a.p$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/p$a.class */
    public static final class C11034a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32634d;

        /* renamed from: e */
        public int f32635e;

        /* renamed from: g */
        public Object f32637g;

        /* renamed from: h */
        public int f32638h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11034a(d dVar) {
            super(dVar);
            C11033p.this = r4;
        }

        /* renamed from: s */
        public final Object m25379s(Object obj) {
            this.f32634d = obj;
            this.f32635e |= Integer.MIN_VALUE;
            return C11033p.this.m25383v(0, this);
        }
    }

    @e(c = "com.truecaller.voip.debug.MockCallInfo", f = "MockCallInfo.kt", l = {65}, m = "setStateReady")
    /* renamed from: e.a.d.a.p$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/p$b.class */
    public static final class C11035b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32639d;

        /* renamed from: e */
        public int f32640e;

        /* renamed from: g */
        public Object f32642g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11035b(d dVar) {
            super(dVar);
            C11033p.this = r4;
        }

        /* renamed from: s */
        public final Object m25378s(Object obj) {
            this.f32639d = obj;
            this.f32640e |= Integer.MIN_VALUE;
            return C11033p.this.m25380y(0, this);
        }
    }

    public C11033p(AbstractC11394e abstractC11394e) {
        l.e(abstractC11394e, "callUserResolver");
        this.f32633e = abstractC11394e;
    }

    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11592d
    /* renamed from: a */
    public i1 mo24405a() {
        return this.f32629a;
    }

    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11592d
    /* renamed from: d */
    public Set<String> mo24402d() {
        Iterable<C11593e> iterable = (Iterable) this.f32629a.getValue();
        ArrayList arrayList = new ArrayList();
        for (C11593e c11593e : iterable) {
            C11161a c11161a = this.f32630b.get(Integer.valueOf(c11593e.f33990a));
            String str = c11161a != null ? c11161a.f32996d : null;
            if (str != null) {
                arrayList.add(str);
            }
        }
        return i.d1(arrayList);
    }

    public f getCoroutineContext() {
        t0 t0Var = t0.a;
        return q.c.plus(s1.a.a.a.v0.f.d.j((p1) null, 1, (Object) null));
    }

    /* renamed from: u */
    public final void m25384u(Set<Integer> set) {
        l.e(set, "ids");
        ArrayList arrayList = new ArrayList(C25225a.m4004J(set, 10));
        for (Number number : set) {
            arrayList.add(new C11593e(number.intValue(), k1.a(AbstractC11416j.C11419c.f33542a), false));
        }
        a1<Set<C11593e>> a1Var = this.f32629a;
        a1Var.setValue(i.q0((Set) a1Var.getValue(), arrayList));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x012c  */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m25383v(int r6, s1.w.d<? super p193e.p194a.p619d.p627b0.C11161a> r7) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p620a.C11033p.m25383v(int, s1.w.d):java.lang.Object");
    }

    /* renamed from: w */
    public final int m25382w(String str) {
        Integer num;
        l.e(str, "number");
        Integer num2 = this.f32632d.get(str);
        if (num2 != null) {
            num = num2;
        } else {
            int i = this.f32631c;
            this.f32631c = i + 1;
            this.f32632d.put(str, Integer.valueOf(i));
            num = Integer.valueOf(i);
        }
        return num.intValue();
    }

    /* renamed from: x */
    public final a1<AbstractC11416j> m25381x(int i) {
        C11593e c11593e;
        Iterator it = ((Iterable) this.f32629a.getValue()).iterator();
        while (true) {
            if (!it.hasNext()) {
                c11593e = null;
                break;
            }
            c11593e = it.next();
            if (((C11593e) c11593e).f33990a == i) {
                break;
            }
        }
        l.c(c11593e);
        a1<AbstractC11416j> a1Var = c11593e.f33991b;
        Objects.requireNonNull(a1Var, "null cannot be cast to non-null type kotlinx.coroutines.flow.MutableStateFlow<com.truecaller.voip.util.CallUserSearchState>");
        return a1Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m25380y(int r7, s1.w.d<? super s1.s> r8) {
        /*
            r6 = this;
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p619d.p620a.C11033p.C11035b
            if (r0 == 0) goto L28
            r0 = r8
            e.a.d.a.p$b r0 = (p193e.p194a.p619d.p620a.C11033p.C11035b) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f32640e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f32640e = r1
            r0 = r9
            r8 = r0
            goto L32
        L28:
            e.a.d.a.p$b r0 = new e.a.d.a.p$b
            r1 = r0
            r2 = r6
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L32:
            r0 = r8
            java.lang.Object r0 = r0.f32639d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r8
            int r0 = r0.f32640e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L66
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L5c
            r0 = r8
            java.lang.Object r0 = r0.f32642g
            q3.a.x2.a1 r0 = (q3.a.x2.a1) r0
            r8 = r0
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L8f
        L5c:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L66:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            r1 = r7
            q3.a.x2.a1 r0 = r0.m25381x(r1)
            r12 = r0
            r0 = r8
            r1 = r12
            r0.f32642g = r1
            r0 = r8
            r1 = 1
            r0.f32640e = r1
            r0 = r6
            r1 = r7
            r2 = r8
            java.lang.Object r0 = r0.m25383v(r1, r2)
            r9 = r0
            r0 = r9
            r1 = r11
            if (r0 != r1) goto L8c
            r0 = r11
            return r0
        L8c:
            r0 = r12
            r8 = r0
        L8f:
            r0 = r8
            e.a.d.c0.j$b r1 = new e.a.d.c0.j$b
            r2 = r1
            r3 = r9
            e.a.d.b0.a r3 = (p193e.p194a.p619d.p627b0.C11161a) r3
            r4 = 0
            r2.<init>(r3, r4)
            r0.setValue(r1)
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p620a.C11033p.m25380y(int, s1.w.d):java.lang.Object");
    }
}
