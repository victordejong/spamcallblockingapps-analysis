package p193e.p194a.p717f.p718a.p727t;

import com.truecaller.incallui.callui.callergradient.GradientColors;
import com.truecaller.incallui.service.CallState;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p717f.p731w.AbstractC13734c;
import p193e.p194a.p717f.p731w.AbstractC13738f;
import p193e.p194a.p717f.p733y.AbstractC13762c;
import p193e.p194a.p717f.p734z.AbstractC13802b;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15868b;
import p193e.p194a.p947k.p969c.AbstractC15964c2;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
/* renamed from: e.a.f.a.t.c */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/t/c.class */
public final class C13659c extends AbstractC20574a<AbstractC13658b> implements AbstractC13657a {

    /* renamed from: d */
    public p1 f39584d;

    /* renamed from: e */
    public EnumC13660a f39585e;

    /* renamed from: f */
    public final f f39586f;

    /* renamed from: g */
    public final AbstractC13762c f39587g;

    /* renamed from: h */
    public final AbstractC13802b f39588h;

    /* renamed from: i */
    public final AbstractC13734c f39589i;

    /* renamed from: j */
    public final AbstractC15964c2 f39590j;

    /* renamed from: e.a.f.a.t.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/t/c$a.class */
    public enum EnumC13660a {
        Business,
        P2P
    }

    @e(c = "com.truecaller.incallui.callui.callergradient.CallerGradientPresenter", f = "CallerGradientPresenter.kt", l = {67, 71, 72}, m = "maybeSubscribeToPlayingState")
    /* renamed from: e.a.f.a.t.c$b */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/t/c$b.class */
    public static final class C13661b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39594d;

        /* renamed from: e */
        public int f39595e;

        /* renamed from: g */
        public Object f39597g;

        /* renamed from: h */
        public Object f39598h;

        /* renamed from: i */
        public Object f39599i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13661b(d dVar) {
            super(dVar);
            C13659c.this = r4;
        }

