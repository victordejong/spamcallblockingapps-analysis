package p193e.p194a.p947k.p969c;

import javax.inject.Inject;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p947k.p971l.C16120b;
import p193e.p194a.p947k.p973n.p976f.AbstractC16199d;
import p193e.p194a.p947k.p973n.p976f.C16200e;
import p193e.p194a.p947k.p973n.p976f.C16201f;
import p193e.p194a.p947k.p973n.p976f.C16208i;
import p193e.p194a.p947k.p973n.p978h.AbstractC16234a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.k.c.c0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/c0.class */
public final class C15961c0 implements AbstractC15955b0 {

    /* renamed from: a */
    public final AbstractC16067r0 f44986a;

    /* renamed from: b */
    public final AbstractC16199d f44987b;

    /* renamed from: c */
    public final AbstractC16234a f44988c;

    @e(c = "com.truecaller.videocallerid.utils.IncomingVideoProviderImpl", f = "IncomingVideoProvider.kt", l = {42, 43}, m = "provideIncomingVideo")
    /* renamed from: e.a.k.c.c0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/c0$a.class */
    public static final class C15962a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44989d;

        /* renamed from: e */
        public int f44990e;

        /* renamed from: g */
        public Object f44992g;

        /* renamed from: h */
        public Object f44993h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15962a(d dVar) {
            super(dVar);
            C15961c0.this = r4;
        }

        /* renamed from: s */
        public final Object m18090s(Object obj) {
            this.f44989d = obj;
            this.f44990e |= Integer.MIN_VALUE;
            return C15961c0.this.mo18093b(null, this);
        }
    }

    @Inject
    public C15961c0(AbstractC16067r0 abstractC16067r0, AbstractC16199d abstractC16199d, AbstractC16234a abstractC16234a) {
        l.e(abstractC16067r0, "videoCallerIdAvailability");
        l.e(abstractC16199d, "incomingVideoRepository");
        l.e(abstractC16234a, "predefinedVideosRepository");
        this.f44986a = abstractC16067r0;
        this.f44987b = abstractC16199d;
        this.f44988c = abstractC16234a;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15955b0
    /* renamed from: a */
    public Object mo18094a(C16120b c16120b, d<? super s> dVar) {
        Object obj = s.a;
        if (!m18091d()) {
            return obj;
        }
        C16201f c16201f = (C16201f) this.f44987b;
        Object m13546h1 = C19291g.m13546h1(c16201f.f45688b, new C16200e(c16201f, c16120b, null), dVar);
        Object obj2 = a.a;
        if (m13546h1 != obj2) {
            m13546h1 = obj;
        }
        return m13546h1 == obj2 ? m13546h1 : obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x011e  */
    @Override // p193e.p194a.p947k.p969c.AbstractC15955b0
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo18093b(java.lang.String r8, s1.w.d<? super p193e.p194a.p947k.p971l.C16120b> r9) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C15961c0.mo18093b(java.lang.String, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15955b0
    /* renamed from: c */
    public Object mo18092c(String str, d<? super s> dVar) {
        Object obj = s.a;
        if (!m18091d()) {
            return obj;
        }
        C16201f c16201f = (C16201f) this.f44987b;
        Object m13546h1 = C19291g.m13546h1(c16201f.f45688b, new C16208i(c16201f, str, null), dVar);
        Object obj2 = a.a;
        if (m13546h1 != obj2) {
            m13546h1 = obj;
        }
        return m13546h1 == obj2 ? m13546h1 : obj;
    }

    /* renamed from: d */
    public final boolean m18091d() {
        return this.f44986a.isAvailable();
    }
}
