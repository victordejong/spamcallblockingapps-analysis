package p193e.p194a.p619d.p622b.p623a.p624a;

import com.truecaller.voip.C4781R;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11514a;
import p193e.p194a.p619d.p637c0.p640x1.C11519b;
import p193e.p194a.p619d.p663x.C12221p;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.legacy.incall.ui.LegacyVoipPresenter$listenVoipServiceSettings$1", f = "LegacyVoipPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.b.a.a.k */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/a/a/k.class */
public final class C11083k extends i implements p<C12221p, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f32756e;

    /* renamed from: f */
    public final /* synthetic */ C11077j f32757f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11083k(C11077j c11077j, d dVar) {
        super(2, dVar);
        this.f32757f = c11077j;
    }

    /* renamed from: i */
    public final d<s> m25297i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C11083k c11083k = new C11083k(this.f32757f, dVar);
        c11083k.f32756e = obj;
        return c11083k;
    }

    /* renamed from: k */
    public final Object m25296k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C11077j c11077j = this.f32757f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        C12221p c12221p = (C12221p) obj;
        String str = "New voip setting is received. Setting: " + c12221p;
        C11519b c11519b = c12221p.f35691e;
        AbstractC11076i abstractC11076i = (AbstractC11076i) c11077j.f57683a;
        if (abstractC11076i != null) {
            abstractC11076i.mo25311v3(c12221p.f35688b);
        }
        Objects.requireNonNull(c11077j);
        boolean z = true;
        if (c11519b.f33812b.isEmpty()) {
            AbstractC11514a abstractC11514a = c11519b.f33811a;
            if ((abstractC11514a instanceof AbstractC11514a.C11516b) || (abstractC11514a instanceof AbstractC11514a.C11518d)) {
                z = false;
            }
            AbstractC11076i abstractC11076i2 = (AbstractC11076i) c11077j.f57683a;
            if (abstractC11076i2 != null) {
                abstractC11076i2.mo25322D1(C4781R.C4782drawable.tcx_selector_voip_toggle_speaker, z);
            }
        } else {
            int m13613K1 = C19291g.m13613K1(c11519b.f33811a);
            AbstractC11076i abstractC11076i3 = (AbstractC11076i) c11077j.f57683a;
            if (abstractC11076i3 != null) {
                abstractC11076i3.mo25322D1(m13613K1, true);
            }
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m25295s(Object obj) {
        C25225a.m3932a3(obj);
        C12221p c12221p = (C12221p) this.f32756e;
        String str = "New voip setting is received. Setting: " + c12221p;
        C11519b c11519b = c12221p.f35691e;
        AbstractC11076i abstractC11076i = (AbstractC11076i) this.f32757f.f57683a;
        if (abstractC11076i != null) {
            abstractC11076i.mo25311v3(c12221p.f35688b);
        }
        C11077j c11077j = this.f32757f;
        Objects.requireNonNull(c11077j);
        boolean z = true;
        if (c11519b.f33812b.isEmpty()) {
            AbstractC11514a abstractC11514a = c11519b.f33811a;
            if ((abstractC11514a instanceof AbstractC11514a.C11516b) || (abstractC11514a instanceof AbstractC11514a.C11518d)) {
                z = false;
            }
            AbstractC11076i abstractC11076i2 = (AbstractC11076i) c11077j.f57683a;
            if (abstractC11076i2 != null) {
                abstractC11076i2.mo25322D1(C4781R.C4782drawable.tcx_selector_voip_toggle_speaker, z);
            }
        } else {
            int m13613K1 = C19291g.m13613K1(c11519b.f33811a);
            AbstractC11076i abstractC11076i3 = (AbstractC11076i) c11077j.f57683a;
            if (abstractC11076i3 != null) {
                abstractC11076i3.mo25322D1(m13613K1, true);
            }
        }
        return s.a;
    }
}
