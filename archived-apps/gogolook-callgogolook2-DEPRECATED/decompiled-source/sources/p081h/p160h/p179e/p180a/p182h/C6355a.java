package p081h.p160h.p179e.p180a.p182h;

import android.net.Uri;
import android.text.TextUtils;
import com.flurry.sdk.C3478n;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.C6341b;
import p081h.p160h.p179e.p180a.C6344e;
import p081h.p160h.p179e.p180a.p183i.C6357a;
import p081h.p160h.p179e.p180a.p186m.AbstractC6378d;
import p081h.p160h.p179e.p180a.p190p.C6432e;
import p081h.p160h.p179e.p180a.p190p.C6438i;
/* renamed from: h.h.e.a.h.a */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/h/a.class */
public class C6355a {

    /* renamed from: a */
    public static JSONArray f15783a;

    /* renamed from: b */
    public static JSONObject f15784b;

    /* renamed from: c */
    public static JSONObject f15785c;

    /* renamed from: d */
    public static JSONObject f15786d;

    /* renamed from: e */
    public static JSONObject f15787e;

    /* renamed from: f */
    public static ArrayList<String> f15788f;

    /* renamed from: g */
    public static boolean f15789g = false;

    /* renamed from: h */
    public static boolean f15790h = false;

    /* renamed from: i */
    public static String f15791i;

    /* renamed from: j */
    public static String f15792j;

    /* renamed from: h.h.e.a.h.a$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/h/a$a.class */
    public static final class C6356a extends AbstractC6378d {

        /* renamed from: a */
        public final /* synthetic */ int f15793a;

        /* renamed from: b */
        public final /* synthetic */ int f15794b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC6378d f15795c;

        public C6356a(int i, int i2, AbstractC6378d dVar) {
            this.f15793a = i;
            this.f15794b = i2;
            this.f15795c = dVar;
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6378d
        /* renamed from: a */
        public void mo1272a(int i, JSONObject jSONObject) throws Exception {
            StringBuilder sb = new StringBuilder();
            sb.append("[AbMgr] statusCode : ");
            sb.append(i);
            sb.append(", response = ");
            sb.append(jSONObject != null ? jSONObject.toString() : "");
            C6438i.m22578d(sb.toString());
            r11 = null;
            JSONObject jSONObject2 = null;
            JSONArray jSONArray = null;
            if (i == 200) {
                String f = C6355a.m23046f();
                if (this.f15793a != this.f15794b) {
                    C6355a.m23049c();
                    C6355a.m23052b();
                    C6334a.m23211s().m23232b("pref_experiments_is_synced", false);
                }
                if (jSONObject != null && !jSONObject.isNull("next_update_time")) {
                    C6334a.m23211s().m23235b("pref_abv2_next_update_time", System.currentTimeMillis() + jSONObject.getLong("next_update_time"));
                }
                if (!C6334a.m23211s().m23244a("pref_experiments_is_synced", true)) {
                    if (!jSONObject.isNull("expired")) {
                        jSONArray = jSONObject.getJSONArray("expired");
                    }
                    C6355a.m23058a(f, jSONArray);
                    jSONObject2 = C6355a.m23057a(f, jSONObject, C6355a.f15789g);
                }
                C6334a.m23211s().m23236b("pref_abv2_saved_app_version", this.f15794b);
                boolean unused = C6355a.f15790h = false;
            }
            if (this.f15795c != null) {
                if (jSONObject2 != null) {
                    jSONObject.put("changed_ab", jSONObject2);
                }
                this.f15795c.mo1272a(i, jSONObject);
            }
        }
    }

