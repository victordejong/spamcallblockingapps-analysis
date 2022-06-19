package p193e.p194a.p717f.p718a;

import com.truecaller.incallui.C4013R;
import com.truecaller.multisim.SimInfo;
import javax.inject.Named;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1064m5.AbstractC18240c;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p717f.p718a.AbstractC13638e;
import p193e.p194a.p717f.p734z.AbstractC13801a0;
import p193e.p194a.p717f.p734z.AbstractC13830m;
import p193e.p194a.p717f.p734z.C13827k0;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.f.a.f */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/f.class */
public abstract class AbstractC13639f<T extends AbstractC13638e> extends AbstractC20574a<T> implements AbstractC13637d<T> {

    /* renamed from: d */
    public AbstractC18240c f39497d;

    /* renamed from: e */
    public final f f39498e;

    /* renamed from: f */
    public final AbstractC13497p f39499f;

    /* renamed from: g */
    public final AbstractC13830m f39500g;

    /* renamed from: h */
    public final AbstractC13801a0 f39501h;

    @e(c = "com.truecaller.incallui.callui.BaseCallPresenter", f = "BaseCallPresenter.kt", l = {69}, m = "maybeShowCallerLabel")
    /* renamed from: e.a.f.a.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/f$a.class */
    public static final class C13640a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39502d;

        /* renamed from: e */
        public int f39503e;

        /* renamed from: g */
        public Object f39505g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13640a(d dVar) {
            super(dVar);
            AbstractC13639f.this = r4;
        }

