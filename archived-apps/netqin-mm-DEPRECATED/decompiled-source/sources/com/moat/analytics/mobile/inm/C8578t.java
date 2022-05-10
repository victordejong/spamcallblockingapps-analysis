package com.moat.analytics.mobile.inm;

import android.graphics.Rect;
import android.view.View;
import com.moat.analytics.mobile.inm.NativeDisplayTracker;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.moat.analytics.mobile.inm.t */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/t.class */
public class C8578t extends AbstractC8537b implements NativeDisplayTracker {

    /* renamed from: g */
    public final Map<String, String> f33351g;

    /* renamed from: h */
    public final Set<NativeDisplayTracker.MoatUserInteractionType> f33352h = new HashSet();

    public C8578t(View view, Map<String, String> map) {
        super(view, true, false);
        C8571p.m5104a(3, "NativeDisplayTracker", this, "Initializing.");
        this.f33351g = map;
        if (view == null) {
            C8571p.m5101a("[ERROR] ", 3, "NativeDisplayTracker", this, "NativeDisplayTracker initialization not successful, Target view is null");
            this.f33216a = new C8562m("Target view is null");
        } else if (map == null || map.isEmpty()) {
            C8571p.m5101a("[ERROR] ", 3, "NativeDisplayTracker", this, "NativeDisplayTracker initialization not successful, AdIds is null or empty");
            this.f33216a = new C8562m("AdIds is null or empty");
        } else {
            C8543g gVar = ((C8560k) MoatAnalytics.getInstance()).f33304d;
            if (gVar == null) {
                C8571p.m5101a("[ERROR] ", 3, "NativeDisplayTracker", this, "NativeDisplayTracker initialization not successful, prepareNativeDisplayTracking was not called successfully");
                this.f33216a = new C8562m("prepareNativeDisplayTracking was not called successfully");
                return;
            }
            super.m5234a(gVar.f33242b);
            try {
                super.m5235a(gVar.f33241a);
                m5077i();
                C8571p.m5099a("[SUCCESS] ", mo5037a() + " created for " + m5228g() + ", with adIds:" + map.toString());
            } catch (C8562m e) {
                this.f33216a = e;
            }
        }
    }

    /* renamed from: a */
    public static String m5078a(Map<String, String> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i = 0; i < 8; i++) {
            String str = "moatClientLevel" + i;
            if (map.containsKey(str)) {
                linkedHashMap.put(str, map.get(str));
            }
        }
        for (int i2 = 0; i2 < 8; i2++) {
            String str2 = "moatClientSlicer" + i2;
            if (map.containsKey(str2)) {
                linkedHashMap.put(str2, map.get(str2));
            }
        }
        for (String str3 : map.keySet()) {
            if (!linkedHashMap.containsKey(str3)) {
                linkedHashMap.put(str3, map.get(str3));
            }
        }
        return new JSONObject(linkedHashMap).toString();
    }

    /* renamed from: i */
    private void m5077i() {
        C8555j jVar = this.f33218c;
        if (jVar != null) {
            jVar.m5177a(m5076j());
        }
    }

    /* renamed from: j */
    private String m5076j() {
        String str;
        try {
            String a = m5078a(this.f33351g);
            C8571p.m5104a(3, "NativeDisplayTracker", this, "Parsed ad ids = " + a);
            str = "{\"adIds\":" + a + ", \"adKey\":\"" + this.f33220e + "\", \"adSize\":" + m5075k() + "}";
        } catch (Exception e) {
            C8562m.m5135a(e);
            str = "";
        }
        return str;
    }

    /* renamed from: k */
    private String m5075k() {
        try {
            Rect a = C8601z.m5027a(super.m5229f());
            int width = a.width();
            int height = a.height();
            HashMap hashMap = new HashMap();
            hashMap.put("width", Integer.toString(width));
            hashMap.put("height", Integer.toString(height));
            return new JSONObject(hashMap).toString();
        } catch (Exception e) {
            C8562m.m5135a(e);
            return null;
        }
    }

    @Override // com.moat.analytics.mobile.inm.AbstractC8537b
    /* renamed from: a */
    public String mo5037a() {
        return "NativeDisplayTracker";
    }

    @Override // com.moat.analytics.mobile.inm.NativeDisplayTracker
    public void reportUserInteractionEvent(NativeDisplayTracker.MoatUserInteractionType moatUserInteractionType) {
        try {
            C8571p.m5104a(3, "NativeDisplayTracker", this, "reportUserInteractionEvent:" + moatUserInteractionType.name());
            if (!this.f33352h.contains(moatUserInteractionType)) {
                this.f33352h.add(moatUserInteractionType);
                JSONObject jSONObject = new JSONObject();
                jSONObject.accumulate("adKey", this.f33220e);
                jSONObject.accumulate("event", moatUserInteractionType.name().toLowerCase());
                if (this.f33218c != null) {
                    this.f33218c.m5171b(jSONObject.toString());
                }
            }
        } catch (JSONException e) {
            C8571p.m5098b(2, "NativeDisplayTracker", this, "Got JSON exception");
            C8562m.m5135a(e);
        } catch (Exception e2) {
            C8562m.m5135a(e2);
        }
    }
}