        /* renamed from: s */
        public final Object m21343s(Object obj) {
            this.f39594d = obj;
            this.f39595e |= Integer.MIN_VALUE;
            return C13659c.this.m21346Jj(null, null, this);
        }
    }

    @e(c = "com.truecaller.incallui.callui.callergradient.CallerGradientPresenter$maybeSubscribeToPlayingState$2", f = "CallerGradientPresenter.kt", l = {86}, m = "invokeSuspend")
    /* renamed from: e.a.f.a.t.c$c */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/t/c$c.class */
    public static final class C13662c extends i implements p<AbstractC15868b, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f39600e;

        /* renamed from: f */
        public int f39601f;

        /* renamed from: h */
        public final /* synthetic */ CallState f39603h;

        /* renamed from: i */
        public final /* synthetic */ AbstractC13738f f39604i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13662c(CallState callState, AbstractC13738f abstractC13738f, d dVar) {
            super(2, dVar);
            C13659c.this = r5;
            this.f39603h = callState;
            this.f39604i = abstractC13738f;
        }

        /* renamed from: i */
        public final d<s> m21342i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C13662c c13662c = new C13662c(this.f39603h, this.f39604i, dVar);
            c13662c.f39600e = obj;
            return c13662c;
        }

        /* renamed from: k */
        public final Object m21341k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C13662c c13662c = new C13662c(this.f39603h, this.f39604i, dVar);
            c13662c.f39600e = obj;
            return c13662c.m21340s(s.a);
        }

        /* renamed from: s */
        public final Object m21340s(Object obj) {
            a aVar = a.a;
            int i = this.f39601f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC15868b abstractC15868b = (AbstractC15868b) this.f39600e;
                boolean z = (abstractC15868b instanceof AbstractC15868b.C15871c) || (abstractC15868b instanceof AbstractC15868b.C15874f) || (abstractC15868b instanceof AbstractC15868b.C15873e) || (abstractC15868b instanceof AbstractC15868b.C15869a);
                C13659c c13659c = C13659c.this;
                CallState callState = this.f39603h;
                AbstractC13738f abstractC13738f = this.f39604i;
                this.f39601f = 1;
                if (c13659c.m21345Kj(callState, abstractC13738f, z, this) == aVar) {
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

    @e(c = "com.truecaller.incallui.callui.callergradient.CallerGradientPresenter", f = "CallerGradientPresenter.kt", l = {108}, m = "refreshBackgroundGradient")
    /* renamed from: e.a.f.a.t.c$d */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/t/c$d.class */
    public static final class C13663d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39605d;

        /* renamed from: e */
        public int f39606e;

        /* renamed from: g */
        public Object f39608g;

        /* renamed from: h */
        public Object f39609h;

        /* renamed from: i */
        public Object f39610i;

        /* renamed from: j */
        public boolean f39611j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13663d(d dVar) {
            super(dVar);
            C13659c.this = r4;
        }

        /* renamed from: s */
        public final Object m21339s(Object obj) {
            this.f39605d = obj;
            this.f39606e |= Integer.MIN_VALUE;
            return C13659c.this.m21345Kj(null, null, false, this);
        }
    }

    @e(c = "com.truecaller.incallui.callui.callergradient.CallerGradientPresenter", f = "CallerGradientPresenter.kt", l = {92, 96}, m = "shouldShowVideoCallerId")
    /* renamed from: e.a.f.a.t.c$e */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/t/c$e.class */
    public static final class C13664e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39612d;

        /* renamed from: e */
        public int f39613e;

        /* renamed from: g */
        public Object f39615g;

        /* renamed from: h */
        public Object f39616h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13664e(d dVar) {
            super(dVar);
            C13659c.this = r4;
        }

        /* renamed from: s */
        public final Object m21338s(Object obj) {
            this.f39612d = obj;
            this.f39613e |= Integer.MIN_VALUE;
            return C13659c.this.m21344Lj(null, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C13659c(@Named("UI") f fVar, AbstractC13762c abstractC13762c, AbstractC13802b abstractC13802b, AbstractC13734c abstractC13734c, AbstractC15964c2 abstractC15964c2) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC13762c, "callManager");
        l.e(abstractC13802b, "fullScreenProfilePictureHelper");
        l.e(abstractC13734c, "callerInfoRepository");
        l.e(abstractC15964c2, "videoPlayerConfigProvider");
        this.f39586f = fVar;
        this.f39587g = abstractC13762c;
        this.f39588h = abstractC13802b;
        this.f39589i = abstractC13734c;
        this.f39590j = abstractC15964c2;
    }

    /* renamed from: Ij */
    public final GradientColors m21347Ij(CallState callState) {
        GradientColors gradientColors;
        int ordinal = callState.ordinal();
        if (ordinal != 2) {
            if (ordinal == 3) {
                gradientColors = GradientColors.FULL_SCREEN_PROFILE_PICTURE_INCOMING;
            } else if (ordinal != 4 && ordinal != 5) {
                gradientColors = null;
            }
            return gradientColors;
        }
        gradientColors = GradientColors.FULL_SCREEN_PROFILE_PICTURE_ONGOING;
        return gradientColors;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018e  */
    /* renamed from: Jj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21346Jj(p193e.p194a.p717f.p731w.AbstractC13738f r11, com.truecaller.incallui.service.CallState r12, s1.w.d<? super s1.s> r13) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p727t.C13659c.m21346Jj(e.a.f.w.f, com.truecaller.incallui.service.CallState, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0172  */
    /* renamed from: Kj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21345Kj(com.truecaller.incallui.service.CallState r7, p193e.p194a.p717f.p731w.AbstractC13738f r8, boolean r9, s1.w.d<? super s1.s> r10) {
        /*
            Method dump skipped, instructions count: 879
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p727t.C13659c.m21345Kj(com.truecaller.incallui.service.CallState, e.a.f.w.f, boolean, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0143  */
    /* renamed from: Lj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21344Lj(p193e.p194a.p717f.p718a.C13642g r9, s1.w.d<? super java.lang.Boolean> r10) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p727t.C13659c.m21344Lj(e.a.f.a.g, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.f.a.t.b, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC13658b abstractC13658b) {
        AbstractC13658b abstractC13658b2 = abstractC13658b;
        l.e(abstractC13658b2, "presenterView");
        this.f57683a = abstractC13658b2;
        c0 c0Var = new c0();
        c0Var.a = null;
        c0 c0Var2 = new c0();
        c0Var2.a = null;
        C19291g.m13599P0(this, this.f39587g.mo21199h(), new C13665d(this, c0Var, c0Var2, null));
        C19291g.m13599P0(this, this.f39589i.mo21236a(), new C13666e(this, c0Var2, c0Var, null));
    }
}