        /* renamed from: s */
        public final Object m21398s(Object obj) {
            this.f39502d = obj;
            this.f39503e |= Integer.MIN_VALUE;
            return AbstractC13639f.this.m21403Kj(null, this);
        }
    }

    @e(c = "com.truecaller.incallui.callui.BaseCallPresenter", f = "BaseCallPresenter.kt", l = {119}, m = "maybeShowTrueContext")
    /* renamed from: e.a.f.a.f$b */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/f$b.class */
    public static final class C13641b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39506d;

        /* renamed from: e */
        public int f39507e;

        /* renamed from: g */
        public Object f39509g;

        /* renamed from: h */
        public Object f39510h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13641b(d dVar) {
            super(dVar);
            AbstractC13639f.this = r4;
        }

        /* renamed from: s */
        public final Object m21397s(Object obj) {
            this.f39506d = obj;
            this.f39507e |= Integer.MIN_VALUE;
            return AbstractC13639f.this.m21401Mj(null, false, false, false, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC13639f(@Named("UI") f fVar, AbstractC13497p abstractC13497p, AbstractC13830m abstractC13830m, AbstractC13801a0 abstractC13801a0) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC13497p, "multiSimManager");
        l.e(abstractC13830m, "callerLabelFactory");
        l.e(abstractC13801a0, "trueContextPresenterProvider");
        this.f39498e = fVar;
        this.f39499f = abstractC13497p;
        this.f39500g = abstractC13830m;
        this.f39501h = abstractC13801a0;
    }

    /* renamed from: Ij */
    public final void m21405Ij(C13642g c13642g, boolean z) {
        l.e(c13642g, "$this$loadProfilePicture");
        if (z) {
            AbstractC13638e abstractC13638e = (AbstractC13638e) this.f57683a;
            if (abstractC13638e == null) {
                return;
            }
            abstractC13638e.mo21423Yn();
            return;
        }
        C13827k0 c13827k0 = new C13827k0(c13642g.f39513c, c13642g.f39515e, null, C17891a1.C17902k.m15693B(c13642g.f39511a), c13642g.f39521k || c13642g.f39524n != null, false, false, C17891a1.C17902k.m15683E0(c13642g), C17891a1.C17902k.m15557y0(c13642g), c13642g.f39530t, null, c13642g.f39531u, c13642g.f39528r, c13642g.f39535y, 1124);
        AbstractC13638e abstractC13638e2 = (AbstractC13638e) this.f57683a;
        if (abstractC13638e2 == null) {
            return;
        }
        abstractC13638e2.mo21447C3(c13827k0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x006e, code lost:
        if (s1.f0.r.p(r0) != false) goto L25;
     */
    /* renamed from: Jj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21404Jj(p193e.p194a.p717f.p718a.C13642g r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "callerInfo"
            s1.z.c.l.e(r0, r1)
            r0 = r4
            com.truecaller.data.entity.Contact r0 = r0.f39533w
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L17
            r0 = r5
            java.lang.String r0 = r0.m35518f0()
            r5 = r0
            goto L19
        L17:
            r0 = 0
            r5 = r0
        L19:
            r0 = r4
            boolean r0 = r0.f39526p
            if (r0 != 0) goto L8f
            r0 = r4
            boolean r0 = r0.f39529s
            if (r0 == 0) goto L2a
            goto L8f
        L2a:
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L40
            r0 = r5
            boolean r0 = s1.f0.r.p(r0)
            if (r0 == 0) goto L3a
            goto L40
        L3a:
            r0 = 0
            r7 = r0
            goto L43
        L40:
            r0 = 1
            r7 = r0
        L43:
            r0 = r7
            if (r0 != 0) goto L5e
            r0 = r3
            PV r0 = r0.f57683a
            e.a.f.a.e r0 = (p193e.p194a.p717f.p718a.AbstractC13638e) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L8f
            r0 = r4
            r1 = r5
            r0.setAltName(r1)
            goto L8f
        L5e:
            r0 = r4
            java.lang.String r0 = r0.f39512b
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L71
            r0 = r6
            r7 = r0
            r0 = r5
            boolean r0 = s1.f0.r.p(r0)
            if (r0 == 0) goto L74
        L71:
            r0 = 1
            r7 = r0
        L74:
            r0 = r7
            if (r0 != 0) goto L8f
            r0 = r3
            PV r0 = r0.f57683a
            e.a.f.a.e r0 = (p193e.p194a.p717f.p718a.AbstractC13638e) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L8f
            r0 = r5
            r1 = r4
            java.lang.String r1 = r1.f39512b
            r0.setAltName(r1)
        L8f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.AbstractC13639f.m21404Jj(e.a.f.a.g):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00fe  */
    /* renamed from: Kj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21403Kj(p193e.p194a.p717f.p718a.C13642g r7, s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.AbstractC13639f.m21403Kj(e.a.f.a.g, s1.w.d):java.lang.Object");
    }

    /* renamed from: Lj */
    public final void m21402Lj(C13642g c13642g) {
        AbstractC13638e abstractC13638e;
        l.e(c13642g, "callerInfo");
        if (c13642g.f39519i == null || c13642g.f39526p || m21399Oj(c13642g) || (abstractC13638e = (AbstractC13638e) this.f57683a) == null) {
            return;
        }
        abstractC13638e.mo21409vl(c13642g.f39519i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0137, code lost:
        if (r12 != null) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x014a  */
    /* renamed from: Mj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21401Mj(p193e.p194a.p717f.p718a.C13642g r12, boolean r13, boolean r14, boolean r15, s1.w.d<? super s1.s> r16) {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.AbstractC13639f.m21401Mj(e.a.f.a.g, boolean, boolean, boolean, s1.w.d):java.lang.Object");
    }

    /* renamed from: Nj */
    public final void m21400Nj() {
        Integer mo21421f8;
        if (!this.f39499f.mo21740h()) {
            AbstractC13638e abstractC13638e = (AbstractC13638e) this.f57683a;
            if (abstractC13638e == null) {
                return;
            }
            abstractC13638e.mo21446C5();
            return;
        }
        AbstractC13638e abstractC13638e2 = (AbstractC13638e) this.f57683a;
        if (abstractC13638e2 == null || (mo21421f8 = abstractC13638e2.mo21421f8()) == null) {
            return;
        }
        int intValue = mo21421f8.intValue();
        SimInfo mo21741e = this.f39499f.mo21741e(intValue);
        String str = mo21741e != null ? mo21741e.f13986d : null;
        if (intValue == 0) {
            AbstractC13638e abstractC13638e3 = (AbstractC13638e) this.f57683a;
            if (abstractC13638e3 == null) {
                return;
            }
            abstractC13638e3.mo21408xh(str, C4013R.C4014drawable.ic_sim_1_large_font_16dp);
        } else if (intValue != 1) {
            AbstractC13638e abstractC13638e4 = (AbstractC13638e) this.f57683a;
            if (abstractC13638e4 == null) {
                return;
            }
            abstractC13638e4.mo21446C5();
        } else {
            AbstractC13638e abstractC13638e5 = (AbstractC13638e) this.f57683a;
            if (abstractC13638e5 == null) {
                return;
            }
            abstractC13638e5.mo21408xh(str, C4013R.C4014drawable.ic_sim_2_large_font_16dp);
        }
    }

    /* renamed from: Oj */
    public final boolean m21399Oj(C13642g c13642g) {
        l.e(c13642g, "callerInfo");
        return c13642g.f39530t || c13642g.f39528r;
    }
}
