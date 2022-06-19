package p193e.p194a.p773g.p785j;

import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1041l0.AbstractC17352g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.g.j.i */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/i.class */
public final class C14284i implements AbstractC14282h {

    /* renamed from: a */
    public final a<AbstractC17352g> f41339a;

    /* renamed from: b */
    public final f f41340b;

    @e(c = "com.truecaller.acs.util.AcsCallLogHelperImpl", f = "AcsCallLogHelperImpl.kt", l = {15}, m = "getCallLogDuration")
    /* renamed from: e.a.g.j.i$a */
    /* loaded from: classes4-dex2jar.jar:e/a/g/j/i$a.class */
    public static final class C14285a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f41341d;

        /* renamed from: e */
        public int f41342e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14285a(d dVar) {
            super(dVar);
            C14284i.this = r4;
        }

        /* renamed from: s */
        public final Object m20294s(Object obj) {
            this.f41341d = obj;
            this.f41342e |= Integer.MIN_VALUE;
            return C14284i.this.m20295a(null, this);
        }
    }

    @e(c = "com.truecaller.acs.util.AcsCallLogHelperImpl$getCallLogDuration$2", f = "AcsCallLogHelperImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.g.j.i$b */
    /* loaded from: classes4-dex2jar.jar:e/a/g/j/i$b.class */
    public static final class C14286b extends i implements p<i0, d<? super Integer>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f41345f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14286b(String str, d dVar) {
            super(2, dVar);
            C14284i.this = r5;
            this.f41345f = str;
        }

        /* renamed from: i */
        public final d<s> m20293i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14286b(this.f41345f, dVar);
        }

        /* renamed from: k */
        public final Object m20292k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C14284i c14284i = C14284i.this;
            String str = this.f41345f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            Integer mo11831c = ((AbstractC17352g) c14284i.f41339a.get()).mo16206o(str).mo11831c();
            if (mo11831c == null) {
                mo11831c = new Integer(0);
            }
            return mo11831c;
        }

        /* renamed from: s */
        public final Object m20291s(Object obj) {
            C25225a.m3932a3(obj);
            Integer mo11831c = ((AbstractC17352g) C14284i.this.f41339a.get()).mo16206o(this.f41345f).mo11831c();
            if (mo11831c == null) {
                mo11831c = new Integer(0);
            }
            return mo11831c;
        }
    }

    @Inject
    public C14284i(a<AbstractC17352g> aVar, @Named("IO") f fVar) {
        l.e(aVar, "callLogManager");
        l.e(fVar, "ioContext");
        this.f41339a = aVar;
        this.f41340b = fVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m20295a(java.lang.String r7, s1.w.d<? super java.lang.Integer> r8) {
        /*
            r6 = this;
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p773g.p785j.C14284i.C14285a
            if (r0 == 0) goto L28
            r0 = r8
            e.a.g.j.i$a r0 = (p193e.p194a.p773g.p785j.C14284i.C14285a) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f41342e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f41342e = r1
            r0 = r9
            r8 = r0
            goto L32
        L28:
            e.a.g.j.i$a r0 = new e.a.g.j.i$a
            r1 = r0
            r2 = r6
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L32:
            r0 = r8
            java.lang.Object r0 = r0.f41341d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r8
            int r0 = r0.f41342e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L60
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r9
            r7 = r0
            goto L8b
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            s1.w.f r0 = r0.f41340b
            r9 = r0
            e.a.g.j.i$b r0 = new e.a.g.j.i$b
            r1 = r0
            r2 = r6
            r3 = r7
            r4 = 0
            r1.<init>(r3, r4)
            r7 = r0
            r0 = r8
            r1 = 1
            r0.f41342e = r1
            r0 = r9
            r1 = r7
            r2 = r8
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r8 = r0
            r0 = r8
            r7 = r0
            r0 = r8
            r1 = r11
            if (r0 != r1) goto L8b
            r0 = r11
            return r0
        L8b:
            r0 = r7
            java.lang.String r1 = "withContext(ioContext) {…(number).get() ?: 0\n    }"
            s1.z.c.l.d(r0, r1)
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.p785j.C14284i.m20295a(java.lang.String, s1.w.d):java.lang.Object");
    }
}
