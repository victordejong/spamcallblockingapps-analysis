package p193e.p194a.p804h;

import com.truecaller.C2752R;
import com.truecaller.multisim.SimInfo;
import com.truecaller.settings.CallingSettings;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p712e4.AbstractC13497p;
import s1.z.c.l;
/* renamed from: e.a.h.c0 */
/* loaded from: classes2-dex2jar.jar:e/a/h/c0.class */
public final class C14650c0 implements AbstractC14642b0 {

    /* renamed from: a */
    public final a<CallingSettings> f42133a;

    /* renamed from: b */
    public final a<AbstractC13497p> f42134b;

    /* renamed from: c */
    public final a<AbstractC19223c0> f42135c;

    @Inject
    public C14650c0(a<CallingSettings> aVar, a<AbstractC13497p> aVar2, a<AbstractC19223c0> aVar3) {
        l.e(aVar, "callingSettings");
        l.e(aVar2, "multiSimManager");
        l.e(aVar3, "resourceProvider");
        this.f42133a = aVar;
        this.f42134b = aVar2;
        this.f42135c = aVar3;
    }

    @Override // p193e.p194a.p804h.AbstractC14642b0
    /* renamed from: a */
    public String mo19831a() {
        Object obj;
        Object obj2 = this.f42134b.get();
        l.d(obj2, "multiSimManager.get()");
        String mo21721a = ((AbstractC13497p) obj2).mo21721a();
        l.d(mo21721a, "multiSimManager.get().selectedCallSimToken");
        String str = mo21721a;
        if (l.a(mo21721a, "-1")) {
            String string = ((CallingSettings) this.f42133a.get()).getString("selectedCallSimToken", "-1");
            l.d(string, "callingSettings.get().ge…KEN_UNKNOWN\n            )");
            Object obj3 = this.f42134b.get();
            l.d(obj3, "multiSimManager.get()");
            List<SimInfo> mo21742d = ((AbstractC13497p) obj3).mo21742d();
            l.d(mo21742d, "multiSimManager.get().allSimInfos");
            Iterator<T> it = mo21742d.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (l.a(((SimInfo) obj).f13984b, string)) {
                    break;
                }
            }
            SimInfo simInfo = (SimInfo) obj;
            str = mo21721a;
            if (simInfo != null) {
                String str2 = simInfo.f13984b;
                str = mo21721a;
                if (str2 != null) {
                    str = str2;
                }
            }
        }
        return str;
    }

    @Override // p193e.p194a.p804h.AbstractC14642b0
    /* renamed from: b */
    public int mo19830b() {
        SimInfo mo21719v;
        String mo19831a = mo19831a();
        if (!l.a("-1", mo19831a) && (mo21719v = ((AbstractC13497p) this.f42134b.get()).mo21719v(mo19831a)) != null) {
            l.d(mo21719v, "multiSimManager.get().ge…mManager.SIM_SLOT_UNKNOWN");
            return mo21719v.f13983a;
        }
        return -1;
    }

    @Override // p193e.p194a.p804h.AbstractC14642b0
    /* renamed from: c */
    public int mo19829c() {
        int mo19830b = mo19830b();
        return mo19830b != 0 ? mo19830b != 1 ? 2131232701 : 2131232654 : 2131232653;
    }

    @Override // p193e.p194a.p804h.AbstractC14642b0
    /* renamed from: d */
    public void mo19828d() {
        int mo19830b = mo19830b();
        int i = 1;
        if (mo19830b != 0) {
            i = mo19830b != 1 ? 0 : -1;
        }
        if (i == -1) {
            m19826f("-1");
            return;
        }
        SimInfo mo21741e = ((AbstractC13497p) this.f42134b.get()).mo21741e(i);
        if (mo21741e == null) {
            return;
        }
        l.d(mo21741e, "multiSimManager.get().ge…ex(currentSlot) ?: return");
        String str = mo21741e.f13984b;
        l.d(str, "simInfo.simToken");
        m19826f(str);
    }

    @Override // p193e.p194a.p804h.AbstractC14642b0
    /* renamed from: e */
    public String mo19827e() {
        String str;
        int mo19830b = mo19830b();
        if (mo19830b != -1) {
            SimInfo mo21741e = ((AbstractC13497p) this.f42134b.get()).mo21741e(mo19830b);
            if (mo21741e == null) {
                return null;
            }
            l.d(mo21741e, "multiSimManager.get().ge…rrentSlot) ?: return null");
            String[] mo13761i = ((AbstractC19223c0) this.f42135c.get()).mo13761i(C2752R.array.pref_items_multi_sim_slot);
            l.d(mo13761i, "resourceProvider.get().g…ref_items_multi_sim_slot)");
            String str2 = (String) ((ArrayList) C25225a.m3892i3(mo13761i)).get(mo19830b);
            String str3 = mo21741e.f13986d;
            String str4 = str2;
            if (!(str3 == null || str3.length() == 0)) {
                StringBuilder m8696K = C22128a.m8696K(str2, " - ");
                m8696K.append(mo21741e.f13986d);
                str4 = m8696K.toString();
            }
            str = ((AbstractC19223c0) this.f42135c.get()).mo13768b(C2752R.string.switched_to_sim, str4);
            l.d(str, "resourceProvider.get().g…switched_to_sim, simName)");
        } else {
            str = ((AbstractC19223c0) this.f42135c.get()).mo13768b(C2752R.string.multi_sim_always_ask, new Object[0]);
            l.d(str, "resourceProvider.get().g…ing.multi_sim_always_ask)");
        }
        return str;
    }

    /* renamed from: f */
    public void m19826f(String str) {
        l.e(str, "simToken");
        ((CallingSettings) this.f42133a.get()).putString("selectedCallSimToken", str);
        Object obj = this.f42134b.get();
        l.d(obj, "multiSimManager.get()");
        ((AbstractC13497p) obj).mo21750j(str);
    }
}
