package p193e.p194a.p682e.p684b.p696p;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.p183ui.settings.troubleshoot.TroubleshootOption;
import java.util.HashMap;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p613c0.C10912h;
import p193e.p194a.p851h5.AbstractC14946m;
import p193e.p194a.p851h5.AbstractC14965w;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.u.u;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.e.b.p.g */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/p/g.class */
public final class C13041g extends AbstractC20574a<AbstractC13040f> implements AbstractC13039e {

    /* renamed from: d */
    public Set<? extends TroubleshootOption> f37872d = u.a;

    /* renamed from: e */
    public final f f37873e;

    /* renamed from: f */
    public final AbstractC19219a0 f37874f;

    /* renamed from: g */
    public final AbstractC19230g f37875g;

    /* renamed from: h */
    public final AbstractC14946m f37876h;

    /* renamed from: i */
    public final AbstractC19462a f37877i;

    /* renamed from: j */
    public final CallRecordingManager f37878j;

    /* renamed from: k */
    public final AbstractC14965w f37879k;

    /* renamed from: l */
    public final C20592g f37880l;

    /* renamed from: m */
    public final C10912h f37881m;

    @e(c = "com.truecaller.ui.settings.troubleshoot.TroubleshootSettingsPresenter$onCallerIdAppPressed$1", f = "TroubleshootSettingsPresenter.kt", l = {67}, m = "invokeSuspend")
    /* renamed from: e.a.e.b.p.g$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/p/g$a.class */
    public static final class C13042a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f37882e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13042a(d dVar) {
            super(2, dVar);
            C13041g.this = r5;
        }

