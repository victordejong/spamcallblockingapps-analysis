package p193e.p194a.p717f.p734z;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.incallui.utils.FacsBehavior;
import com.truecaller.incallui.utils.FullscreenAcsConfig;
import com.truecaller.log.AssertionUtil;
import com.truecaller.settings.CallingSettings;
import e.m.e.k;
import javax.inject.Inject;
import javax.inject.Provider;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1126p2.AbstractC19212i;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p773g.AbstractC14235c;
import p193e.p194a.p773g.p785j.AbstractC14283h0;
import p193e.p194a.p947k.AbstractC16111h;
import p193e.p194a.p997k3.p1000l.AbstractC16498f;
import s1.g;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.f.z.e */
/* loaded from: classes10-dex2jar.jar:e/a/f/z/e.class */
public final class C13812e implements AbstractC13810d {

    /* renamed from: a */
    public final g f40055a = C25225a.m3978P1(new C13813a());

    /* renamed from: b */
    public final Provider<AbstractC14235c> f40056b;

    /* renamed from: c */
    public final Provider<CallingSettings> f40057c;

    /* renamed from: d */
    public final Provider<C20592g> f40058d;

    /* renamed from: e */
    public final Provider<AbstractC19230g> f40059e;

    /* renamed from: f */
    public final Provider<AbstractC19212i> f40060f;

    /* renamed from: g */
    public final Provider<AbstractC14283h0> f40061g;

    /* renamed from: h */
    public final Provider<AbstractC16498f> f40062h;

    /* renamed from: i */
    public final Provider<AbstractC16111h> f40063i;

    /* renamed from: e.a.f.z.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/z/e$a.class */
    public static final class C13813a extends m implements a<FullscreenAcsConfig> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13813a() {
            super(0);
            C13812e.this = r4;
        }

        public Object invoke() {
            FullscreenAcsConfig fullscreenAcsConfig;
            try {
                C20592g c20592g = (C20592g) C13812e.this.f40058d.get();
                fullscreenAcsConfig = (FullscreenAcsConfig) new k().f(((AbstractC20597i) c20592g.f57954j3.m10941a(c20592g, C20592g.f57695p6[218])).mo10938g(), FullscreenAcsConfig.class);
                if (fullscreenAcsConfig == null) {
                    AssertionUtil.reportWeirdnessButNeverCrash("Could not parse FACS config: Json null");
                    fullscreenAcsConfig = new FullscreenAcsConfig(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, Integer.MAX_VALUE, null);
                }
            } catch (Exception e) {
                StringBuilder m8728C = C22128a.m8728C("Could not parse FACS config: ");
                m8728C.append(e.getMessage());
                AssertionUtil.reportWeirdnessButNeverCrash(m8728C.toString());
                fullscreenAcsConfig = new FullscreenAcsConfig(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, Integer.MAX_VALUE, null);
            }
            return fullscreenAcsConfig;
        }
    }

    @e(c = "com.truecaller.incallui.utils.InCallUIAcsHelperImpl", f = "InCallUIAcsHelperImpl.kt", l = {73}, m = "getFacsBehaviour")
    /* renamed from: e.a.f.z.e$b */
    /* loaded from: classes10-dex2jar.jar:e/a/f/z/e$b.class */
    public static final class C13814b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f40065d;

        /* renamed from: e */
        public int f40066e;

        /* renamed from: g */
        public Object f40068g;

        /* renamed from: h */
        public boolean f40069h;

        /* renamed from: i */
        public boolean f40070i;

        /* renamed from: j */
        public boolean f40071j;

        /* renamed from: k */
        public int f40072k;

        /* renamed from: l */
        public int f40073l;

        /* renamed from: m */
        public int f40074m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13814b(d dVar) {
            super(dVar);
            C13812e.this = r4;
        }

        /* renamed from: s */
        public final Object m21048s(Object obj) {
            this.f40065d = obj;
            this.f40066e |= Integer.MIN_VALUE;
            return C13812e.this.m21049c(null, false, false, false, this);
        }
    }

    @Inject
    public C13812e(Context context, Provider<AbstractC14235c> provider, Provider<CallingSettings> provider2, Provider<C20592g> provider3, Provider<AbstractC19230g> provider4, Provider<AbstractC19212i> provider5, Provider<AbstractC14283h0> provider6, Provider<AbstractC16498f> provider7, Provider<AbstractC16111h> provider8) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(provider, "afterCallScreen");
        l.e(provider2, "callingSettings");
        l.e(provider3, "featuresRegistry");
        l.e(provider4, "deviceInfoUtil");
        l.e(provider5, "afterCallPromotionManager");
        l.e(provider6, "acsVisibilityHelper");
        l.e(provider7, "numberProvider");
        l.e(provider8, "videoCallerId");
        this.f40056b = provider;
        this.f40057c = provider2;
        this.f40058d = provider3;
        this.f40059e = provider4;
        this.f40060f = provider5;
        this.f40061g = provider6;
        this.f40062h = provider7;
        this.f40063i = provider8;
    }

    /* renamed from: a */
    public final FacsBehavior m21051a(int i, boolean z, boolean z2, FacsBehavior facsBehavior, FacsBehavior facsBehavior2, FacsBehavior facsBehavior3, FacsBehavior facsBehavior4, FacsBehavior facsBehavior5) {
        if (i != 1) {
            facsBehavior = i != 2 ? i != 3 ? FacsBehavior.DO_NOTHING : facsBehavior5 : facsBehavior4;
        } else if (z) {
            facsBehavior = z2 ? facsBehavior3 : facsBehavior2;
        }
        return facsBehavior;
    }

    /* renamed from: b */
    public final FullscreenAcsConfig m21050b() {
        return (FullscreenAcsConfig) this.f40055a.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02ed  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m21049c(com.truecaller.data.entity.HistoryEvent r11, boolean r12, boolean r13, boolean r14, s1.w.d<? super com.truecaller.incallui.utils.FacsBehavior> r15) {
        /*
            Method dump skipped, instructions count: 1045
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p734z.C13812e.m21049c(com.truecaller.data.entity.HistoryEvent, boolean, boolean, boolean, s1.w.d):java.lang.Object");
    }
}
