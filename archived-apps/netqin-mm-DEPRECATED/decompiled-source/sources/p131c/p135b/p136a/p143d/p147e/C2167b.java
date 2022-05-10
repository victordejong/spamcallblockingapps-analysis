package p131c.p135b.p136a.p143d.p147e;

import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.p153y.C2389h;
import p131c.p135b.p136a.p148e.p153y.C2390i;
/* renamed from: c.b.a.d.e.b */
/* loaded from: classes-dex2jar.jar:c/b/a/d/e/b.class */
public class C2167b extends C2389h {

    /* renamed from: d */
    public static final String[] f8255d = {"ads", "settings", "mcode", "bcode", "auto_init_adapters", "test_mode_idfas", "test_mode_auto_init_adapters"};

    /* renamed from: e */
    public static final String[] f8256e = {"ads", "settings", "mcode", "bcode", "signal_providers"};

    /* renamed from: f */
    public static void m30815f(JSONObject jSONObject, C2341l lVar) {
        if (C2390i.m29932a(jSONObject, "signal_providers")) {
            JSONObject d = C2390i.m29908d(jSONObject);
            C2390i.m29920a(d, f8255d);
            lVar.m30289a((C2251d.C2258g<C2251d.C2258g<String>>) C2251d.C2258g.f8815y, (C2251d.C2258g<String>) d.toString());
        }
    }

    /* renamed from: g */
    public static String m30814g(C2341l lVar) {
        return C2389h.m29959a((String) lVar.m30291a(C2251d.C2255d.f8502v4), "1.0/mediate", lVar);
    }

    /* renamed from: g */
    public static void m30813g(JSONObject jSONObject, C2341l lVar) {
        if (C2390i.m29932a(jSONObject, "auto_init_adapters")) {
            JSONObject d = C2390i.m29908d(jSONObject);
            C2390i.m29920a(d, f8256e);
            lVar.m30289a((C2251d.C2258g<C2251d.C2258g<String>>) C2251d.C2258g.f8816z, (C2251d.C2258g<String>) d.toString());
        }
    }

    /* renamed from: h */
    public static String m30812h(C2341l lVar) {
        return C2389h.m29959a((String) lVar.m30291a(C2251d.C2255d.f8503w4), "1.0/mediate", lVar);
    }

    /* renamed from: i */
    public static String m30811i(C2341l lVar) {
        return C2389h.m29959a((String) lVar.m30291a(C2251d.C2255d.f8502v4), "1.0/mediate_debug", lVar);
    }

    /* renamed from: j */
    public static String m30810j(C2341l lVar) {
        return C2389h.m29959a((String) lVar.m30291a(C2251d.C2255d.f8503w4), "1.0/mediate_debug", lVar);
    }
}
