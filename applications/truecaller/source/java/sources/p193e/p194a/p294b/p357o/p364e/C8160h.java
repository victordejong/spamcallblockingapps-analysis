package p193e.p194a.p294b.p357o.p364e;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.bizmon.C3478R;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1270u2.p1271a.AbstractC20580e;
import p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8127a;
import p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8137e;
import p193e.p194a.p294b.p357o.p360c.p362b.C8144b;
import p193e.p194a.p372b0.p430q.AbstractC8576d0;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.u.s;
import s1.w.f;
import s1.z.c.b0;
import s1.z.c.c0;
import s1.z.c.l;
/* renamed from: e.a.b.o.e.h */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/e/h.class */
public final class C8160h extends AbstractC20574a<AbstractC8157f> implements AbstractC20580e {

    /* renamed from: d */
    public List<C8144b> f25271d = s.a;

    /* renamed from: e */
    public String f25272e;

    /* renamed from: f */
    public String f25273f;

    /* renamed from: g */
    public final AbstractC19223c0 f25274g;

    /* renamed from: h */
    public final f f25275h;

    /* renamed from: i */
    public final f f25276i;

    /* renamed from: j */
    public final AbstractC8127a f25277j;

    /* renamed from: k */
    public final AbstractC19462a f25278k;

    /* renamed from: l */
    public final AbstractC8137e f25279l;

    /* renamed from: m */
    public final AbstractC8576d0 f25280m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C8160h(AbstractC19223c0 abstractC19223c0, @Named("IO") f fVar, @Named("UI") f fVar2, AbstractC8127a abstractC8127a, AbstractC19462a abstractC19462a, AbstractC8137e abstractC8137e, AbstractC8576d0 abstractC8576d0) {
        super(fVar2);
        l.e(abstractC19223c0, "resourceProvider");
        l.e(fVar, "asyncIoContext");
        l.e(fVar2, "uiContext");
        l.e(abstractC8127a, "contactDao");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC8137e, "stateDao");
        l.e(abstractC8576d0, "profileDetailsHelper");
        this.f25274g = abstractC19223c0;
        this.f25275h = fVar;
        this.f25276i = fVar2;
        this.f25277j = abstractC8127a;
        this.f25278k = abstractC19462a;
        this.f25279l = abstractC8137e;
        this.f25280m = abstractC8576d0;
        String mo13768b = ((C19235i0) abstractC19223c0).mo13768b(C3478R.string.biz_govt_general_services, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…iz_govt_general_services)");
        this.f25272e = mo13768b;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.b.o.e.f, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC8157f) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        String mo28797P1 = r0.mo28797P1();
        if (mo28797P1 != null) {
            if (!(mo28797P1.length() > 0)) {
                mo28797P1 = null;
            }
            if (mo28797P1 != null) {
                this.f25272e = mo28797P1;
            }
        }
        c0 c0Var = new c0();
        c0Var.a = r0.mo28798Oo();
        b0 b0Var = new b0();
        Long mo28800N3 = r0.mo28800N3();
        b0Var.a = mo28800N3 != null ? mo28800N3.longValue() : (char) 0;
        if (((Long) c0Var.a) != null) {
            d.w2(this, (f) null, (j0) null, new C8158g(r0, b0Var, c0Var, null, this), 3, (Object) null);
        }
    }
}
