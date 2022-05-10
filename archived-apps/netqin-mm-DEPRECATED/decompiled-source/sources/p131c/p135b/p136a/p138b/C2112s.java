package p131c.p135b.p136a.p138b;

import android.webkit.WebSettings;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.p153y.C2390i;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: c.b.a.b.s */
/* loaded from: classes-dex2jar.jar:c/b/a/b/s.class */
public final class C2112s {

    /* renamed from: a */
    public C2341l f8118a;

    /* renamed from: b */
    public JSONObject f8119b;

    public C2112s(JSONObject jSONObject, C2341l lVar) {
        this.f8118a = lVar;
        this.f8119b = jSONObject;
    }

    /* renamed from: a */
    public Integer m31041a() {
        int i;
        String b = C2390i.m29913b(this.f8119b, "mixed_content_mode", (String) null, this.f8118a);
        if (!C2422o.m29851b(b)) {
            return null;
        }
        if ("always_allow".equalsIgnoreCase(b)) {
            i = 0;
        } else if ("never_allow".equalsIgnoreCase(b)) {
            i = 1;
        } else if (!"compatibility_mode".equalsIgnoreCase(b)) {
            return null;
        } else {
            i = 2;
        }
        return Integer.valueOf(i);
    }

    /* renamed from: b */
    public WebSettings.PluginState m31040b() {
        String b = C2390i.m29913b(this.f8119b, "plugin_state", (String) null, this.f8118a);
        if (!C2422o.m29851b(b)) {
            return null;
        }
        if ("on".equalsIgnoreCase(b)) {
            return WebSettings.PluginState.ON;
        }
        if ("on_demand".equalsIgnoreCase(b)) {
            return WebSettings.PluginState.ON_DEMAND;
        }
        if ("off".equalsIgnoreCase(b)) {
            return WebSettings.PluginState.OFF;
        }
        return null;
    }

    /* renamed from: c */
    public Boolean m31039c() {
        return C2390i.m29928a(this.f8119b, "allow_file_access", (Boolean) null, this.f8118a);
    }

    /* renamed from: d */
    public Boolean m31038d() {
        return C2390i.m29928a(this.f8119b, "load_with_overview_mode", (Boolean) null, this.f8118a);
    }

    /* renamed from: e */
    public Boolean m31037e() {
        return C2390i.m29928a(this.f8119b, "use_wide_view_port", (Boolean) null, this.f8118a);
    }

    /* renamed from: f */
    public Boolean m31036f() {
        return C2390i.m29928a(this.f8119b, "allow_content_access", (Boolean) null, this.f8118a);
    }

    /* renamed from: g */
    public Boolean m31035g() {
        return C2390i.m29928a(this.f8119b, "use_built_in_zoom_controls", (Boolean) null, this.f8118a);
    }

    /* renamed from: h */
    public Boolean m31034h() {
        return C2390i.m29928a(this.f8119b, "display_zoom_controls", (Boolean) null, this.f8118a);
    }

    /* renamed from: i */
    public Boolean m31033i() {
        return C2390i.m29928a(this.f8119b, "save_form_data", (Boolean) null, this.f8118a);
    }

    /* renamed from: j */
    public Boolean m31032j() {
        return C2390i.m29928a(this.f8119b, "geolocation_enabled", (Boolean) null, this.f8118a);
    }

    /* renamed from: k */
    public Boolean m31031k() {
        return C2390i.m29928a(this.f8119b, "need_initial_focus", (Boolean) null, this.f8118a);
    }

    /* renamed from: l */
    public Boolean m31030l() {
        return C2390i.m29928a(this.f8119b, "allow_file_access_from_file_urls", (Boolean) null, this.f8118a);
    }

    /* renamed from: m */
    public Boolean m31029m() {
        return C2390i.m29928a(this.f8119b, "allow_universal_access_from_file_urls", (Boolean) null, this.f8118a);
    }

    /* renamed from: n */
    public Boolean m31028n() {
        return C2390i.m29928a(this.f8119b, "offscreen_pre_raster", (Boolean) null, this.f8118a);
    }
}
