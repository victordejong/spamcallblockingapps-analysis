package p193e.p194a.p947k.p948a.p962i;

import com.truecaller.videocallerid.C4718R;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p947k.p948a.p958f.C15696g;
import p193e.p194a.p947k.p969c.AbstractC15966d0;
import p193e.p194a.p947k.p969c.AbstractC15992h0;
import p193e.p194a.p947k.p969c.AbstractC16067r0;
import p193e.p194a.p947k.p973n.p978h.AbstractC16234a;
import p193e.p194a.p947k.p980p.AbstractC16249b;
import q3.a.j0;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.k.a.i.f */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/i/f.class */
public final class C15795f extends AbstractC20574a<AbstractC15792c> implements AbstractC15791b {

    /* renamed from: d */
    public final f f44553d;

    /* renamed from: e */
    public final AbstractC16067r0 f44554e;

    /* renamed from: f */
    public final AbstractC15966d0 f44555f;

    /* renamed from: g */
    public final C15696g f44556g;

    /* renamed from: h */
    public final AbstractC15992h0 f44557h;

    /* renamed from: i */
    public final AbstractC16234a f44558i;

    /* renamed from: j */
    public final AbstractC16249b f44559j;

    /* renamed from: k */
    public final AbstractC19223c0 f44560k;

    @e(c = "com.truecaller.videocallerid.ui.settings.VideoCallerIdSettingViewPresenter", f = "VideoCallerIdSettingViewPresenter.kt", l = {93, 95}, m = "setShowYourVideoCallerIdInitialSettings")
    /* renamed from: e.a.k.a.i.f$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/i/f$a.class */
    public static final class C15796a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44561d;

        /* renamed from: e */
        public int f44562e;

        /* renamed from: g */
        public Object f44564g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15796a(d dVar) {
            super(dVar);
            C15795f.this = r4;
        }

        /* renamed from: s */
        public final Object m18293s(Object obj) {
            this.f44561d = obj;
            this.f44562e |= Integer.MIN_VALUE;
            return C15795f.this.m18296Ij(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.settings.VideoCallerIdSettingViewPresenter", f = "VideoCallerIdSettingViewPresenter.kt", l = {135}, m = "setUpShowYourVideoConfigureButton")
    /* renamed from: e.a.k.a.i.f$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/i/f$b.class */
    public static final class C15797b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44565d;

        /* renamed from: e */
        public int f44566e;

        /* renamed from: g */
        public Object f44568g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15797b(d dVar) {
            super(dVar);
            C15795f.this = r4;
        }

        /* renamed from: s */
        public final Object m18292s(Object obj) {
            this.f44565d = obj;
            this.f44566e |= Integer.MIN_VALUE;
            return C15795f.this.m18295Jj(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.settings.VideoCallerIdSettingViewPresenter", f = "VideoCallerIdSettingViewPresenter.kt", l = {99, 104}, m = "setupPreviewMode")
    /* renamed from: e.a.k.a.i.f$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/i/f$c.class */
    public static final class C15798c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44569d;

        /* renamed from: e */
        public int f44570e;

        /* renamed from: g */
        public Object f44572g;

        /* renamed from: h */
        public Object f44573h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15798c(d dVar) {
            super(dVar);
            C15795f.this = r4;
        }

        /* renamed from: s */
        public final Object m18291s(Object obj) {
            this.f44569d = obj;
            this.f44570e |= Integer.MIN_VALUE;
            return C15795f.this.m18294Kj(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C15795f(@Named("UI") f fVar, AbstractC16067r0 abstractC16067r0, AbstractC15966d0 abstractC15966d0, C15696g c15696g, AbstractC15992h0 abstractC15992h0, AbstractC16234a abstractC16234a, AbstractC16249b abstractC16249b, AbstractC19223c0 abstractC19223c0) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC16067r0, "availability");
        l.e(abstractC15966d0, "outgoingVideoProvider");
        l.e(c15696g, "previewConfigGenerator");
        l.e(abstractC15992h0, "receiveVideoSettingManager");
        l.e(abstractC16234a, "predefinedVideosRepository");
        l.e(abstractC16249b, "uploadStateHolder");
        l.e(abstractC19223c0, "resourceProvider");
        this.f44553d = fVar;
        this.f44554e = abstractC16067r0;
        this.f44555f = abstractC15966d0;
        this.f44556g = c15696g;
        this.f44557h = abstractC15992h0;
        this.f44558i = abstractC16234a;
        this.f44559j = abstractC16249b;
        this.f44560k = abstractC19223c0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b0, code lost:
        if (((java.lang.Boolean) r9).booleanValue() == false) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0070  */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m18296Ij(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p962i.C15795f.m18296Ij(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b1  */
    /* renamed from: Jj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m18295Jj(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p962i.C15795f.m18295Jj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0147  */
    /* renamed from: Kj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18294Kj(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p962i.C15795f.m18294Kj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.k.a.i.c, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC15792c abstractC15792c) {
        AbstractC15792c abstractC15792c2 = abstractC15792c;
        l.e(abstractC15792c2, "presenterView");
        this.f57683a = abstractC15792c2;
        abstractC15792c2.mo18306b0(this.f44554e.isAvailable());
        abstractC15792c2.setReceiveVideoDescription(this.f44554e.isAvailable() ? C4718R.string.vid_settings_receive_video_description : C4718R.string.vid_settings_receive_video_description_for_business);
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C15799g(this, null), 3, (Object) null);
    }
}
