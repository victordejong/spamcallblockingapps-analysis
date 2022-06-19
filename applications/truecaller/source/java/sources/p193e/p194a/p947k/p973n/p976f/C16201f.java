package p193e.p194a.p947k.p973n.p976f;

import com.truecaller.videocallerid.data.VideoDetails;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p971l.C16120b;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
/* renamed from: e.a.k.n.f.f */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/f/f.class */
public final class C16201f implements AbstractC16199d {

    /* renamed from: a */
    public final a<AbstractC16189b> f45687a;

    /* renamed from: b */
    public final f f45688b;

    @e(c = "com.truecaller.videocallerid.db.incomingvideoid.IncomingVideoRepositoryImpl", f = "IncomingVideoRepository.kt", l = {44}, m = "getAllVideos")
    /* renamed from: e.a.k.n.f.f$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/f/f$a.class */
    public static final class C16202a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45689d;

        /* renamed from: e */
        public int f45690e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16202a(d dVar) {
            super(dVar);
            C16201f.this = r4;
        }

        /* renamed from: s */
        public final Object m17742s(Object obj) {
            this.f45689d = obj;
            this.f45690e |= Integer.MIN_VALUE;
            return C16201f.this.m17744b(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.db.incomingvideoid.IncomingVideoRepositoryImpl$getAllVideos$2", f = "IncomingVideoRepository.kt", l = {45}, m = "invokeSuspend")
    /* renamed from: e.a.k.n.f.f$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/f/f$b.class */
    public static final class C16203b extends i implements l<d<? super List<? extends C16120b>>, Object> {

        /* renamed from: e */
        public int f45692e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16203b(d dVar) {
            super(1, dVar);
            C16201f.this = r5;
        }

        /* renamed from: d */
        public final Object m17741d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C16203b(dVar).m17739s(s.a);
        }

        /* renamed from: l */
        public final d<s> m17740l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16203b(dVar);
        }

        /* renamed from: s */
        public final Object m17739s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f45692e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f45692e = 1;
                Object mo17754a = ((AbstractC16189b) C16201f.this.f45687a.get()).mo17754a(this);
                obj = mo17754a;
                if (mo17754a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            Iterable<C16188a> iterable = (Iterable) obj;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(iterable, 10));
            for (C16188a c16188a : iterable) {
                arrayList.add(C16201f.m17745a(C16201f.this, c16188a));
            }
            return arrayList;
        }
    }

    @e(c = "com.truecaller.videocallerid.db.incomingvideoid.IncomingVideoRepositoryImpl", f = "IncomingVideoRepository.kt", l = {40}, m = "getVideoByPhoneNumbers")
    /* renamed from: e.a.k.n.f.f$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/f/f$c.class */
    public static final class C16204c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45694d;

        /* renamed from: e */
        public int f45695e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16204c(d dVar) {
            super(dVar);
            C16201f.this = r4;
        }

        /* renamed from: s */
        public final Object m17738s(Object obj) {
            this.f45694d = obj;
            this.f45695e |= Integer.MIN_VALUE;
            return C16201f.this.m17743c(null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.db.incomingvideoid.IncomingVideoRepositoryImpl$getVideoByPhoneNumbers$2", f = "IncomingVideoRepository.kt", l = {41}, m = "invokeSuspend")
    /* renamed from: e.a.k.n.f.f$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/f/f$d.class */
    public static final class C16205d extends i implements l<d<? super List<? extends C16120b>>, Object> {

        /* renamed from: e */
        public int f45697e;

        /* renamed from: g */
        public final /* synthetic */ List f45699g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16205d(List list, d dVar) {
            super(1, dVar);
            C16201f.this = r5;
            this.f45699g = list;
        }

        /* renamed from: d */
        public final Object m17737d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C16205d(this.f45699g, dVar).m17735s(s.a);
        }

        /* renamed from: l */
        public final d<s> m17736l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16205d(this.f45699g, dVar);
        }

        /* renamed from: s */
        public final Object m17735s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f45697e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC16189b abstractC16189b = (AbstractC16189b) C16201f.this.f45687a.get();
                List<String> list = this.f45699g;
                this.f45697e = 1;
                Object mo17753b = abstractC16189b.mo17753b(list, this);
                obj = mo17753b;
                if (mo17753b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            Iterable<C16188a> iterable = (Iterable) obj;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(iterable, 10));
            for (C16188a c16188a : iterable) {
                arrayList.add(C16201f.m17745a(C16201f.this, c16188a));
            }
            return arrayList;
        }
    }

    @Inject
    public C16201f(a<AbstractC16189b> aVar, @Named("IO") f fVar) {
        s1.z.c.l.e(aVar, "incomingVideoIdDao");
        s1.z.c.l.e(fVar, "asyncContext");
        this.f45687a = aVar;
        this.f45688b = fVar;
    }

    /* renamed from: a */
    public static final C16120b m17745a(C16201f c16201f, C16188a c16188a) {
        Objects.requireNonNull(c16201f);
        return new C16120b(c16188a.f45662b, c16188a.f45661a, c16188a.f45665e, c16188a.f45664d, new VideoDetails(c16188a.f45663c, c16188a.f45666f, c16188a.f45667g, c16188a.f45668h), null, 32);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0092  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m17744b(s1.w.d<? super java.util.List<p193e.p194a.p947k.p971l.C16120b>> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p947k.p973n.p976f.C16201f.C16202a
            if (r0 == 0) goto L25
            r0 = r6
            e.a.k.n.f.f$a r0 = (p193e.p194a.p947k.p973n.p976f.C16201f.C16202a) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f45690e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f45690e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.k.n.f.f$a r0 = new e.a.k.n.f.f$a
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f45689d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f45690e
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
            s1.w.f r0 = r0.f45688b
            r7 = r0
            e.a.k.n.f.f$b r0 = new e.a.k.n.f.f$b
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r3)
            r10 = r0
            r0 = r6
            r1 = 1
            r0.f45690e = r1
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
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p973n.p976f.C16201f.m17744b(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0097  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m17743c(java.util.List<java.lang.String> r7, s1.w.d<? super java.util.List<p193e.p194a.p947k.p971l.C16120b>> r8) {
        /*
            r6 = this;
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p947k.p973n.p976f.C16201f.C16204c
            if (r0 == 0) goto L28
            r0 = r8
            e.a.k.n.f.f$c r0 = (p193e.p194a.p947k.p973n.p976f.C16201f.C16204c) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f45695e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f45695e = r1
            r0 = r9
            r8 = r0
            goto L32
        L28:
            e.a.k.n.f.f$c r0 = new e.a.k.n.f.f$c
            r1 = r0
            r2 = r6
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L32:
            r0 = r8
            java.lang.Object r0 = r0.f45694d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r8
            int r0 = r0.f45695e
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
            s1.w.f r0 = r0.f45688b
            r9 = r0
            e.a.k.n.f.f$d r0 = new e.a.k.n.f.f$d
            r1 = r0
            r2 = r6
            r3 = r7
            r4 = 0
            r1.<init>(r3, r4)
            r7 = r0
            r0 = r8
            r1 = 1
            r0.f45695e = r1
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
            java.util.List r0 = (java.util.List) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L97
            goto L9b
        L97:
            s1.u.s r0 = s1.u.s.a
            r7 = r0
        L9b:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p973n.p976f.C16201f.m17743c(java.util.List, s1.w.d):java.lang.Object");
    }
}
