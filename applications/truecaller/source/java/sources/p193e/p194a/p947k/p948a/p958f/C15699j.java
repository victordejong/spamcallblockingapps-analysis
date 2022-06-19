package p193e.p194a.p947k.p948a.p958f;

import com.tenor.android.core.constant.StringConstant;
import com.truecaller.videocallerid.p187ui.preview.PreviewActions;
import com.truecaller.videocallerid.p187ui.preview.PreviewModes;
import com.truecaller.videocallerid.p187ui.recording.RecordingScreenModes;
import com.truecaller.videocallerid.utils.analytics.OnboardingData;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1129p5.C19249n0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p416j.AbstractC8480b;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p947k.p969c.AbstractC15966d0;
import p193e.p194a.p947k.p969c.AbstractC16031n0;
import p193e.p194a.p947k.p969c.AbstractC16067r0;
import p193e.p194a.p947k.p969c.p970h2.AbstractC15997d;
import p193e.p194a.p947k.p980p.AbstractC16249b;
import q3.a.j0;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.k.a.f.j */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/f/j.class */
public final class C15699j extends AbstractC20574a<AbstractC15697h> implements Object {

    /* renamed from: d */
    public OnboardingData f44273d;

    /* renamed from: e */
    public final f f44274e;

    /* renamed from: f */
    public final AbstractC16249b f44275f;

    /* renamed from: g */
    public final AbstractC16067r0 f44276g;

    /* renamed from: h */
    public final AbstractC15966d0 f44277h;

    /* renamed from: i */
    public final AbstractC8541a f44278i;

    /* renamed from: j */
    public final AbstractC8438a f44279j;

    /* renamed from: k */
    public final AbstractC8480b f44280k;

    /* renamed from: l */
    public final C15696g f44281l;

    /* renamed from: m */
    public final AbstractC16031n0 f44282m;

    /* renamed from: n */
    public final C19249n0 f44283n;

    /* renamed from: o */
    public final AbstractC15997d f44284o;

    @e(c = "com.truecaller.videocallerid.ui.preview.PreviewPresenter", f = "PreviewPresenter.kt", l = {186}, m = "getCountryName")
    /* renamed from: e.a.k.a.f.j$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/f/j$a.class */
    public static final class C15700a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44285d;

        /* renamed from: e */
        public int f44286e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15700a(d dVar) {
            super(dVar);
            C15699j.this = r4;
        }

