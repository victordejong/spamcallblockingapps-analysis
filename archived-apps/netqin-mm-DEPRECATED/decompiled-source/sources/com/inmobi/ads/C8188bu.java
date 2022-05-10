package com.inmobi.ads;

import com.inmobi.ads.NativeTracker;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.mopub.common.AdType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.ads.bu */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bu.class */
public class C8188bu {

    /* renamed from: f */
    public static final ArrayList<String> f31930f = new ArrayList<>(Arrays.asList("image/jpeg", "image/png"));

    /* renamed from: h */
    public static final String f31931h = "bu";

    /* renamed from: a */
    public int f31932a;

    /* renamed from: b */
    public int f31933b;

    /* renamed from: c */
    public List<C8189a> f31934c = new ArrayList();

    /* renamed from: d */
    public List<NativeTracker> f31935d = new ArrayList();

    /* renamed from: e */
    public String f31936e;

    /* renamed from: g */
    public boolean f31937g;

    /* renamed from: i */
    public String f31938i;

    /* renamed from: com.inmobi.ads.bu$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bu$a.class */
    public static final class C8189a {

        /* renamed from: a */
        public int f31939a;

        /* renamed from: b */
        public String f31940b;

        public C8189a(int i, String str) {
            this.f31939a = i;
            this.f31940b = str;
        }

        /* renamed from: a */
        public static C8189a m6234a(JSONObject jSONObject) {
            try {
                String string = jSONObject.getString("type");
                int i = 1;
                if (!(string == null || string.trim().length() == 0)) {
                    String lowerCase = string.toLowerCase(Locale.US);
                    char c = 65535;
                    switch (lowerCase.hashCode()) {
                        case -1191214428:
                            if (lowerCase.equals("iframe")) {
                                c = 4;
                                break;
                            }
                            break;
                        case -892481938:
                            if (lowerCase.equals("static")) {
                                c = 2;
                                break;
                            }
                            break;
                        case -284840886:
                            if (lowerCase.equals("unknown")) {
                                c = 1;
                                break;
                            }
                            break;
                        case 3213227:
                            if (lowerCase.equals(AdType.HTML)) {
                                c = 3;
                                break;
                            }
                            break;
                    }
                    if (c != 2) {
                        if (c == 3) {
                            i = 2;
                        } else if (c == 4) {
                            i = 3;
                        }
                    }
                    return new C8189a(i, jSONObject.getString("content"));
                }
                i = 0;
                return new C8189a(i, jSONObject.getString("content"));
            } catch (JSONException e) {
                String unused = C8188bu.f31931h;
                new StringBuilder("Error building resource from JSONObject; ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
                return null;
            }
        }

        public final String toString() {
            JSONObject jSONObject = new JSONObject();
            try {
                int i = this.f31939a;
                jSONObject.put("type", i != 1 ? i != 2 ? i != 3 ? "unknown" : "iframe" : AdType.HTML : "static");
                jSONObject.put("content", this.f31940b);
                return jSONObject.toString();
            } catch (JSONException e) {
                String unused = C8188bu.f31931h;
                new StringBuilder("Error serializing resource: ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
                return "";
            }
        }
    }

    public C8188bu(int i, int i2, String str, String str2) {
        this.f31938i = str2;
        this.f31932a = i;
        this.f31933b = i2;
        this.f31936e = str;
    }

    /* renamed from: a */
    public static C8188bu m6235a(JSONObject jSONObject) {
        try {
            C8188bu buVar = new C8188bu(jSONObject.getInt("width"), jSONObject.getInt("height"), jSONObject.has("clickThroughUrl") ? jSONObject.getString("clickThroughUrl") : null, jSONObject.optString("id", null));
            try {
                JSONArray jSONArray = new JSONArray(jSONObject.getString("trackers"));
                for (int i = 0; i < jSONArray.length(); i++) {
                    NativeTracker a = NativeTracker.m6666a(new JSONObject(jSONArray.getString(i)));
                    if (a != null) {
                        buVar.m6237a(a);
                    }
                }
            } catch (JSONException e) {
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            try {
                JSONArray jSONArray2 = new JSONArray(jSONObject.getString("resources"));
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    C8189a a2 = C8189a.m6234a(new JSONObject(jSONArray2.getString(i2)));
                    if (a2 != null) {
                        buVar.m6236a(a2);
                    }
                }
            } catch (JSONException e2) {
                C8328a.m5878a().m5875a(new C8365a(e2));
            }
            return buVar;
        } catch (JSONException e3) {
            new StringBuilder("Error building companion from JSON: ").append(e3.getMessage());
            C8328a.m5878a().m5875a(new C8365a(e3));
            return null;
        }
    }

    /* renamed from: a */
    public final List<C8189a> m6239a(int i) {
        ArrayList arrayList = new ArrayList();
        for (C8189a aVar : this.f31934c) {
            if (aVar.f31939a == i) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final List<NativeTracker> m6238a(NativeTracker.TrackerEventType trackerEventType) {
        ArrayList arrayList = new ArrayList();
        for (NativeTracker nativeTracker : this.f31935d) {
            if (nativeTracker.f31407b.equals(trackerEventType)) {
                arrayList.add(nativeTracker);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m6237a(NativeTracker nativeTracker) {
        this.f31935d.add(nativeTracker);
    }

    /* renamed from: a */
    public final void m6236a(C8189a aVar) {
        this.f31934c.add(aVar);
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.f31938i != null) {
                jSONObject.put("id", this.f31938i);
            }
            jSONObject.put("width", this.f31932a);
            jSONObject.put("height", this.f31933b);
            jSONObject.put("clickThroughUrl", this.f31936e);
            JSONArray jSONArray = new JSONArray();
            for (C8189a aVar : this.f31934c) {
                jSONArray.put(aVar.toString());
            }
            jSONObject.put("resources", jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            for (NativeTracker nativeTracker : this.f31935d) {
                jSONArray2.put(nativeTracker.toString());
            }
            jSONObject.put("trackers", jSONArray2);
            return jSONObject.toString();
        } catch (JSONException e) {
            StringBuilder sb = new StringBuilder("Error serializing an ");
            sb.append(f31931h);
            sb.append(" instance: ");
            sb.append(e.getMessage());
            C8328a.m5878a().m5875a(new C8365a(e));
            return "";
        }
    }
}
