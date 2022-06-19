package p193e.p194a.p619d.p657v.p658k;

import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.AbstractC11434m1;
import p193e.p194a.p619d.p637c0.AbstractC11477t;
import p193e.p194a.p619d.p637c0.C11437n1;
import p193e.p194a.p619d.p637c0.C11464r;
import p193e.p194a.p619d.p657v.C11821a;
import p193e.p194a.p619d.p663x.p664q.AbstractC12236h;
import p193e.p194a.p619d.p663x.p665r.AbstractC12261h;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.v.k.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/b.class */
public final class C11868b implements i0, AbstractC11860a {

    /* renamed from: a */
    public final C11464r<C11821a> f34838a = new C11464r<>(new C11821a(false, false, false, 7));

    /* renamed from: b */
    public final String f34839b;

    /* renamed from: c */
    public final AbstractC12236h f34840c;

    /* renamed from: d */
    public final AbstractC12261h f34841d;

    /* renamed from: e */
    public final AbstractC11477t f34842e;

    /* renamed from: f */
    public final /* synthetic */ i0 f34843f;

    @e(c = "com.truecaller.voip.groupcall.action.ChangeCallSettingImpl", f = "ChangeCallSetting.kt", l = {136}, m = "handleNativeCallState")
    /* renamed from: e.a.d.v.k.b$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/b$a.class */
    public static final class C11869a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f34844d;

        /* renamed from: e */
        public int f34845e;

        /* renamed from: g */
        public Object f34847g;

        /* renamed from: h */
        public Object f34848h;

        /* renamed from: i */
        public Object f34849i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11869a(d dVar) {
            super(dVar);
            C11868b.this = r4;
        }

        /* renamed from: s */
        public final Object m23917s(Object obj) {
            this.f34844d = obj;
            this.f34845e |= Integer.MIN_VALUE;
            return C11868b.this.m23921c(null, this);
        }
    }

    @e(c = "com.truecaller.voip.groupcall.action.ChangeCallSettingImpl$setMuted$1", f = "ChangeCallSetting.kt", l = {136}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.k.b$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/b$b.class */
    public static final class C11870b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f34850e;

        /* renamed from: f */
        public Object f34851f;

        /* renamed from: g */
        public int f34852g;

        /* renamed from: i */
        public final /* synthetic */ boolean f34854i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11870b(boolean z, d dVar) {
            super(2, dVar);
            C11868b.this = r5;
            this.f34854i = z;
        }

        /* renamed from: i */
        public final d<s> m23916i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11870b(this.f34854i, dVar);
        }

        /* renamed from: k */
        public final Object m23915k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11870b(this.f34854i, dVar).m23914s(s.a);
        }

        /* renamed from: s */
        public final Object m23914s(Object obj) {
            C11464r<C11821a> c11464r;
            q3.a.b3.c cVar;
            a aVar = a.a;
            int i = this.f34852g;
            if (i == 0) {
                C25225a.m3932a3(obj);
                c11464r = C11868b.this.f34838a;
                cVar = c11464r.f33655b;
                this.f34850e = c11464r;
                this.f34851f = cVar;
                this.f34852g = 1;
                if (cVar.b((Object) null, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                q3.a.b3.c cVar2 = (q3.a.b3.c) this.f34851f;
                c11464r = (C11464r) this.f34850e;
                C25225a.m3932a3(obj);
                cVar = cVar2;
            }
            try {
                C11464r<C11821a>.C11465a mo24640h = c11464r.mo24640h();
                boolean z = C11868b.this.f34838a.getValue().f34737a;
                boolean z2 = this.f34854i;
                if (z != z2) {
                    C11868b.this.f34840c.mo23400b(z2);
                    mo24640h.mo24639a(C11821a.m23967a(C11868b.this.f34838a.getValue(), this.f34854i, false, false, 6));
                }
                s sVar = s.a;
                cVar.c((Object) null);
                return sVar;
            } catch (Throwable th) {
                cVar.c((Object) null);
                throw th;
            }
        }
    }

    @e(c = "com.truecaller.voip.groupcall.action.ChangeCallSettingImpl$setOnHold$1", f = "ChangeCallSetting.kt", l = {136, 86}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.k.b$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/b$c.class */
    public static final class C11871c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f34855e;

        /* renamed from: f */
        public Object f34856f;

        /* renamed from: g */
        public int f34857g;

        /* renamed from: i */
        public final /* synthetic */ boolean f34859i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11871c(boolean z, d dVar) {
            super(2, dVar);
            C11868b.this = r5;
            this.f34859i = z;
        }

        /* renamed from: i */
        public final d<s> m23913i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11871c(this.f34859i, dVar);
        }

        /* renamed from: k */
        public final Object m23912k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11871c(this.f34859i, dVar).m23911s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x0147, code lost:
            if (r13 == r0) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0165, code lost:
            if (r13 == r0) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x016b, code lost:
            r13 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0171, code lost:
            if (r13 != r0) goto L39;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0175, code lost:
            return r0;
         */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m23911s(java.lang.Object r8) {
            /*
                Method dump skipped, instructions count: 397
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11868b.C11871c.m23911s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.voip.groupcall.action.ChangeCallSettingImpl$toggleMute$1", f = "ChangeCallSetting.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.k.b$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/b$d.class */
    public static final class C11872d extends i implements p<i0, d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11872d(d dVar) {
            super(2, dVar);
            C11868b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23910i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11872d(dVar);
        }

        /* renamed from: k */
        public final Object m23909k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C11868b c11868b = C11868b.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            c11868b.mo23920e(!c11868b.f34838a.getValue().f34737a);
            return sVar;
        }

        /* renamed from: s */
        public final Object m23908s(Object obj) {
            C25225a.m3932a3(obj);
            C11868b c11868b = C11868b.this;
            c11868b.mo23920e(!c11868b.f34838a.getValue().f34737a);
            return s.a;
        }
    }

    @Inject
    public C11868b(i0 i0Var, String str, AbstractC12236h abstractC12236h, AbstractC12261h abstractC12261h, AbstractC11477t abstractC11477t, AbstractC11434m1 abstractC11434m1) {
        l.e(i0Var, "coroutineScope");
        l.e(str, "ownVoipId");
        l.e(abstractC12236h, "rtcManager");
        l.e(abstractC12261h, "rtmChannel");
        l.e(abstractC11477t, "nativeCallStateModel");
        l.e(abstractC11434m1, "voipTelecomUtil");
        this.f34843f = i0Var;
        this.f34839b = str;
        this.f34840c = abstractC12236h;
        this.f34841d = abstractC12261h;
        this.f34842e = abstractC11477t;
        ((C11437n1) abstractC11434m1).mo24694a();
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11878c(this, null), 3, (Object) null);
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11891d(this, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11860a
    /* renamed from: b */
    public i1 mo23922b() {
        return this.f34838a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00df  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23921c(p193e.p194a.p619d.p637c0.AbstractC11471s r6, s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11868b.m23921c(e.a.d.c0.s, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11860a
    /* renamed from: e */
    public p1 mo23920e(boolean z) {
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11870b(z, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11860a
    /* renamed from: g */
    public p1 mo23919g() {
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11872d(null), 3, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f34843f.getCoroutineContext();
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11860a
    /* renamed from: h */
    public p1 mo23918h(boolean z) {
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11871c(z, null), 3, (Object) null);
    }
}
