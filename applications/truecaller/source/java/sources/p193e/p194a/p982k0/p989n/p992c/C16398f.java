package p193e.p194a.p982k0.p989n.p992c;

import com.tenor.android.core.constant.StringConstant;
import com.truecaller.callrecording.C3624R;
import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.callrecording.analytics.RecordingAnalyticsSource;
import com.truecaller.log.AssertionUtil;
import java.net.URLDecoder;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p982k0.AbstractC16304b;
import p193e.p194a.p982k0.AbstractC16312e;
import p193e.p194a.p982k0.AbstractC16313f;
import p193e.p194a.p982k0.p983a.AbstractC16296p;
import p193e.p194a.p982k0.p983a.C16294n;
import p193e.p194a.p982k0.p983a.C16295o;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.f0.v;
import s1.u.i;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.k0.n.c.f */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/c/f.class */
public final class C16398f extends AbstractC20574a<AbstractC16394c> implements AbstractC16393b, AbstractC16312e {

    /* renamed from: d */
    public boolean f46091d;

    /* renamed from: f */
    public String f46093f;

    /* renamed from: g */
    public String f46094g;

    /* renamed from: h */
    public AbstractC16304b f46095h;

    /* renamed from: j */
    public final f f46097j;

    /* renamed from: k */
    public final CallRecordingManager f46098k;

    /* renamed from: l */
    public final C16295o f46099l;

    /* renamed from: m */
    public final AbstractC16313f f46100m;

    /* renamed from: n */
    public final AbstractC8426f f46101n;

    /* renamed from: e */
    public boolean f46092e = true;

