package p193e.p194a.p947k.p948a.p964k;

import com.tenor.android.core.constant.ViewAction;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1577m.p1578a.p1596c.AbstractC24196c0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.b3.c;
import q3.a.b3.g;
import q3.a.h1;
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
/* renamed from: e.a.k.a.k.f */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/k/f.class */
public final class C15827f implements AbstractC15825d {

    /* renamed from: a */
    public AbstractC24196c0 f44640a;

    /* renamed from: b */
    public final c f44641b = g.a(false, 1);

    /* renamed from: c */
    public final f f44642c;

    /* renamed from: d */
    public final f f44643d;

    /* renamed from: e */
    public final AbstractC15821c f44644e;

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.ExoPlayerProviderImpl", f = "ExoPlayerProvider.kt", l = {82}, m = "getCached")
    /* renamed from: e.a.k.a.k.f$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/f$a.class */
    public static final class C15828a extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44645d;

        /* renamed from: e */
        public int f44646e;

        /* renamed from: g */
        public Object f44648g;

        /* renamed from: h */
        public Object f44649h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15828a(d dVar) {
            super(dVar);
            C15827f.this = r4;
        }

        /* renamed from: s */
        public final Object m18268s(Object obj) {
            this.f44645d = obj;
            this.f44646e |= Integer.MIN_VALUE;
            return C15827f.this.mo18269b(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.ExoPlayerProviderImpl", f = "ExoPlayerProvider.kt", l = {71, 46}, m = "getOrCreate")
    /* renamed from: e.a.k.a.k.f$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/f$b.class */
    public static final class C15829b extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44650d;

        /* renamed from: e */
        public int f44651e;

        /* renamed from: g */
        public Object f44653g;

        /* renamed from: h */
        public Object f44654h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15829b(d dVar) {
            super(dVar);
            C15827f.this = r4;
        }

        /* renamed from: s */
        public final Object m18267s(Object obj) {
            this.f44650d = obj;
            this.f44651e |= Integer.MIN_VALUE;
            return C15827f.this.mo18270a(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.ExoPlayerProviderImpl$release$1", f = "ExoPlayerProvider.kt", l = {71}, m = "invokeSuspend")
    /* renamed from: e.a.k.a.k.f$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/f$c.class */
    public static final class C15830c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f44655e;

        /* renamed from: f */
        public int f44656f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15830c(d dVar) {
            super(2, dVar);
            C15827f.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18266i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15830c(dVar);
        }

        /* renamed from: k */
        public final Object m18265k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C15830c(dVar).m18264s(s.a);
        }

        /* renamed from: s */
        public final Object m18264s(Object obj) {
            c cVar;
            a aVar = a.a;
            int i = this.f44656f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                cVar = C15827f.this.f44641b;
                this.f44655e = cVar;
                this.f44656f = 1;
                if (cVar.b((Object) null, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
                cVar = (c) this.f44655e;
            }
            try {
                AbstractC24196c0 abstractC24196c0 = C15827f.this.f44640a;
                if (abstractC24196c0 != null) {
                    abstractC24196c0.release();
                }
                C15827f.this.f44640a = null;
                s sVar = s.a;
                cVar.c((Object) null);
                return sVar;
            } catch (Throwable th) {
                cVar.c((Object) null);
                throw th;
            }
        }
    }

    @Inject
    public C15827f(@Named("IO") f fVar, @Named("UI") f fVar2, AbstractC15821c abstractC15821c) {
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        l.e(abstractC15821c, ViewAction.VIEW);
        this.f44642c = fVar;
        this.f44643d = fVar2;
        this.f44644e = abstractC15821c;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d2 A[Catch: all -> 0x0134, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0134, blocks: (B:26:0x00bd, B:29:0x00d2), top: B:47:0x00bd }] */
    @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15825d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo18270a(s1.w.d<? super p193e.p1577m.p1578a.p1596c.AbstractC24196c0> r6) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p964k.C15827f.mo18270a(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006d  */
    @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15825d
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo18269b(s1.w.d<? super p193e.p1577m.p1578a.p1596c.AbstractC24196c0> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p947k.p948a.p964k.C15827f.C15828a
            if (r0 == 0) goto L25
            r0 = r6
            e.a.k.a.k.f$a r0 = (p193e.p194a.p947k.p948a.p964k.C15827f.C15828a) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f44646e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f44646e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.k.a.k.f$a r0 = new e.a.k.a.k.f$a
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f44645d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r7 = r0
            r0 = r6
            int r0 = r0.f44646e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L6d
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L63
            r0 = r6
            java.lang.Object r0 = r0.f44649h
            q3.a.b3.c r0 = (q3.a.b3.c) r0
            r10 = r0
            r0 = r6
            java.lang.Object r0 = r0.f44648g
            e.a.k.a.k.f r0 = (p193e.p194a.p947k.p948a.p964k.C15827f) r0
            r7 = r0
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r10
            r6 = r0
            goto L9c
        L63:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L6d:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            q3.a.b3.c r0 = r0.f44641b
            r10 = r0
            r0 = r6
            r1 = r5
            r0.f44648g = r1
            r0 = r6
            r1 = r10
            r0.f44649h = r1
            r0 = r6
            r1 = 1
            r0.f44646e = r1
            r0 = r10
            r1 = 0
            r2 = r6
            java.lang.Object r0 = r0.b(r1, r2)
            r1 = r7
            if (r0 != r1) goto L97
            r0 = r7
            return r0
        L97:
            r0 = r5
            r7 = r0
            r0 = r10
            r6 = r0
        L9c:
            r0 = r7
            e.m.a.c.c0 r0 = r0.f44640a     // Catch: java.lang.Throwable -> Laa
            r7 = r0
            r0 = r6
            r1 = 0
            r0.c(r1)
            r0 = r7
            return r0
        Laa:
            r7 = move-exception
            r0 = r6
            r1 = 0
            r0.c(r1)
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p964k.C15827f.mo18269b(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15825d
    public p1 release() {
        return s1.a.a.a.v0.f.d.w2(h1.a, this.f44643d, (j0) null, new C15830c(null), 2, (Object) null);
    }
}
