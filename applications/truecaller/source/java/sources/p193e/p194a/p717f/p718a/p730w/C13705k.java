package p193e.p194a.p717f.p718a.p730w;

import com.truecaller.incallui.C4013R;
import com.truecaller.multisim.SimInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p717f.p733y.AbstractC13762c;
import s1.u.i;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.f.a.w.k */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/w/k.class */
public final class C13705k extends AbstractC20574a<AbstractC13702h> implements AbstractC13701g {

    /* renamed from: d */
    public final AbstractC13762c f39685d;

    /* renamed from: e */
    public final C13697d f39686e;

    /* renamed from: f */
    public final f f39687f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C13705k(AbstractC13762c abstractC13762c, C13697d c13697d, @Named("UI") f fVar) {
        super(fVar);
        l.e(abstractC13762c, "callManager");
        l.e(c13697d, "phoneAccountInfoProvider");
        l.e(fVar, "uiContext");
        this.f39685d = abstractC13762c;
        this.f39686e = c13697d;
        this.f39687f = fVar;
    }

    /* renamed from: Ij */
    public final void m21297Ij() {
        this.f39685d.mo21229A(false);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.f.a.w.h] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC13702h abstractC13702h) {
        C13696c c13696c;
        AbstractC13702h abstractC13702h2 = abstractC13702h;
        l.e(abstractC13702h2, "presenterView");
        this.f57683a = abstractC13702h2;
        C19291g.m13599P0(this, this.f39685d.mo21199h(), new C13703i(this, null));
        List<String> mo21187t = this.f39685d.mo21187t();
        if (mo21187t == null) {
            m21297Ij();
        } else if (mo21187t.isEmpty()) {
            m21297Ij();
        } else {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            for (Object obj : mo21187t) {
                if (i < 0) {
                    i.N0();
                    throw null;
                }
                String str = (String) obj;
                C13697d c13697d = this.f39686e;
                Objects.requireNonNull(c13697d);
                l.e(str, "id");
                SimInfo mo21741e = c13697d.f39677a.mo21741e(i);
                if (mo21741e != null) {
                    l.d(mo21741e, "multiSimManager.getSimIn…ndex(slot) ?: return null");
                    String str2 = c13697d.f39678b.mo13761i(C4013R.array.incallui_phone_account_sim_slot)[i];
                    String O = i.O(i.V(new String[]{mo21741e.f13986d, mo21741e.f13985c, mo21741e.f13992j ? c13697d.f39678b.mo13768b(C4013R.string.incallui_phone_accounts_roaming, new Object[0]) : null}), ", ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62);
                    int i2 = i == 0 ? C4013R.C4014drawable.ic_sim_incallui_one : C4013R.C4014drawable.ic_sim_incallui_two;
                    l.d(str2, "title");
                    c13696c = new C13696c(str, str2, O, i2);
                } else {
                    c13696c = null;
                }
                if (c13696c != null) {
                    arrayList.add(c13696c);
                }
                i++;
            }
            List<C13696c> S0 = i.S0(arrayList);
            AbstractC13702h abstractC13702h3 = (AbstractC13702h) this.f57683a;
            if (abstractC13702h3 == null) {
                return;
            }
            abstractC13702h3.mo21305o8(S0);
        }
    }
}