    /* renamed from: a */
    public static int m23063a(int i, JSONArray jSONArray) {
        if (jSONArray == null) {
            return 0;
        }
        int[] iArr = new int[jSONArray.length()];
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                iArr[i2] = jSONArray.getInt(i2);
            } catch (JSONException e) {
            }
        }
        return m23062a(i, iArr);
    }

    /* renamed from: a */
    public static int m23062a(int i, int[] iArr) {
        if (iArr == null) {
            return 0;
        }
        int i2 = 0;
        for (int i3 : iArr) {
            try {
                i2 += i3;
            } catch (NumberFormatException e) {
                return 0;
            }
        }
        if (i2 == 0) {
            return 0;
        }
        int i4 = i;
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int i6 = (int) ((iArr[i5] / i2) * 100.0f);
            if (i4 < i6) {
                return i5;
            }
            i4 -= i6;
        }
        return 0;
    }

    /* renamed from: a */
    public static int m23059a(String str, String str2) {
        String b = C6432e.m22598b(str + str2);
        try {
            return (int) ((Integer.parseInt(b.substring(b.length() - 2), 16) / 256.0f) * 100.0f);
        } catch (Exception e) {
            return 0;
        }
    }

    /* renamed from: a */
    public static int m23056a(String str, boolean z) {
        return m23055a(str, z, (int[]) null);
    }

    /* renamed from: a */
    public static int m23055a(String str, boolean z, int[] iArr) {
        boolean z2 = f15789g;
        if (m23048d() == null) {
            C6438i.m22578d("[AbMgr] sdk init not ready, return default value for key : " + str);
            return 0;
        }
        int a = m23059a(f15791i, str);
        try {
            if (m23054a((JSONObject) null, z2) == null && f15785c == null) {
                String b = m23050b("pref_abv2_client_experiments", "pref_lowsecure_abv2_client_experiments");
                if (!TextUtils.isEmpty(b)) {
                    f15785c = new JSONObject(b);
                } else {
                    f15785c = new JSONObject();
                }
            }
            m23044h();
            if (!f15786d.isNull(str)) {
                JSONObject jSONObject = f15786d.getJSONObject(str);
                if (jSONObject.isNull("group")) {
                    jSONObject.put("group", m23063a(a, jSONObject.getJSONArray("groups")));
                }
                return jSONObject.getInt("group");
            } else if (z2 || f15785c == null) {
                if (f15785c == null || f15785c.isNull(str)) {
                    if (f15784b != null && !f15784b.isNull(str)) {
                        JSONObject jSONObject2 = f15784b.getJSONObject(str);
                        if (jSONObject2.isNull("group")) {
                            jSONObject2.put("group", m23063a(a, jSONObject2.getJSONArray("groups")));
                        }
                        return jSONObject2.getInt("group");
                    }
                    return m23062a(a, iArr);
                }
                JSONObject jSONObject3 = f15785c.getJSONObject(str);
                if (jSONObject3.isNull("group")) {
                    jSONObject3.put("group", m23063a(a, jSONObject3.getJSONArray("groups")));
                }
                return jSONObject3.getInt("group");
            } else if (f15785c.isNull(str)) {
                JSONObject jSONObject4 = new JSONObject();
                int a2 = m23062a(a, iArr);
                jSONObject4.put("group", a2);
                jSONObject4.put("isLocked", z);
                f15785c.put(str, jSONObject4);
                return a2;
            } else {
                JSONObject jSONObject5 = f15785c.getJSONObject(str);
                if (z && !jSONObject5.optBoolean("isLocked", false)) {
                    jSONObject5.put("isLocked", true);
                }
                if (jSONObject5.isNull("group")) {
                    jSONObject5.put("group", m23063a(a, jSONObject5.getJSONArray("groups")));
                }
                return jSONObject5.getInt("group");
            }
        } catch (JSONException e) {
            C6438i.m22583a(e);
            return m23062a(a, iArr);
        } catch (Exception e2) {
            return m23062a(a, iArr);
        }
    }

    /* renamed from: a */
    public static JSONObject m23057a(String str, JSONObject jSONObject, boolean z) {
        JSONObject jSONObject2;
        Exception e;
        synchronized (C6355a.class) {
            try {
                try {
                    if (f15784b != null || !z) {
                        jSONObject2 = null;
                    } else {
                        JSONObject jSONObject3 = new JSONObject();
                        try {
                            synchronized (C6355a.class) {
                                try {
                                    if (f15784b == null) {
                                        String b = m23050b("pref_abv2_client_experiments", "pref_lowsecure_abv2_client_experiments");
                                        if (!TextUtils.isEmpty(b)) {
                                            f15784b = new JSONObject(b);
                                        } else {
                                            f15784b = new JSONObject();
                                        }
                                        if (!C6334a.m23211s().m23244a("pref_experiments_is_synced", true)) {
                                            JSONObject jSONObject4 = jSONObject;
                                            if (jSONObject == null) {
                                                String b2 = m23050b("pref_abv2_experiments", "pref_lowsecure_abv2_experiments");
                                                jSONObject4 = jSONObject;
                                                if (!TextUtils.isEmpty(b2)) {
                                                    jSONObject4 = new JSONObject(b2);
                                                }
                                            }
                                            if (jSONObject4 == null) {
                                                f15783a = new JSONArray();
                                            } else if (!jSONObject4.isNull("abresult")) {
                                                f15783a = jSONObject4.getJSONArray("abresult");
                                            } else {
                                                f15783a = new JSONArray();
                                            }
                                            JSONObject jSONObject5 = new JSONObject();
                                            m23048d();
                                            String str2 = str;
                                            if (TextUtils.isEmpty(str)) {
                                                str2 = C6334a.m23211s().m23234b("pref_abv2_last_region", "");
                                            }
                                            HashSet hashSet = new HashSet();
                                            for (int i = 0; i < f15783a.length(); i++) {
                                                JSONObject jSONObject6 = f15783a.getJSONObject(i);
                                                if (TextUtils.isEmpty(jSONObject6.getString("region")) || jSONObject6.getString("region").contains(str2)) {
                                                    String string = jSONObject6.getString("tid");
                                                    int a = m23059a(f15791i, string);
                                                    hashSet.add(string);
                                                    JSONObject jSONObject7 = new JSONObject();
                                                    if (f15784b.isNull(string)) {
                                                        jSONObject3.put(string, new JSONObject().put(C3478n.f5989a, m23063a(a, jSONObject6.getJSONArray("groups"))));
                                                    }
                                                    jSONObject7.put("groups", jSONObject6.getJSONArray("groups"));
                                                    jSONObject7.put("abid", jSONObject6.getInt("abid"));
                                                    f15784b.put(string, jSONObject7);
                                                    jSONObject5.put(String.valueOf(jSONObject6.getInt("abid")), m23063a(a, jSONObject6.getJSONArray("groups")));
                                                }
                                            }
                                            Iterator<String> keys = f15784b.keys();
                                            ArrayList arrayList = new ArrayList();
                                            while (keys.hasNext()) {
                                                String next = keys.next();
                                                if (!hashSet.contains(next)) {
                                                    arrayList.add(next);
                                                }
                                            }
                                            if (arrayList.size() > 0) {
                                                Iterator it = arrayList.iterator();
                                                while (it.hasNext()) {
                                                    f15784b.remove((String) it.next());
                                                }
                                                arrayList.clear();
                                            }
                                            f15787e = jSONObject5;
                                            C6334a.m23211s().m23228c("pref_lowsecure_abv2_client_experiments", f15784b.toString());
                                            C6334a.m23211s().m23228c("pref_lowsecure_abv2_abgroups", jSONObject5.toString());
                                            C6334a.m23211s().m23232b("pref_experiments_is_synced", true);
                                        }
                                        if (f15785c != null) {
                                            Iterator<String> keys2 = f15785c.keys();
                                            ArrayList arrayList2 = new ArrayList();
                                            while (keys2.hasNext()) {
                                                String next2 = keys2.next();
                                                if (!f15785c.getJSONObject(next2).optBoolean("isLocked", false)) {
                                                    arrayList2.add(next2);
                                                }
                                            }
                                            if (arrayList2.size() > 0) {
                                                Iterator it2 = arrayList2.iterator();
                                                while (it2.hasNext()) {
                                                    f15785c.remove((String) it2.next());
                                                }
                                            }
                                        }
                                    }
                                    jSONObject2 = jSONObject3;
                                } finally {
                                }
                            }
                        } catch (Exception e2) {
                            e = e2;
                            jSONObject2 = jSONObject3;
                            C6438i.m22583a(e);
                            return jSONObject2;
                        }
                    }
                } finally {
                }
            } catch (Exception e3) {
                e = e3;
                jSONObject2 = null;
            }
        }
        return jSONObject2;
    }

    /* renamed from: a */
    public static JSONObject m23054a(JSONObject jSONObject, boolean z) {
        JSONObject a;
        synchronized (C6355a.class) {
            try {
                a = m23057a(f15792j, jSONObject, z);
            } catch (Throwable th) {
                throw th;
            }
        }
        return a;
    }

    /* renamed from: a */
    public static void m23061a(AbstractC6378d dVar) {
        int a = C6334a.m23211s().m23253a("pref_abv2_saved_app_version", 0);
        int g = C6334a.m23211s().m23223g();
        if (C6334a.m23211s().m23252a("pref_abv2_next_update_time", 0L) <= System.currentTimeMillis() || a != g) {
            if (a != g) {
                C6438i.m22578d("[AbMgr] app update!");
            }
            ArrayList<String> arrayList = f15788f;
            if (arrayList != null && arrayList.size() > 0) {
                try {
                    C6341b bVar = new C6341b();
                    String g2 = m23045g();
                    Uri.Builder builder = new Uri.Builder();
                    builder.appendQueryParameter("test_ids", TextUtils.join(",", f15788f));
                    bVar.f15755a = g2 + "/ab/v2" + builder.toString();
                    bVar.f15756b = "GET";
                    bVar.f15758d = C6357a.m23017c();
                    bVar.f15765k = true;
                    bVar.f15768n = true;
                    bVar.f15766l = false;
                    bVar.f15772r = 1;
                    bVar.f15771q = 2;
                    bVar.f15760f = new C6356a(a, g, dVar);
                    C6438i.m22578d("[AbMgr] request object = " + bVar.toString());
                    C6334a.m23211s().m23238b(bVar);
                } catch (Exception e) {
                    C6438i.m22583a(e);
                }
            }
        } else {
            C6438i.m22578d("[AbMgr] hit cache");
            if (dVar != null) {
                try {
                    dVar.mo1272a(304, null);
                } catch (Exception e2) {
                    C6438i.m22578d(e2.getMessage());
                }
            }
        }
    }

    /* renamed from: a */
    public static void m23060a(String str) {
        synchronized (C6355a.class) {
            try {
                if (f15788f == null) {
                    f15788f = new ArrayList<>();
                    m23044h();
                    f15790h = m23042j();
                }
                if (!TextUtils.isEmpty(str) && !f15788f.contains(str) && (f15790h || f15786d.isNull(str))) {
                    f15788f.add(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m23058a(String str, JSONArray jSONArray) {
        JSONObject jSONObject;
        C6438i.m22578d("[AbMgr] updateExpiredExperiments");
        m23044h();
        if (jSONArray != null) {
            String str2 = str;
            if (TextUtils.isEmpty(str)) {
                str2 = C6334a.m23211s().m23234b("pref_abv2_last_region", "");
            }
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    jSONObject = jSONArray.getJSONObject(i);
                } catch (JSONException e) {
                    C6438i.m22583a(e);
                }
                if (!TextUtils.isEmpty(jSONObject.getString("region")) && !jSONObject.getString("region").contains(str2)) {
                    if (f15786d.isNull(jSONObject.getString("tid"))) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("groups", new JSONArray().put(0));
                        f15786d.put(jSONObject.getString("tid"), jSONObject2);
                    }
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("groups", jSONObject.getJSONArray("groups"));
                f15786d.put(jSONObject.getString("tid"), jSONObject3);
            }
        }
        C6334a.m23211s().m23228c("pref_lowsecure_abv2_expired_experiments", f15786d.toString());
    }

    /* renamed from: b */
    public static String m23050b(String str, String str2) {
        String str3;
        if (C6334a.m23211s().m23216n().contains(str)) {
            String a = C6334a.m23211s().m23246a(str, "", true);
            C6334a.m23211s().m23216n().edit().remove(str).apply();
            C6334a.m23211s().m23228c(str2, a);
            str3 = a;
        } else {
            str3 = C6334a.m23211s().m23248a(str2, "");
        }
        return str3;
    }

    /* renamed from: b */
    public static void m23052b() {
        f15784b = null;
        C6334a.m23211s().m23228c("pref_lowsecure_abv2_client_experiments", "");
    }

    /* renamed from: b */
    public static void m23051b(String str) {
        f15789g = true;
        if (!TextUtils.isEmpty(str) && !str.equals(m23050b("pref_abv2_experiments", "pref_lowsecure_abv2_experiments"))) {
            C6334a.m23211s().m23228c("pref_lowsecure_abv2_experiments", str);
            C6334a.m23211s().m23232b("pref_experiments_is_synced", false);
        }
    }

    /* renamed from: c */
    public static void m23049c() {
        f15786d = null;
        C6334a.m23211s().m23228c("pref_lowsecure_abv2_expired_experiments", "");
    }

    /* renamed from: d */
    public static String m23048d() {
        if (!TextUtils.isEmpty(f15791i)) {
            return f15791i;
        }
        String str = null;
        f15791i = C6334a.m23211s().m23234b("pref_ab_did", (String) null);
        if (!TextUtils.isEmpty(f15791i)) {
            str = f15791i;
        }
        return str;
    }

    /* renamed from: e */
    public static JSONObject m23047e() {
        if (f15787e == null) {
            try {
                f15787e = new JSONObject(m23050b("pref_abv2_abgroups", "pref_lowsecure_abv2_abgroups"));
            } catch (JSONException e) {
                f15787e = new JSONObject();
            }
        }
        return f15787e;
    }

    /* renamed from: f */
    public static String m23046f() {
        if (!TextUtils.isEmpty(f15792j)) {
            return f15792j;
        }
        f15792j = C6344e.m23187f();
        if (!TextUtils.equals(f15792j, C6334a.m23211s().m23234b("pref_abv2_last_region", ""))) {
            C6438i.m22578d("[AbMgr] change region");
            m23049c();
            m23052b();
            C6334a.m23211s().m23232b("pref_experiments_is_synced", false);
        }
        C6334a.m23211s().m23226d("pref_abv2_last_region", f15792j);
        if (!TextUtils.isEmpty(f15792j)) {
            return f15792j;
        }
        throw new NullPointerException();
    }

    /* renamed from: g */
    public static String m23045g() {
        return C6344e.m23186g() ? "https://ggacdn.whoscall.com" : "https://gga-staging.whoscall.com";
    }

    /* renamed from: h */
    public static void m23044h() {
        if (f15786d == null) {
            C6438i.m22578d("[AbMgr] loadExpiredExperiments");
            try {
                String b = m23050b("pref_abv2_expired_experiments", "pref_lowsecure_abv2_expired_experiments");
                if (TextUtils.isEmpty(b)) {
                    f15786d = new JSONObject();
                } else {
                    f15786d = new JSONObject(b);
                }
            } catch (Exception e) {
                f15786d = new JSONObject();
            }
        }
    }

    /* renamed from: i */
    public static void m23043i() {
        if (C6334a.m23211s().m23216n().contains("pref_client_experiments")) {
            C6334a.m23211s().m23216n().edit().remove("pref_client_experiments").remove("pref_experiments").apply();
        }
        C6334a.m23211s().m23228c("pref_lowsecure_abv2_experiments", "");
        C6334a.m23211s().m23228c("pref_lowsecure_abv2_client_experiments", "");
        C6334a.m23211s().m23228c("pref_lowsecure_abv2_expired_experiments", "");
        C6334a.m23211s().m23226d("pref_abv2_last_region", "");
        C6334a.m23211s().m23232b("pref_experiments_is_synced", true);
        C6334a.m23211s().m23235b("pref_abv2_next_update_time", 0L);
        f15789g = false;
        f15790h = false;
        f15783a = null;
        f15784b = null;
        f15785c = null;
        f15788f = null;
        f15786d = null;
        f15791i = null;
        f15792j = null;
    }

    /* renamed from: j */
    public static boolean m23042j() {
        if (C6334a.m23211s().m23253a("pref_abv2_saved_app_version", 0) != C6334a.m23211s().m23223g()) {
            return true;
        }
        String b = C6334a.m23211s().m23234b("pref_abv2_last_region", "");
        String f = C6344e.m23187f();
        String str = f;
        if (!TextUtils.isEmpty(f)) {
            str = f.toUpperCase();
        }
        return !TextUtils.equals(b, str);
    }
}
