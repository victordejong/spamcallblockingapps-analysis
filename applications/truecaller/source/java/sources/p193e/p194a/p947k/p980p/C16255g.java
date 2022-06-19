package p193e.p194a.p947k.p980p;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p947k.p969c.AbstractC15981e2;
import p193e.p194a.p947k.p969c.AbstractC16076s1;
import p193e.p194a.p947k.p969c.p970h2.AbstractC15997d;
import q3.a.b3.c;
import q3.a.b3.g;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.k.p.g */
/* loaded from: classes15-dex2jar.jar:e/a/k/p/g.class */
public final class C16255g extends AbstractC20574a<AbstractC16253e> implements AbstractC16252d {

    /* renamed from: d */
    public final c f45795d = g.a(false, 1);

    /* renamed from: e */
    public int f45796e;

    /* renamed from: f */
    public final f f45797f;

    /* renamed from: g */
    public final AbstractC15981e2 f45798g;

    /* renamed from: h */
    public final AbstractC16076s1 f45799h;

    /* renamed from: i */
    public final AbstractC15997d f45800i;

    @e(c = "com.truecaller.videocallerid.upload.VideoUploadServicePresenter", f = "VideoUploadServicePresenter.kt", l = {52, 68, 68}, m = "uploadVideo")
    /* renamed from: e.a.k.p.g$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/p/g$a.class */
    public static final class C16256a extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f45801d;

        /* renamed from: e */
        public int f45802e;

        /* renamed from: g */
        public Object f45804g;

        /* renamed from: h */
        public Object f45805h;

        /* renamed from: i */
        public Object f45806i;

        /* renamed from: j */
        public Object f45807j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16256a(d dVar) {
            super(dVar);
            C16255g.this = r4;
        }

        /* renamed from: s */
        public final Object m17666s(Object obj) {
            this.f45801d = obj;
            this.f45802e |= Integer.MIN_VALUE;
            return C16255g.this.m17667Ij(null, null, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C16255g(@Named("UI") f fVar, AbstractC15981e2 abstractC15981e2, AbstractC16076s1 abstractC16076s1, AbstractC15997d abstractC15997d) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC15981e2, "videoUploadUtil");
        l.e(abstractC16076s1, "videoFileUtil");
        l.e(abstractC15997d, "analyticsUtil");
        this.f45797f = fVar;
        this.f45798g = abstractC15981e2;
        this.f45799h = abstractC16076s1;
        this.f45800i = abstractC15997d;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(21:2|(2:4|(18:6|8|(2:10|(2:12|(2:14|(8:16|106|107|(2:111|(1:113))|114|(1:118)|119|120)(2:17|18))(8:19|65|66|(2:70|(1:72))|73|(1:77)|78|79))(3:20|124|21))(5:24|126|25|26|(2:28|29)(1:30))|121|31|32|123|33|(2:35|(1:37))(2:38|(1:42))|43|44|(6:46|(1:48)(1:49)|50|(1:57)(1:56)|58|(2:60|(2:62|63)(2:64|65)))|66|(3:68|70|(0))|73|(2:75|77)|78|79))|7|8|(0)(0)|121|31|32|123|33|(0)(0)|43|44|(0)|66|(0)|73|(0)|78|79|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x0331, code lost:
        if (r16 != null) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0334, code lost:
        r0 = r14.f45799h;
        r9.f45804g = r14;
        r9.f45805h = r8;
        r9.f45806i = r6;
        r9.f45807j = r7;
        r9.f45802e = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0368, code lost:
        if (((p193e.p194a.p947k.p969c.C15942a) r0).m18113d(r16, r9) == r0) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x036d, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x036e, code lost:
        r0 = r14;
        r14 = r6;
        r6 = r8;
        r8 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x02a5, code lost:
        r15 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x02a7, code lost:
        r14 = r7;
        r7 = r15;
        r6 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x02b0, code lost:
        r15 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x02b2, code lost:
        r6 = r14;
        r14 = r7;
        r7 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x02df, code lost:
        if ((r6 instanceof com.truecaller.videocallerid.utils.OwnVideoUploadResult.C4769a) == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x02e2, code lost:
        r15 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x02e8, code lost:
        r15 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x02eb, code lost:
        r0 = r15;
        r16 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x02f8, code lost:
        if (r0 != null) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x02fb, code lost:
        r0 = r0.f16182b;
        r16 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0308, code lost:
        if (r0 != null) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x030b, code lost:
        r0 = r0.f45285a;
        r16 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0318, code lost:
        if (r0 != null) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x031b, code lost:
        r16 = r0.getAbsolutePath();
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0322, code lost:
        r17 = r6;
        r18 = r14;
        r11 = r8;
        r15 = r7;
     */
    /* JADX WARN: Removed duplicated region for block: B:109:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0166 A[Catch: all -> 0x02a5, TRY_LEAVE, TryCatch #1 {all -> 0x02a5, blocks: (B:33:0x0160, B:35:0x0166, B:37:0x0174, B:38:0x0181, B:40:0x0188, B:42:0x0196), top: B:123:0x0160 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0181 A[Catch: all -> 0x02a5, TRY_ENTER, TryCatch #1 {all -> 0x02a5, blocks: (B:33:0x0160, B:35:0x0166, B:37:0x0174, B:38:0x0181, B:40:0x0188, B:42:0x0196), top: B:123:0x0160 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02db  */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m17667Ij(com.truecaller.videocallerid.utils.analytics.OnboardingData r6, java.lang.String r7, s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 996
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p980p.C16255g.m17667Ij(com.truecaller.videocallerid.utils.analytics.OnboardingData, java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.k.p.e, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC16253e abstractC16253e) {
        AbstractC16253e abstractC16253e2 = abstractC16253e;
        l.e(abstractC16253e2, "presenterView");
        this.f57683a = abstractC16253e2;
        abstractC16253e2.mo17674a(null, null);
    }
}
