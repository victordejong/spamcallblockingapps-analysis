package p193e.p194a.p982k0.p989n.p995e;

import com.truecaller.callrecording.analytics.RecordingAnalyticsSource;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p982k0.p989n.p995e.AbstractC16411c;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.k0.n.e.g */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/e/g.class */
public final class C16419g extends AbstractC20576b<AbstractC16418f> implements AbstractC16416d {

    /* renamed from: b */
    public boolean f46138b;

    /* renamed from: c */
    public int f46139c;

    /* renamed from: d */
    public long f46140d = -1;

    /* renamed from: e */
    public final AbstractC16417e f46141e;

    /* renamed from: f */
    public final l<Boolean, s> f46142f;

    /* JADX WARN: Multi-variable type inference failed */
    public C16419g(AbstractC16417e abstractC16417e, l<? super Boolean, s> lVar) {
        s1.z.c.l.e(abstractC16417e, "playerProvider");
        s1.z.c.l.e(lVar, "onPlayPauseAction");
        this.f46141e = abstractC16417e;
        this.f46142f = lVar;
    }

    @Override // p193e.p194a.p982k0.p989n.p995e.AbstractC16410b
    /* renamed from: C0 */
    public void mo17423C0(int i) {
        int i2 = this.f46139c;
        if (i2 <= 0 || i2 == 0) {
            return;
        }
        int i3 = (i * 100) / i2;
        AbstractC16418f abstractC16418f = (AbstractC16418f) this.f57683a;
        if (abstractC16418f == null) {
            return;
        }
        abstractC16418f.mo17426Y(i3, i);
    }

    /* renamed from: Hj */
    public final void m17422Hj() {
        if (!this.f46141e.mo17419a(this.f46140d) || this.f46139c == 0) {
            return;
        }
        this.f46141e.mo17416d(this.f46140d, this);
        this.f46138b = true;
        AbstractC16418f abstractC16418f = (AbstractC16418f) this.f57683a;
        if (abstractC16418f != null) {
            abstractC16418f.mo17427F(this.f46139c);
        }
        C16409a mo17414f = this.f46141e.mo17414f();
        boolean z = mo17414f.f46132a;
        int i = mo17414f.f46133b;
        this.f46142f.d(Boolean.valueOf(z));
        int i2 = this.f46139c;
        if (i2 == 0) {
            return;
        }
        int i3 = (i * 100) / i2;
        AbstractC16418f abstractC16418f2 = (AbstractC16418f) this.f57683a;
        if (abstractC16418f2 == null) {
            return;
        }
        abstractC16418f2.mo17426Y(i3, i);
    }

    @Override // p193e.p194a.p982k0.p989n.p995e.AbstractC16410b
    /* renamed from: O4 */
    public void mo17421O4(AbstractC16411c abstractC16411c) {
        Boolean bool = Boolean.FALSE;
        s1.z.c.l.e(abstractC16411c, "event");
        if (abstractC16411c instanceof AbstractC16411c.C16412a) {
            AbstractC16418f abstractC16418f = (AbstractC16418f) this.f57683a;
            if (abstractC16418f == null) {
                return;
            }
            abstractC16418f.mo17425d(((AbstractC16411c.C16412a) abstractC16411c).f46134a);
        } else if (s1.z.c.l.a(abstractC16411c, AbstractC16411c.C16413b.f46135a)) {
            this.f46142f.d(bool);
            AbstractC16418f abstractC16418f2 = (AbstractC16418f) this.f57683a;
            if (abstractC16418f2 != null) {
                abstractC16418f2.mo17424e();
            }
            this.f46138b = false;
        } else if (!(abstractC16411c instanceof AbstractC16411c.C16415d)) {
            if (!s1.z.c.l.a(abstractC16411c, AbstractC16411c.C16414c.f46136a)) {
                return;
            }
            this.f46142f.d(bool);
        } else {
            int i = ((AbstractC16411c.C16415d) abstractC16411c).f46137a;
            this.f46139c = i;
            AbstractC16418f abstractC16418f3 = (AbstractC16418f) this.f57683a;
            if (abstractC16418f3 != null) {
                abstractC16418f3.mo17427F(i);
            }
            this.f46142f.d(Boolean.TRUE);
        }
    }

    @Override // p193e.p194a.p982k0.p989n.p995e.AbstractC16416d
    /* renamed from: W3 */
    public void mo17420W3(int i) {
        this.f46141e.mo17417c(i, RecordingAnalyticsSource.RECORDING_LIST);
        AbstractC16418f abstractC16418f = (AbstractC16418f) this.f57683a;
        if (abstractC16418f != null) {
            abstractC16418f.mo17426Y(i, (this.f46139c * i) / 100);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.k0.n.e.f, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC16418f abstractC16418f) {
        AbstractC16418f abstractC16418f2 = abstractC16418f;
        s1.z.c.l.e(abstractC16418f2, "presenterView");
        this.f57683a = abstractC16418f2;
        m17422Hj();
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        if (this.f46138b) {
            this.f46141e.mo17415e();
        }
        this.f57683a = null;
    }
}