        /* renamed from: s */
        public final Object m18480s(Object obj) {
            this.f44285d = obj;
            this.f44286e |= Integer.MIN_VALUE;
            return C15699j.this.m18487Jj(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.preview.PreviewPresenter", f = "PreviewPresenter.kt", l = {82}, m = "setupPreviewScreen")
    /* renamed from: e.a.k.a.f.j$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/f/j$b.class */
    public static final class C15701b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44288d;

        /* renamed from: e */
        public int f44289e;

        /* renamed from: g */
        public Object f44291g;

        /* renamed from: h */
        public Object f44292h;

        /* renamed from: i */
        public Object f44293i;

        /* renamed from: j */
        public boolean f44294j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15701b(d dVar) {
            super(dVar);
            C15699j.this = r4;
        }

        /* renamed from: s */
        public final Object m18479s(Object obj) {
            this.f44288d = obj;
            this.f44289e |= Integer.MIN_VALUE;
            return C15699j.this.m18482Oj(false, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C15699j(@Named("UI") f fVar, AbstractC16249b abstractC16249b, AbstractC16067r0 abstractC16067r0, AbstractC15966d0 abstractC15966d0, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, AbstractC8480b abstractC8480b, C15696g c15696g, AbstractC16031n0 abstractC16031n0, C19249n0 c19249n0, AbstractC15997d abstractC15997d) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC16249b, "readVideoUploadingState");
        l.e(abstractC16067r0, "availability");
        l.e(abstractC15966d0, "outgoingVideoProvider");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC8480b, "countryRepository");
        l.e(c15696g, "previewConfigGenerator");
        l.e(abstractC16031n0, "updatePredefinedOutgoingVideoManager");
        l.e(c19249n0, "uuidUtil");
        l.e(abstractC15997d, "analyticsUtil");
        this.f44274e = fVar;
        this.f44275f = abstractC16249b;
        this.f44276g = abstractC16067r0;
        this.f44277h = abstractC15966d0;
        this.f44278i = abstractC8541a;
        this.f44279j = abstractC8438a;
        this.f44280k = abstractC8480b;
        this.f44281l = c15696g;
        this.f44282m = abstractC16031n0;
        this.f44283n = c19249n0;
        this.f44284o = abstractC15997d;
    }

    /* renamed from: Ij */
    public static final boolean m18488Ij(C15699j c15699j) {
        AbstractC15697h abstractC15697h = (AbstractC15697h) c15699j.f57683a;
        return (abstractC15697h != null ? abstractC15697h.mo18497k7() : null) != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009b  */
    /* renamed from: Jj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18487Jj(s1.w.d<? super java.lang.String> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p947k.p948a.p958f.C15699j.C15700a
            if (r0 == 0) goto L25
            r0 = r6
            e.a.k.a.f.j$a r0 = (p193e.p194a.p947k.p948a.p958f.C15699j.C15700a) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f44286e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f44286e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.k.a.f.j$a r0 = new e.a.k.a.f.j$a
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f44285d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f44286e
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
            goto L8a
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
            e.a.b0.j.b r0 = r0.f44280k
            r7 = r0
            r0 = r5
            e.a.b0.e.r.a r0 = r0.f44279j
            java.lang.String r1 = "profileCountryIso"
            java.lang.String r0 = r0.getString(r1)
            r10 = r0
            r0 = r6
            r1 = 1
            r0.f44286e = r1
            r0 = r7
            r1 = r10
            r2 = r6
            java.lang.Object r0 = r0.mo28480f(r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L8a
            r0 = r9
            return r0
        L8a:
            r0 = r6
            com.truecaller.common.network.country.CountryListDto$a r0 = (com.truecaller.common.network.country.CountryListDto.C3679a) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L9b
            r0 = r6
            java.lang.String r0 = r0.f10911b
            r6 = r0
            goto L9d
        L9b:
            r0 = 0
            r6 = r0
        L9d:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p958f.C15699j.m18487Jj(s1.w.d):java.lang.Object");
    }

    /* renamed from: Kj */
    public final String m18486Kj() {
        return C19231g0.m13810G(this.f44278i.getString("profileNationalNumber"), this.f44279j.getString("profileNumber"));
    }

    /* renamed from: Lj */
    public PreviewModes m18485Lj() {
        PreviewModes previewModes;
        AbstractC15697h abstractC15697h = (AbstractC15697h) this.f57683a;
        PreviewModes previewModes2 = null;
        String mo18502d7 = abstractC15697h != null ? abstractC15697h.mo18502d7() : null;
        PreviewModes previewModes3 = PreviewModes.PREVIEW;
        if (l.a(mo18502d7, previewModes3.name())) {
            previewModes = previewModes3;
        } else {
            PreviewModes previewModes4 = PreviewModes.ON_BOARDING;
            if (!l.a(mo18502d7, previewModes4.name())) {
                PreviewModes previewModes5 = PreviewModes.UPDATE;
                if (l.a(mo18502d7, previewModes5.name())) {
                    previewModes = previewModes5;
                }
                return previewModes2;
            }
            previewModes = previewModes4;
        }
        previewModes2 = previewModes;
        return previewModes2;
    }

    /* renamed from: Mj */
    public final String m18484Mj(AbstractC8541a abstractC8541a) {
        String m13813D = C19231g0.m13813D(StringConstant.SPACE, abstractC8541a.getString("profileFirstName"), abstractC8541a.getString("profileLastName"));
        l.d(m13813D, "StringUtils.combine(\" \",…ttings.PROFILE_LASTNAME))");
        return m13813D;
    }

    /* renamed from: Nj */
    public void m18483Nj(String str, PreviewActions previewActions) {
        l.e(str, "screenMode");
        if (l.a(str, PreviewModes.ON_BOARDING.name())) {
            AbstractC15697h abstractC15697h = (AbstractC15697h) this.f57683a;
            if (abstractC15697h == null || abstractC15697h.mo18504O5(this.f44273d)) {
                return;
            }
            AbstractC15697h abstractC15697h2 = (AbstractC15697h) this.f57683a;
            if (abstractC15697h2 != null) {
                abstractC15697h2.mo18506J(RecordingScreenModes.RECORDING, this.f44273d);
            }
            AbstractC15697h abstractC15697h3 = (AbstractC15697h) this.f57683a;
            if (abstractC15697h3 == null) {
                return;
            }
            abstractC15697h3.mo18493t();
        } else if (previewActions == PreviewActions.RETRY_UPLOAD) {
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C15704m(this, null), 3, (Object) null);
        } else if (l.a(str, PreviewModes.PREVIEW.name())) {
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C15698i(this, null), 3, (Object) null);
        } else if (!l.a(str, PreviewModes.UPDATE.name())) {
            throw new IllegalStateException("Invalid preview screen mode or action");
        } else {
            AbstractC15697h abstractC15697h4 = (AbstractC15697h) this.f57683a;
            if (abstractC15697h4 != null) {
                abstractC15697h4.mo18498k3();
            }
            AbstractC15697h abstractC15697h5 = (AbstractC15697h) this.f57683a;
            if (abstractC15697h5 == null) {
                return;
            }
            abstractC15697h5.mo18493t();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0144 A[LOOP:0: B:28:0x013a->B:30:0x0144, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0181 A[SYNTHETIC] */
    /* renamed from: Oj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18482Oj(boolean r22, s1.w.d<? super s1.s> r23) {
        /*
            Method dump skipped, instructions count: 472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p958f.C15699j.m18482Oj(boolean, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0016, code lost:
        if (r6 != null) goto L14;
     */
    /* renamed from: Pj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m18481Pj(boolean r5) {
        /*
            r4 = this;
            r0 = r4
            PV r0 = r0.f57683a
            e.a.k.a.f.h r0 = (p193e.p194a.p947k.p948a.p958f.AbstractC15697h) r0
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L1c
            r0 = r6
            java.lang.String r0 = r0.mo18496k9()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L1c
            goto L46
        L1c:
            r0 = r4
            PV r0 = r0.f57683a
            e.a.k.a.f.h r0 = (p193e.p194a.p947k.p948a.p958f.AbstractC15697h) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L44
            r0 = r6
            com.truecaller.videocallerid.data.OutgoingVideoDetails r0 = r0.mo18497k7()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L44
            r0 = r6
            com.truecaller.videocallerid.data.VideoDetails r0 = r0.f16001c
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L44
            r0 = r6
            java.lang.String r0 = r0.f16003a
            r6 = r0
            goto L46
        L44:
            r0 = 0
            r6 = r0
        L46:
            r0 = r4
            e.a.k.a.f.g r0 = r0.f44281l
            r1 = r6
            e.a.k.a.k.l r0 = r0.m18510a(r1)
            r8 = r0
            r0 = r5
            if (r0 == 0) goto L5b
            com.truecaller.videocallerid.ui.view.PreviewVideoType r0 = com.truecaller.videocallerid.p187ui.view.PreviewVideoType.PredefinedVideo
            r6 = r0
            goto L82
        L5b:
            r0 = r4
            PV r0 = r0.f57683a
            e.a.k.a.f.h r0 = (p193e.p194a.p947k.p948a.p958f.AbstractC15697h) r0
            r9 = r0
            r0 = r7
            r6 = r0
            r0 = r9
            if (r0 == 0) goto L73
            r0 = r9
            java.lang.String r0 = r0.mo18496k9()
            r6 = r0
        L73:
            r0 = r6
            if (r0 == 0) goto L7e
            com.truecaller.videocallerid.ui.view.PreviewVideoType r0 = com.truecaller.videocallerid.p187ui.view.PreviewVideoType.SelfieVideo
            r6 = r0
            goto L82
        L7e:
            com.truecaller.videocallerid.ui.view.PreviewVideoType r0 = com.truecaller.videocallerid.p187ui.view.PreviewVideoType.StockVideo
            r6 = r0
        L82:
            r0 = r4
            PV r0 = r0.f57683a
            e.a.k.a.f.h r0 = (p193e.p194a.p947k.p948a.p958f.AbstractC15697h) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L97
            r0 = r7
            r1 = r8
            r2 = r6
            r0.mo18501f(r1, r2)
        L97:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p958f.C15699j.m18481Pj(boolean):void");
    }
}
