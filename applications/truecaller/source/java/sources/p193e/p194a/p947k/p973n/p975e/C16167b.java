package p193e.p194a.p947k.p973n.p975e;

import com.truecaller.videocallerid.p186db.hiddencontacts.HiddenContact;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
/* renamed from: e.a.k.n.e.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/e/b.class */
public final class C16167b implements AbstractC16166a {

    /* renamed from: a */
    public final AbstractC16177e f45617a;

    /* renamed from: b */
    public final f f45618b;

    @e(c = "com.truecaller.videocallerid.db.hiddencontacts.HiddenContactRepositoryImpl$add$2", f = "HiddenContactRepository.kt", l = {36}, m = "invokeSuspend")
    /* renamed from: e.a.k.n.e.b$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/e/b$a.class */
    public static final class C16168a extends i implements l<d<? super s>, Object> {

        /* renamed from: e */
        public int f45619e;

        /* renamed from: g */
        public final /* synthetic */ C16187g f45621g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16168a(C16187g c16187g, d dVar) {
            super(1, dVar);
            C16167b.this = r5;
            this.f45621g = c16187g;
        }

        /* renamed from: d */
        public final Object m17781d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C16168a(this.f45621g, dVar).m17779s(s.a);
        }

        /* renamed from: l */
        public final d<s> m17780l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16168a(this.f45621g, dVar);
        }

        /* renamed from: s */
        public final Object m17779s(Object obj) {
            a aVar = a.a;
            int i = this.f45619e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC16177e abstractC16177e = C16167b.this.f45617a;
                List<String> list = this.f45621g.f45660a;
                ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
                for (String str : list) {
                    arrayList.add(new HiddenContact(str));
                }
                Set<HiddenContact> d1 = s1.u.i.d1(arrayList);
                this.f45619e = 1;
                if (abstractC16177e.mo17755f(d1, this) == aVar) {
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

    @e(c = "com.truecaller.videocallerid.db.hiddencontacts.HiddenContactRepositoryImpl", f = "HiddenContactRepository.kt", l = {48}, m = "getHiddenNumbers")
    /* renamed from: e.a.k.n.e.b$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/e/b$b.class */
    public static final class C16169b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45622d;

        /* renamed from: e */
        public int f45623e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16169b(d dVar) {
            super(dVar);
            C16167b.this = r4;
        }

        /* renamed from: s */
        public final Object m17778s(Object obj) {
            this.f45622d = obj;
            this.f45623e |= Integer.MIN_VALUE;
            return C16167b.this.m17784b(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.db.hiddencontacts.HiddenContactRepositoryImpl$getHiddenNumbers$2", f = "HiddenContactRepository.kt", l = {48}, m = "invokeSuspend")
    /* renamed from: e.a.k.n.e.b$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/e/b$c.class */
    public static final class C16170c extends i implements l<d<? super List<? extends HiddenContact>>, Object> {

        /* renamed from: e */
        public int f45625e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16170c(d dVar) {
            super(1, dVar);
            C16167b.this = r5;
        }

        /* renamed from: d */
        public final Object m17777d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C16170c(dVar).m17775s(s.a);
        }

        /* renamed from: l */
        public final d<s> m17776l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16170c(dVar);
        }

        /* renamed from: s */
        public final Object m17775s(Object obj) {
            a aVar = a.a;
            int i = this.f45625e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC16177e abstractC16177e = C16167b.this.f45617a;
                this.f45625e = 1;
                Object mo17757d = abstractC16177e.mo17757d(this);
                obj = mo17757d;
                if (mo17757d == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.videocallerid.db.hiddencontacts.HiddenContactRepositoryImpl", f = "HiddenContactRepository.kt", l = {40}, m = "isContactHidden")
    /* renamed from: e.a.k.n.e.b$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/e/b$d.class */
    public static final class C16171d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45627d;

        /* renamed from: e */
        public int f45628e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16171d(d dVar) {
            super(dVar);
            C16167b.this = r4;
        }

        /* renamed from: s */
        public final Object m17774s(Object obj) {
            this.f45627d = obj;
            this.f45628e |= Integer.MIN_VALUE;
            return C16167b.this.m17783c(null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.db.hiddencontacts.HiddenContactRepositoryImpl$isContactHidden$2", f = "HiddenContactRepository.kt", l = {41}, m = "invokeSuspend")
    /* renamed from: e.a.k.n.e.b$e */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/e/b$e.class */
    public static final class C16172e extends i implements l<d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f45630e;

        /* renamed from: g */
        public final /* synthetic */ List f45632g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16172e(List list, d dVar) {
            super(1, dVar);
            C16167b.this = r5;
            this.f45632g = list;
        }

        /* renamed from: d */
        public final Object m17773d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C16172e(this.f45632g, dVar).m17771s(s.a);
        }

        /* renamed from: l */
        public final d<s> m17772l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16172e(this.f45632g, dVar);
        }

        /* renamed from: s */
        public final Object m17771s(Object obj) {
            a aVar = a.a;
            int i = this.f45630e;
            boolean z = true;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC16177e abstractC16177e = C16167b.this.f45617a;
                List<String> list = this.f45632g;
                this.f45630e = 1;
                Object mo17756e = abstractC16177e.mo17756e(list, this);
                obj = mo17756e;
                if (mo17756e == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (obj == null) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    @e(c = "com.truecaller.videocallerid.db.hiddencontacts.HiddenContactRepositoryImpl", f = "HiddenContactRepository.kt", l = {44}, m = "isPhoneNumberHidden")
    /* renamed from: e.a.k.n.e.b$f */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/e/b$f.class */
    public static final class C16173f extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45633d;

        /* renamed from: e */
        public int f45634e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16173f(d dVar) {
            super(dVar);
            C16167b.this = r4;
        }

        /* renamed from: s */
        public final Object m17770s(Object obj) {
            this.f45633d = obj;
            this.f45634e |= Integer.MIN_VALUE;
            return C16167b.this.m17782d(null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.db.hiddencontacts.HiddenContactRepositoryImpl$isPhoneNumberHidden$2", f = "HiddenContactRepository.kt", l = {45}, m = "invokeSuspend")
    /* renamed from: e.a.k.n.e.b$g */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/e/b$g.class */
    public static final class C16174g extends i implements l<d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f45636e;

        /* renamed from: g */
        public final /* synthetic */ String f45638g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16174g(String str, d dVar) {
            super(1, dVar);
            C16167b.this = r5;
            this.f45638g = str;
        }

        /* renamed from: d */
        public final Object m17769d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C16174g(this.f45638g, dVar).m17767s(s.a);
        }

        /* renamed from: l */
        public final d<s> m17768l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16174g(this.f45638g, dVar);
        }

        /* renamed from: s */
        public final Object m17767s(Object obj) {
            a aVar = a.a;
            int i = this.f45636e;
            boolean z = true;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC16177e abstractC16177e = C16167b.this.f45617a;
                String str = this.f45638g;
                this.f45636e = 1;
                Object mo17758c = abstractC16177e.mo17758c(str, this);
                obj = mo17758c;
                if (mo17758c == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (obj == null) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    @Inject
    public C16167b(AbstractC16177e abstractC16177e, @Named("IO") f fVar) {
        s1.z.c.l.e(abstractC16177e, "hiddenContactsDao");
        s1.z.c.l.e(fVar, "iOContext");
        this.f45617a = abstractC16177e;
        this.f45618b = fVar;
    }

    /* renamed from: a */
    public Object m17785a(C16187g c16187g, d<? super s> dVar) {
        Object m13546h1 = C19291g.m13546h1(this.f45618b, new C16168a(c16187g, null), dVar);
        return m13546h1 == a.a ? m13546h1 : s.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0092  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m17784b(s1.w.d<? super java.util.List<com.truecaller.videocallerid.p186db.hiddencontacts.HiddenContact>> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p947k.p973n.p975e.C16167b.C16169b
            if (r0 == 0) goto L25
            r0 = r6
            e.a.k.n.e.b$b r0 = (p193e.p194a.p947k.p973n.p975e.C16167b.C16169b) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f45623e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f45623e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.k.n.e.b$b r0 = new e.a.k.n.e.b$b
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f45622d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f45623e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5a
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L50
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r6 = r0
            goto L86
        L50:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5a:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            s1.w.f r0 = r0.f45618b
            r7 = r0
            e.a.k.n.e.b$c r0 = new e.a.k.n.e.b$c
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r3)
            r10 = r0
            r0 = r6
            r1 = 1
            r0.f45623e = r1
            r0 = r7
            r1 = r10
            r2 = r6
            java.lang.Object r0 = p193e.p194a.p1129p5.p1132s0.C19291g.m13546h1(r0, r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L86
            r0 = r9
            return r0
        L86:
            r0 = r6
            java.util.List r0 = (java.util.List) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L92
            goto L96
        L92:
            s1.u.s r0 = s1.u.s.a
            r6 = r0
        L96:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p973n.p975e.C16167b.m17784b(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009d  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m17783c(java.util.List<java.lang.String> r7, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            r6 = this;
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p947k.p973n.p975e.C16167b.C16171d
            if (r0 == 0) goto L28
            r0 = r8
            e.a.k.n.e.b$d r0 = (p193e.p194a.p947k.p973n.p975e.C16167b.C16171d) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f45628e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f45628e = r1
            r0 = r9
            r8 = r0
            goto L32
        L28:
            e.a.k.n.e.b$d r0 = new e.a.k.n.e.b$d
            r1 = r0
            r2 = r6
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L32:
            r0 = r8
            java.lang.Object r0 = r0.f45627d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r8
            int r0 = r0.f45628e
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
            s1.w.f r0 = r0.f45618b
            r9 = r0
            e.a.k.n.e.b$e r0 = new e.a.k.n.e.b$e
            r1 = r0
            r2 = r6
            r3 = r7
            r4 = 0
            r1.<init>(r3, r4)
            r7 = r0
            r0 = r8
            r1 = 1
            r0.f45628e = r1
            r0 = r9
            r1 = r7
            r2 = r8
            java.lang.Object r0 = p193e.p194a.p1129p5.p1132s0.C19291g.m13546h1(r0, r1, r2)
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
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L9d
            r0 = r7
            boolean r0 = r0.booleanValue()
            r12 = r0
            goto La0
        L9d:
            r0 = 0
            r12 = r0
        La0:
            r0 = r12
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p973n.p975e.C16167b.m17783c(java.util.List, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009d  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m17782d(java.lang.String r7, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            r6 = this;
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p947k.p973n.p975e.C16167b.C16173f
            if (r0 == 0) goto L28
            r0 = r8
            e.a.k.n.e.b$f r0 = (p193e.p194a.p947k.p973n.p975e.C16167b.C16173f) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f45634e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f45634e = r1
            r0 = r9
            r8 = r0
            goto L32
        L28:
            e.a.k.n.e.b$f r0 = new e.a.k.n.e.b$f
            r1 = r0
            r2 = r6
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L32:
            r0 = r8
            java.lang.Object r0 = r0.f45633d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r8
            int r0 = r0.f45634e
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
            s1.w.f r0 = r0.f45618b
            r9 = r0
            e.a.k.n.e.b$g r0 = new e.a.k.n.e.b$g
            r1 = r0
            r2 = r6
            r3 = r7
            r4 = 0
            r1.<init>(r3, r4)
            r7 = r0
            r0 = r8
            r1 = 1
            r0.f45634e = r1
            r0 = r9
            r1 = r7
            r2 = r8
            java.lang.Object r0 = p193e.p194a.p1129p5.p1132s0.C19291g.m13546h1(r0, r1, r2)
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
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L9d
            r0 = r7
            boolean r0 = r0.booleanValue()
            r12 = r0
            goto La0
        L9d:
            r0 = 0
            r12 = r0
        La0:
            r0 = r12
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p973n.p975e.C16167b.m17782d(java.lang.String, s1.w.d):java.lang.Object");
    }
}