    /* renamed from: i */
    public boolean f46096i = true;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C16398f(@Named("UI") f fVar, CallRecordingManager callRecordingManager, C16295o c16295o, AbstractC16313f abstractC16313f, AbstractC8426f abstractC8426f) {
        super(fVar);
        l.e(fVar, "uiCoroutineContext");
        l.e(callRecordingManager, "callRecordingManager");
        l.e(c16295o, "callRecordingResurrectionHelper");
        l.e(abstractC16313f, "callRecordingSettings");
        l.e(abstractC8426f, "regionUtils");
        this.f46097j = fVar;
        this.f46098k = callRecordingManager;
        this.f46099l = c16295o;
        this.f46100m = abstractC16313f;
        this.f46101n = abstractC8426f;
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16399g
    /* renamed from: A5 */
    public void mo17455A5() {
        String str = this.f46093f;
        if (str != null) {
            C16295o c16295o = this.f46099l;
            Objects.requireNonNull(c16295o);
            l.e(str, "recordingFileAbsolutePath");
            String decode = URLDecoder.decode(str, StringConstant.UTF8);
            l.d(decode, "URLDecoder.decode(record…ileAbsolutePath, \"UTF-8\")");
            c16295o.f45895a.mo16240h((String) i.B(v.U((CharSequence) i.Q(v.U(decode, new String[]{StringConstant.DASH}, false, 0, 6)), new String[]{StringConstant.DOT}, false, 0, 6))).mo11829f(new C16294n(c16295o, str));
        }
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16399g
    /* renamed from: B1 */
    public boolean mo17454B1() {
        return this.f46096i;
    }

    /* renamed from: Ij */
    public final void m17459Ij() {
        AbstractC16394c abstractC16394c;
        if (!this.f46092e) {
            return;
        }
        AbstractC16394c abstractC16394c2 = (AbstractC16394c) this.f57683a;
        if (abstractC16394c2 != null) {
            abstractC16394c2.mo17474L5();
        }
        if (this.f46100m.mo17540r1() == 0) {
            AbstractC16394c abstractC16394c3 = (AbstractC16394c) this.f57683a;
            if (C12864a2.m22540r(abstractC16394c3 != null ? Boolean.valueOf(abstractC16394c3.mo17472N5()) : null)) {
                this.f46100m.mo17536z1(1);
            } else {
                AbstractC16394c abstractC16394c4 = (AbstractC16394c) this.f57683a;
                if (abstractC16394c4 != null) {
                    abstractC16394c4.mo17470Z8();
                }
            }
            this.f46092e = false;
        } else if (this.f46100m.mo17540r1() == 1) {
            AbstractC16394c abstractC16394c5 = (AbstractC16394c) this.f57683a;
            if (abstractC16394c5 != null) {
                abstractC16394c5.mo17470Z8();
            }
            this.f46092e = false;
        } else {
            AbstractC16296p mo17579s = this.f46098k.mo17579s();
            Objects.requireNonNull(mo17579s);
            if (!(mo17579s instanceof AbstractC16296p.C16297a) || (abstractC16394c = (AbstractC16394c) this.f57683a) == null) {
                return;
            }
            abstractC16394c.mo17467yc();
        }
    }

    /* renamed from: Jj */
    public final void m17458Jj() {
        if (this.f46098k.mo17585m()) {
            AbstractC16296p mo17579s = this.f46098k.mo17579s();
            if (l.a(mo17579s, AbstractC16296p.C16299c.f45898a)) {
                this.f46092e = true;
                mo17453Vi();
            } else if (l.a(mo17579s, AbstractC16296p.C16297a.f45896a)) {
                this.f46092e = true;
            }
        }
        m17459Ij();
        this.f46098k.mo17586l(false);
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16393b
    /* renamed from: Lb */
    public void mo17457Lb(boolean z) {
        this.f46091d = z;
    }

    @Override // p193e.p194a.p982k0.AbstractC16312e
    /* renamed from: Q1 */
    public void mo17456Q1() {
        if (this.f46091d) {
            AssertionUtil.shouldNeverHappen(new IllegalStateException("onFeatureEnabled should only be called when source is bubble"), new String[0]);
            return;
        }
        this.f46098k.mo17607A(null);
        this.f46092e = true;
        m17459Ij();
        mo17453Vi();
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16399g
    /* renamed from: Vi */
    public void mo17453Vi() {
        if (!this.f46096i) {
            return;
        }
        this.f46100m.mo17536z1(2);
        AbstractC16296p mo17579s = this.f46098k.mo17579s();
        if (l.a(mo17579s, AbstractC16296p.C16299c.f45898a)) {
            this.f46096i = false;
            this.f46098k.mo17580r(this.f46094g, this.f46091d ? RecordingAnalyticsSource.INCALLUI : RecordingAnalyticsSource.BUBBLE);
        } else if (!l.a(mo17579s, AbstractC16296p.C16298b.f45897a) && !l.a(mo17579s, AbstractC16296p.C16300d.f45899a) && !l.a(mo17579s, AbstractC16296p.C16297a.f45896a)) {
        } else {
            if (this.f46091d) {
                this.f46098k.mo17586l(true);
            } else {
                this.f46098k.mo17607A(this);
            }
            AbstractC16394c abstractC16394c = (AbstractC16394c) this.f57683a;
            if (abstractC16394c == null) {
                return;
            }
            abstractC16394c.mo17475Bf();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.k0.n.c.c] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC16394c abstractC16394c) {
        AbstractC16394c abstractC16394c2 = abstractC16394c;
        l.e(abstractC16394c2, "presenterView");
        this.f57683a = abstractC16394c2;
        this.f46098k.mo17607A(null);
        d.w2(this, (f) null, (j0) null, new C16395d(this, null), 3, (Object) null);
        if (this.f46091d) {
            m17458Jj();
        } else {
            m17459Ij();
        }
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        this.f46098k.mo17607A(null);
        this.f46093f = null;
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16399g
    /* renamed from: mc */
    public void mo17452mc(boolean z) {
        if (z) {
            AbstractC16394c abstractC16394c = (AbstractC16394c) this.f57683a;
            if (abstractC16394c == null) {
                return;
            }
            abstractC16394c.mo17471Rd(this.f46101n.mo28596b() ? C3624R.C3625drawable.ic_tc_floating_logo_uk : C3624R.C3625drawable.ic_tc_floating_logo);
            return;
        }
        AbstractC16394c abstractC16394c2 = (AbstractC16394c) this.f57683a;
        if (abstractC16394c2 == null) {
            return;
        }
        abstractC16394c2.mo17473M5();
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16393b
    public void onResume() {
        if (this.f46091d) {
            m17458Jj();
        } else if (((AbstractC16394c) this.f57683a) == null) {
        } else {
            AssertionUtil.shouldNeverHappen(new IllegalStateException("onResume should only be called when source is InCallUi"), new String[0]);
        }
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16399g
    public void setErrorListener(AbstractC16304b abstractC16304b) {
        l.e(abstractC16304b, "listener");
        this.f46095h = abstractC16304b;
    }

    @Override // p193e.p194a.p982k0.p989n.p992c.AbstractC16399g
    public void setPhoneNumber(String str) {
        this.f46094g = str;
    }
}
