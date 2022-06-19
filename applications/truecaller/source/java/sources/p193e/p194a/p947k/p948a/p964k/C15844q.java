package p193e.p194a.p947k.p948a.p964k;

import javax.inject.Inject;
import p193e.p194a.p947k.p969c.AbstractC16076s1;
import p193e.p194a.p947k.p973n.p976f.AbstractC16199d;
import p193e.p194a.p947k.p973n.p977g.AbstractC16223e;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.k.a.k.q */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/k/q.class */
public final class C15844q implements AbstractC15843p {

    /* renamed from: a */
    public final AbstractC16199d f44680a;

    /* renamed from: b */
    public final AbstractC16223e f44681b;

    /* renamed from: c */
    public final AbstractC16076s1 f44682c;

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.PlaybackMirrorHelperImpl", f = "PlaybackMirrorHelper.kt", l = {30}, m = "maybeMirrorLocalDataUri")
    /* renamed from: e.a.k.a.k.q$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/q$a.class */
    public static final class C15845a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44683d;

        /* renamed from: e */
        public int f44684e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15845a(d dVar) {
            super(dVar);
            C15844q.this = r4;
        }

        /* renamed from: s */
        public final Object m18255s(Object obj) {
            this.f44683d = obj;
            this.f44684e |= Integer.MIN_VALUE;
            return C15844q.this.m18260a(null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.PlaybackMirrorHelperImpl", f = "PlaybackMirrorHelper.kt", l = {53}, m = "maybeMirrorNumbersVideo")
    /* renamed from: e.a.k.a.k.q$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/q$b.class */
    public static final class C15846b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44686d;

        /* renamed from: e */
        public int f44687e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15846b(d dVar) {
            super(dVar);
            C15844q.this = r4;
        }

        /* renamed from: s */
        public final Object m18254s(Object obj) {
            this.f44686d = obj;
            this.f44687e |= Integer.MIN_VALUE;
            return C15844q.this.m18259b(null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.PlaybackMirrorHelperImpl", f = "PlaybackMirrorHelper.kt", l = {41, 45}, m = "maybeMirrorUrlVideo")
    /* renamed from: e.a.k.a.k.q$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/q$c.class */
    public static final class C15847c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44689d;

        /* renamed from: e */
        public int f44690e;

        /* renamed from: g */
        public Object f44692g;

        /* renamed from: h */
        public Object f44693h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15847c(d dVar) {
            super(dVar);
            C15844q.this = r4;
        }

        /* renamed from: s */
        public final Object m18253s(Object obj) {
            this.f44689d = obj;
            this.f44690e |= Integer.MIN_VALUE;
            return C15844q.this.m18258c(null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.PlaybackMirrorHelperImpl", f = "PlaybackMirrorHelper.kt", l = {34, 35}, m = "shouldMirrorAvatarPlayback")
    /* renamed from: e.a.k.a.k.q$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/q$d.class */
    public static final class C15848d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44694d;

        /* renamed from: e */
        public int f44695e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15848d(d dVar) {
            super(dVar);
            C15844q.this = r4;
        }

        /* renamed from: s */
        public final Object m18252s(Object obj) {
            this.f44694d = obj;
            this.f44695e |= Integer.MIN_VALUE;
            return C15844q.this.m18257d(null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.PlaybackMirrorHelperImpl", f = "PlaybackMirrorHelper.kt", l = {24, 25}, m = "shouldMirrorFullscreenPlayback")
    /* renamed from: e.a.k.a.k.q$e */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/q$e.class */
    public static final class C15849e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44697d;

        /* renamed from: e */
        public int f44698e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15849e(d dVar) {
            super(dVar);
            C15844q.this = r4;
        }

        /* renamed from: s */
        public final Object m18251s(Object obj) {
            this.f44697d = obj;
            this.f44698e |= Integer.MIN_VALUE;
            return C15844q.this.m18256e(null, this);
        }
    }

    @Inject
    public C15844q(AbstractC16199d abstractC16199d, AbstractC16223e abstractC16223e, AbstractC16076s1 abstractC16076s1) {
        l.e(abstractC16199d, "incomingVideoRepository");
        l.e(abstractC16223e, "outgoingVideoRepository");
        l.e(abstractC16076s1, "videoFileUtil");
        this.f44680a = abstractC16199d;
        this.f44681b = abstractC16223e;
        this.f44682c = abstractC16076s1;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18260a(android.net.Uri r7, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 199
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p964k.C15844q.m18260a(android.net.Uri, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18259b(java.lang.String r8, s1.w.d<? super java.lang.Boolean> r9) {
        /*
            Method dump skipped, instructions count: 193
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p964k.C15844q.m18259b(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0121  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18258c(java.lang.String r8, s1.w.d<? super java.lang.Boolean> r9) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p964k.C15844q.m18258c(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006b  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m18257d(p193e.p194a.p947k.p948a.p964k.AbstractC15816a r6, s1.w.d<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p964k.C15844q.m18257d(e.a.k.a.k.a, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006b  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m18256e(p193e.p194a.p947k.p948a.p964k.AbstractC15836l r6, s1.w.d<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p964k.C15844q.m18256e(e.a.k.a.k.l, s1.w.d):java.lang.Object");
    }
}
