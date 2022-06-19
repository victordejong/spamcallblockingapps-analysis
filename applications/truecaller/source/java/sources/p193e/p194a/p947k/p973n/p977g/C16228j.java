package p193e.p194a.p947k.p973n.p977g;

import com.truecaller.videocallerid.data.OutgoingVideoDetails;
import com.truecaller.videocallerid.data.VideoDetails;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
/* renamed from: e.a.k.n.g.j */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/g/j.class */
public final class C16228j implements AbstractC16223e {

    /* renamed from: a */
    public final a<AbstractC16211c> f45747a;

    /* renamed from: b */
    public final f f45748b;

    @e(c = "com.truecaller.videocallerid.db.outgoingvideo.OutgoingVideoRepositoryImpl", f = "OutgoingVideoRepository.kt", l = {73}, m = "getVideos")
    /* renamed from: e.a.k.n.g.j$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/g/j$a.class */
    public static final class C16229a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45749d;

        /* renamed from: e */
        public int f45750e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16229a(d dVar) {
            super(dVar);
            C16228j.this = r4;
        }

        /* renamed from: s */
        public final Object m17699s(Object obj) {
            this.f45749d = obj;
            this.f45750e |= Integer.MIN_VALUE;
            return C16228j.this.m17702c(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.db.outgoingvideo.OutgoingVideoRepositoryImpl$getVideos$2", f = "OutgoingVideoRepository.kt", l = {74}, m = "invokeSuspend")
    /* renamed from: e.a.k.n.g.j$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/g/j$b.class */
    public static final class C16230b extends i implements l<d<? super List<? extends OutgoingVideoDetails>>, Object> {

        /* renamed from: e */
        public int f45752e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16230b(d dVar) {
            super(1, dVar);
            C16228j.this = r5;
        }

        /* renamed from: d */
        public final Object m17698d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C16230b(dVar).m17696s(s.a);
        }

        /* renamed from: l */
        public final d<s> m17697l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16230b(dVar);
        }

        /* renamed from: s */
        public final Object m17696s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f45752e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f45752e = 1;
                Object mo17722c = ((AbstractC16211c) C16228j.this.f45747a.get()).mo17722c(this);
                obj = mo17722c;
                if (mo17722c == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            Iterable<C16209a> iterable = (Iterable) obj;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(iterable, 10));
            for (C16209a c16209a : iterable) {
                arrayList.add(C16228j.m17703b(C16228j.this, c16209a));
            }
            return arrayList;
        }
    }

    @e(c = "com.truecaller.videocallerid.db.outgoingvideo.OutgoingVideoRepositoryImpl", f = "OutgoingVideoRepository.kt", l = {81}, m = "hasVideos")
    /* renamed from: e.a.k.n.g.j$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/g/j$c.class */
    public static final class C16231c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45754d;

        /* renamed from: e */
        public int f45755e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16231c(d dVar) {
            super(dVar);
            C16228j.this = r4;
        }

        /* renamed from: s */
        public final Object m17695s(Object obj) {
            this.f45754d = obj;
            this.f45755e |= Integer.MIN_VALUE;
            return C16228j.this.m17701d(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.db.outgoingvideo.OutgoingVideoRepositoryImpl$hasVideos$2", f = "OutgoingVideoRepository.kt", l = {82}, m = "invokeSuspend")
    /* renamed from: e.a.k.n.g.j$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/g/j$d.class */
    public static final class C16232d extends i implements l<d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f45757e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16232d(d dVar) {
            super(1, dVar);
            C16228j.this = r5;
        }

        /* renamed from: d */
        public final Object m17694d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C16232d(dVar).m17692s(s.a);
        }

        /* renamed from: l */
        public final d<s> m17693l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16232d(dVar);
        }

        /* renamed from: s */
        public final Object m17692s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f45757e;
            boolean z = true;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f45757e = 1;
                Object mo17724a = ((AbstractC16211c) C16228j.this.f45747a.get()).mo17724a(this);
                obj = mo17724a;
                if (mo17724a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (((Number) obj).intValue() <= 0) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    @e(c = "com.truecaller.videocallerid.db.outgoingvideo.OutgoingVideoRepositoryImpl$removeLastVideos$2", f = "OutgoingVideoRepository.kt", l = {93}, m = "invokeSuspend")
    /* renamed from: e.a.k.n.g.j$e */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/g/j$e.class */
    public static final class C16233e extends i implements l<d<? super s>, Object> {

        /* renamed from: e */
        public int f45759e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16233e(d dVar) {
            super(1, dVar);
            C16228j.this = r5;
        }

        /* renamed from: d */
        public final Object m17691d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C16233e(dVar).m17689s(s.a);
        }

        /* renamed from: l */
        public final d<s> m17690l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16233e(dVar);
        }

        /* renamed from: s */
        public final Object m17689s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f45759e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f45759e = 1;
                if (((AbstractC16211c) C16228j.this.f45747a.get()).mo17721d(this) == aVar) {
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

    @Inject
    public C16228j(a<AbstractC16211c> aVar, @Named("IO") f fVar) {
        s1.z.c.l.e(aVar, "outgoingVideoDao");
        s1.z.c.l.e(fVar, "asyncContext");
        this.f45747a = aVar;
        this.f45748b = fVar;
    }

    /* renamed from: a */
    public static final C16209a m17704a(C16228j c16228j, OutgoingVideoDetails outgoingVideoDetails) {
        Objects.requireNonNull(c16228j);
        String str = outgoingVideoDetails.f15999a;
        String str2 = outgoingVideoDetails.f16000b;
        VideoDetails videoDetails = outgoingVideoDetails.f16001c;
        return new C16209a(str, str2, videoDetails.f16003a, videoDetails.f16004b, videoDetails.f16005c, videoDetails.f16006d);
    }

    /* renamed from: b */
    public static final OutgoingVideoDetails m17703b(C16228j c16228j, C16209a c16209a) {
        Objects.requireNonNull(c16228j);
        return new OutgoingVideoDetails(c16209a.f45709a, c16209a.f45710b, new VideoDetails(c16209a.f45711c, c16209a.f45712d, c16209a.f45713e, c16209a.f45714f));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0092  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m17702c(s1.w.d<? super java.util.List<com.truecaller.videocallerid.data.OutgoingVideoDetails>> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p947k.p973n.p977g.C16228j.C16229a
            if (r0 == 0) goto L25
            r0 = r6
            e.a.k.n.g.j$a r0 = (p193e.p194a.p947k.p973n.p977g.C16228j.C16229a) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f45750e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f45750e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.k.n.g.j$a r0 = new e.a.k.n.g.j$a
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f45749d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f45750e
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
            s1.w.f r0 = r0.f45748b
            r10 = r0
            e.a.k.n.g.j$b r0 = new e.a.k.n.g.j$b
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r3)
            r7 = r0
            r0 = r6
            r1 = 1
            r0.f45750e = r1
            r0 = r10
            r1 = r7
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
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p973n.p977g.C16228j.m17702c(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0098  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m17701d(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p947k.p973n.p977g.C16228j.C16231c
            if (r0 == 0) goto L25
            r0 = r6
            e.a.k.n.g.j$c r0 = (p193e.p194a.p947k.p973n.p977g.C16228j.C16231c) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f45755e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f45755e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.k.n.g.j$c r0 = new e.a.k.n.g.j$c
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f45754d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f45755e
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
            s1.w.f r0 = r0.f45748b
            r7 = r0
            e.a.k.n.g.j$d r0 = new e.a.k.n.g.j$d
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r3)
            r10 = r0
            r0 = r6
            r1 = 1
            r0.f45755e = r1
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
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L98
            r0 = r6
            boolean r0 = r0.booleanValue()
            r11 = r0
            goto L9b
        L98:
            r0 = 0
            r11 = r0
        L9b:
            r0 = r11
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p973n.p977g.C16228j.m17701d(s1.w.d):java.lang.Object");
    }

    /* renamed from: e */
    public Object m17700e(d<? super s> dVar) {
        Object m13546h1 = C19291g.m13546h1(this.f45748b, new C16233e(null), dVar);
        return m13546h1 == s1.w.j.a.a ? m13546h1 : s.a;
    }
}