        /* renamed from: i */
        public final d<s> m22110i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C13042a(dVar);
        }

        /* renamed from: k */
        public final Object m22109k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C13042a(dVar).m22108s(s.a);
        }

        /* renamed from: s */
        public final Object m22108s(Object obj) {
            a aVar = a.a;
            int i = this.f37882e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC14946m abstractC14946m = C13041g.this.f37876h;
                this.f37882e = 1;
                Object mo19387d = abstractC14946m.mo19387d(this);
                obj = mo19387d;
                if (mo19387d == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (((Boolean) obj).booleanValue()) {
                C13041g.this.m22118Jj();
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.ui.settings.troubleshoot.TroubleshootSettingsPresenter$onDefaultDialerPressed$1", f = "TroubleshootSettingsPresenter.kt", l = {81}, m = "invokeSuspend")
    /* renamed from: e.a.e.b.p.g$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/p/g$b.class */
    public static final class C13043b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f37884e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13043b(d dVar) {
            super(2, dVar);
            C13041g.this = r5;
        }

        /* renamed from: i */
        public final d<s> m22107i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C13043b(dVar);
        }

        /* renamed from: k */
        public final Object m22106k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C13043b(dVar).m22105s(s.a);
        }

        /* renamed from: s */
        public final Object m22105s(Object obj) {
            a aVar = a.a;
            int i = this.f37884e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC14946m abstractC14946m = C13041g.this.f37876h;
                this.f37884e = 1;
                Object mo19384g = abstractC14946m.mo19384g(this);
                obj = mo19384g;
                if (mo19384g == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (((Boolean) obj).booleanValue()) {
                C13041g.this.m22118Jj();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C13041g(@Named("UI") f fVar, AbstractC19219a0 abstractC19219a0, AbstractC19230g abstractC19230g, AbstractC14946m abstractC14946m, AbstractC19462a abstractC19462a, CallRecordingManager callRecordingManager, AbstractC14965w abstractC14965w, C20592g c20592g, C10912h c10912h) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC14946m, "roleRequester");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(callRecordingManager, "callRecordingManager");
        l.e(abstractC14965w, "tcPermissionsUtil");
        l.e(c20592g, "featuresRegistry");
        l.e(c10912h, "experimentRegistry");
        this.f37873e = fVar;
        this.f37874f = abstractC19219a0;
        this.f37875g = abstractC19230g;
        this.f37876h = abstractC14946m;
        this.f37877i = abstractC19462a;
        this.f37878j = callRecordingManager;
        this.f37879k = abstractC14965w;
        this.f37880l = c20592g;
        this.f37881m = c10912h;
    }

    @Override // p193e.p194a.p682e.p684b.p696p.AbstractC13039e
    /* renamed from: Ah */
    public void mo22123Ah() {
        AbstractC13040f abstractC13040f = (AbstractC13040f) this.f57683a;
        if (abstractC13040f != null) {
            abstractC13040f.mo22126Tv(C25225a.m3897h3(this.f37879k.mo19340q()));
        }
    }

    @Override // p193e.p194a.p682e.p684b.p696p.AbstractC13039e
    /* renamed from: B8 */
    public void mo22122B8() {
        AbstractC13040f abstractC13040f = (AbstractC13040f) this.f57683a;
        if (abstractC13040f != null) {
            abstractC13040f.mo22126Tv(C25225a.m3897h3(this.f37879k.mo19345l()));
        }
    }

    @Override // p193e.p194a.p682e.p684b.p696p.AbstractC13039e
    /* renamed from: H3 */
    public void mo22121H3() {
        AbstractC13040f abstractC13040f = (AbstractC13040f) this.f57683a;
        if (abstractC13040f != null) {
            abstractC13040f.mo22128T8();
        }
    }

    /* renamed from: Ij */
    public final void m22120Ij(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("Context", "settings_screen");
        hashMap.put("Permission", str);
        hashMap.put("State", "Asked");
        AbstractC19462a abstractC19462a = this.f37877i;
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("PermissionChanged", null, hashMap, null);
        l.d(c19505a, "event.build()");
        abstractC19462a.mo13271e(c19505a);
    }

    @Override // p193e.p194a.p682e.p684b.p696p.AbstractC13039e
    /* renamed from: Jg */
    public void mo22119Jg(int i, Set<? extends TroubleshootOption> set) {
        l.e(set, "options");
        this.f37872d = set;
        AbstractC13040f abstractC13040f = (AbstractC13040f) this.f57683a;
        if (abstractC13040f != null) {
            abstractC13040f.setTitle(i);
        }
        m22118Jj();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ff, code lost:
        if (r6.f37874f.mo13825h("android.permission.RECORD_AUDIO") == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x010e, code lost:
        if (r6.f37874f.mo13830c() == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0129, code lost:
        if (r6.f37878j.mo17593d() == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0146, code lost:
        if (r6.f37875g.mo13791f() == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0155, code lost:
        if (r6.f37875g.mo13771z() == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0168, code lost:
        if (r6.f37874f.mo13822k() == false) goto L37;
     */
    /* renamed from: Jj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m22118Jj() {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.p684b.p696p.C13041g.m22118Jj():void");
    }

    @Override // p193e.p194a.p682e.p684b.p696p.AbstractC13039e
    /* renamed from: Tc */
    public void mo22117Tc() {
        AbstractC13040f abstractC13040f = (AbstractC13040f) this.f57683a;
        if (abstractC13040f != null) {
            abstractC13040f.mo22129Dm();
        }
    }

    @Override // p193e.p194a.p682e.p684b.p696p.AbstractC13039e
    /* renamed from: V3 */
    public void mo22116V3() {
    }

    @Override // p193e.p194a.p682e.p684b.p696p.AbstractC13039e
    /* renamed from: dj */
    public void mo22115dj() {
        AbstractC13040f abstractC13040f = (AbstractC13040f) this.f57683a;
        if (abstractC13040f != null) {
            abstractC13040f.mo22124ri();
        }
        m22120Ij("DrawOnTop");
    }

    @Override // p193e.p194a.p682e.p684b.p696p.AbstractC13039e
    /* renamed from: ej */
    public void mo22114ej() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C13042a(null), 3, (Object) null);
        m22120Ij("CallerIdApp");
    }

    @Override // p193e.p194a.p682e.p684b.p696p.AbstractC13039e
    /* renamed from: i5 */
    public void mo22113i5() {
        AbstractC13040f abstractC13040f = (AbstractC13040f) this.f57683a;
        if (abstractC13040f != null) {
            abstractC13040f.mo22125jj();
        }
    }

    @Override // p193e.p194a.p682e.p684b.p696p.AbstractC13039e
    /* renamed from: nj */
    public void mo22112nj() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C13043b(null), 3, (Object) null);
        m22120Ij("DialerApp");
    }

    @Override // p193e.p194a.p682e.p684b.p696p.AbstractC13039e
    public void onResume() {
        m22118Jj();
    }

    @Override // p193e.p194a.p682e.p684b.p696p.AbstractC13039e
    /* renamed from: z2 */
    public void mo22111z2() {
        AbstractC13040f abstractC13040f = (AbstractC13040f) this.f57683a;
        if (abstractC13040f != null) {
            abstractC13040f.mo22130Bq();
        }
        m22120Ij("BatteryOptimization");
    }
}
