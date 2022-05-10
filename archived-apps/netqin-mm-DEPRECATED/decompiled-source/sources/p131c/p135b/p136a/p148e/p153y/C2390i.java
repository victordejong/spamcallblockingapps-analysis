package p131c.p135b.p136a.p148e.p153y;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
/* renamed from: c.b.a.e.y.i */
/* loaded from: classes-dex2jar.jar:c/b/a/e/y/i.class */
public class C2390i {
    /* renamed from: a */
    public static float m29931a(JSONObject jSONObject, String str, float f, C2341l lVar) {
        float f2 = f;
        if (jSONObject != null) {
            f2 = f;
            if (jSONObject.has(str)) {
                try {
                    double d = jSONObject.getDouble(str);
                    f2 = f;
                    if (-3.4028234663852886E38d < d) {
                        f2 = f;
                        if (d < 3.4028234663852886E38d) {
                            f2 = (float) d;
                        }
                    }
                } catch (JSONException e) {
                    f2 = f;
                    if (lVar != null) {
                        C2374t d0 = lVar.m30262d0();
                        d0.m30043b("JsonUtils", "Failed to retrieve float property for key = " + str, e);
                        f2 = f;
                    }
                }
            }
        }
        return f2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m29929a(org.json.JSONObject r5, java.lang.String r6, long r7, p131c.p135b.p136a.p148e.C2341l r9) {
        /*
            r0 = r7
            r10 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0054
            r0 = r7
            r10 = r0
            r0 = r5
            r1 = r6
            boolean r0 = r0.has(r1)
            if (r0 == 0) goto L_0x0054
            r0 = r5
            r1 = r6
            long r0 = r0.getLong(r1)     // Catch: JSONException -> 0x001c
            r10 = r0
            goto L_0x0054
        L_0x001c:
            r5 = move-exception
            r0 = r7
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0054
            r0 = r9
            c.b.a.e.t r0 = r0.m30262d0()
            r12 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "Failed to retrieve int property for key = "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r12
            java.lang.String r1 = "JsonUtils"
            r2 = r9
            java.lang.String r2 = r2.toString()
            r3 = r5
            r0.m30043b(r1, r2, r3)
            r0 = r7
            r10 = r0
        L_0x0054:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p135b.p136a.p148e.p153y.C2390i.m29929a(org.json.JSONObject, java.lang.String, long, c.b.a.e.l):long");
    }

    /* renamed from: a */
    public static Bundle m29943a(Object obj) {
        JSONObject jSONObject;
        if (obj instanceof JSONObject) {
            jSONObject = (JSONObject) obj;
        } else {
            if (obj instanceof String) {
                try {
                    jSONObject = new JSONObject((String) obj);
                } catch (JSONException e) {
                }
            }
            jSONObject = null;
        }
        return m29909c(jSONObject);
    }

    /* renamed from: a */
    public static Boolean m29928a(JSONObject jSONObject, String str, Boolean bool, C2341l lVar) {
        Boolean bool2 = bool;
        if (jSONObject != null) {
            bool2 = bool;
            if (jSONObject.has(str)) {
                try {
                    bool2 = Boolean.valueOf(jSONObject.getBoolean(str));
                } catch (JSONException e) {
                    boolean z = true;
                    if (m29916b(jSONObject, str, (bool == null || !bool.booleanValue()) ? 0 : 1, lVar) <= 0) {
                        z = false;
                    }
                    return Boolean.valueOf(z);
                }
            }
        }
        return bool2;
    }

    /* renamed from: a */
    public static Object m29935a(JSONArray jSONArray, int i, Object obj, C2341l lVar) {
        Object obj2 = obj;
        if (jSONArray != null) {
            obj2 = obj;
            if (jSONArray.length() > i) {
                try {
                    obj2 = jSONArray.get(i);
                } catch (JSONException e) {
                    obj2 = obj;
                    if (lVar != null) {
                        C2374t d0 = lVar.m30262d0();
                        d0.m30043b("JsonUtils", "Failed to retrieve object at index " + i + " for JSON array", e);
                        obj2 = obj;
                    }
                }
            }
        }
        return obj2;
    }

    /* renamed from: a */
    public static String m29937a(Map<String, Object> map, String str, C2341l lVar) {
        try {
            return m29938a((Map<String, ?>) map).toString();
        } catch (JSONException e) {
            C2374t d0 = lVar.m30262d0();
            d0.m30043b("JsonUtils", "Failed to convert map '" + map + "' to JSON string.", e);
            return str;
        }
    }

    /* renamed from: a */
    public static ArrayList<Bundle> m29936a(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return new ArrayList<>();
        }
        ArrayList<Bundle> arrayList = new ArrayList<>(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(m29909c(jSONArray.optJSONObject(i)));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static List m29925a(JSONObject jSONObject, String str, List list, C2341l lVar) {
        List list2;
        try {
            JSONArray b = m29912b(jSONObject, str, (JSONArray) null, lVar);
            list2 = list;
            if (b != null) {
                list2 = m29918b(b);
            }
        } catch (JSONException e) {
            list2 = list;
        }
        return list2;
    }

    /* renamed from: a */
    public static Map<String, String> m29944a(Bundle bundle) {
        if (bundle == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(bundle.size());
        for (String str : bundle.keySet()) {
            hashMap.put(str, String.valueOf(bundle.get(str)));
        }
        return hashMap;
    }

    /* renamed from: a */
    public static Map<String, Object> m29941a(String str, Map<String, Object> map, C2341l lVar) {
        try {
            return m29917b(new JSONObject(str));
        } catch (JSONException e) {
            C2374t d0 = lVar.m30262d0();
            d0.m30043b("JsonUtils", "Failed to convert json string '" + str + "' to map", e);
            return map;
        }
    }

    /* renamed from: a */
    public static Map<String, String> m29933a(JSONObject jSONObject) throws JSONException {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, m29910c(jSONObject.get(next)).toString());
        }
        return hashMap;
    }

    /* renamed from: a */
    public static JSONObject m29942a(String str, C2341l lVar) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new JSONObject(str);
        } catch (Throwable th) {
            C2374t d0 = lVar.m30262d0();
            d0.m30039e("JsonUtils", "Failed to deserialize into JSON: " + str);
            return null;
        }
    }

    /* renamed from: a */
    public static JSONObject m29939a(String str, JSONObject jSONObject, C2341l lVar) {
        try {
            return new JSONObject(str);
        } catch (JSONException e) {
            if (lVar != null) {
                C2374t d0 = lVar.m30262d0();
                d0.m30043b("JsonUtils", "Failed to convert JSON string '" + str + "' to JSONObject", e);
            }
            return jSONObject;
        }
    }

    /* renamed from: a */
    public static JSONObject m29938a(Map<String, ?> map) throws JSONException {
        if (map == null) {
            return new JSONObject();
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            jSONObject.put(entry.getKey(), entry.getValue());
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static JSONObject m29934a(JSONArray jSONArray, int i, JSONObject jSONObject, C2341l lVar) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONArray != null) {
            jSONObject2 = jSONObject;
            if (i < jSONArray.length()) {
                try {
                    jSONObject2 = jSONArray.getJSONObject(i);
                } catch (JSONException e) {
                    jSONObject2 = jSONObject;
                    if (lVar != null) {
                        C2374t d0 = lVar.m30262d0();
                        d0.m30043b("JsonUtils", "Failed to retrieve JSON object from array for index = " + i, e);
                        jSONObject2 = jSONObject;
                    }
                }
            }
        }
        return jSONObject2;
    }

    /* renamed from: a */
    public static void m29930a(JSONObject jSONObject, String str, int i, C2341l lVar) {
        if (jSONObject != null) {
            try {
                jSONObject.put(str, i);
            } catch (JSONException e) {
                if (lVar != null) {
                    C2374t d0 = lVar.m30262d0();
                    d0.m30043b("JsonUtils", "Failed to put int property for key = " + str, e);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m29927a(JSONObject jSONObject, String str, Object obj, C2341l lVar) {
        if (jSONObject != null) {
            try {
                jSONObject.put(str, obj);
            } catch (JSONException e) {
                if (lVar != null) {
                    C2374t d0 = lVar.m30262d0();
                    d0.m30043b("JsonUtils", "Failed to put Object property for key = " + str, e);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m29926a(JSONObject jSONObject, String str, String str2, C2341l lVar) {
        if (jSONObject != null) {
            try {
                jSONObject.put(str, str2);
            } catch (JSONException e) {
                if (lVar != null) {
                    C2374t d0 = lVar.m30262d0();
                    d0.m30043b("JsonUtils", "Failed to put String property for key = " + str, e);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m29924a(JSONObject jSONObject, String str, JSONArray jSONArray, C2341l lVar) {
        if (jSONObject != null) {
            try {
                jSONObject.put(str, jSONArray);
            } catch (JSONException e) {
                if (lVar != null) {
                    C2374t d0 = lVar.m30262d0();
                    d0.m30043b("JsonUtils", "Failed to put JSONArray property for key = " + str, e);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m29923a(JSONObject jSONObject, String str, JSONObject jSONObject2, C2341l lVar) {
        if (jSONObject != null) {
            try {
                jSONObject.put(str, jSONObject2);
            } catch (JSONException e) {
                if (lVar != null) {
                    C2374t d0 = lVar.m30262d0();
                    d0.m30043b("JsonUtils", "Failed to put JSON property for key = " + str, e);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m29922a(JSONObject jSONObject, String str, boolean z, C2341l lVar) {
        if (jSONObject != null) {
            try {
                jSONObject.put(str, z);
            } catch (JSONException e) {
                if (lVar != null) {
                    C2374t d0 = lVar.m30262d0();
                    d0.m30043b("JsonUtils", "Failed to put boolean property for key = " + str, e);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m29921a(JSONObject jSONObject, JSONObject jSONObject2, C2341l lVar) {
        if (jSONObject != null && jSONObject2 != null) {
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object b = m29914b(jSONObject2, next, (Object) null, lVar);
                if (b != null) {
                    m29927a(jSONObject, next, b, lVar);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m29920a(JSONObject jSONObject, String[] strArr) {
        for (String str : strArr) {
            jSONObject.remove(str);
        }
    }

    /* renamed from: a */
    public static boolean m29940a(String str, JSONArray jSONArray) {
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                Object obj = jSONArray.get(i);
                if ((obj instanceof String) && ((String) obj).equalsIgnoreCase(str)) {
                    return true;
                }
            } catch (JSONException e) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m29932a(JSONObject jSONObject, String str) {
        return jSONObject != null && jSONObject.has(str);
    }

    /* renamed from: b */
    public static int m29916b(JSONObject jSONObject, String str, int i, C2341l lVar) {
        int i2 = i;
        if (jSONObject != null) {
            i2 = i;
            if (jSONObject.has(str)) {
                try {
                    i2 = jSONObject.getInt(str);
                } catch (JSONException e) {
                    i2 = i;
                    if (lVar != null) {
                        C2374t d0 = lVar.m30262d0();
                        d0.m30043b("JsonUtils", "Failed to retrieve int property for key = " + str, e);
                        i2 = i;
                    }
                }
            }
        }
        return i2;
    }

    /* renamed from: b */
    public static Object m29914b(JSONObject jSONObject, String str, Object obj, C2341l lVar) {
        Object obj2 = obj;
        if (jSONObject != null) {
            obj2 = obj;
            if (jSONObject.has(str)) {
                try {
                    Object obj3 = jSONObject.get(str);
                    obj2 = obj;
                    if (obj3 != null) {
                        obj2 = obj3;
                    }
                } catch (JSONException e) {
                    obj2 = obj;
                    if (lVar != null) {
                        C2374t d0 = lVar.m30262d0();
                        d0.m30043b("JsonUtils", "Failed to retrieve Object for key = " + str, e);
                        obj2 = obj;
                    }
                }
            }
        }
        return obj2;
    }

    /* renamed from: b */
    public static String m29913b(JSONObject jSONObject, String str, String str2, C2341l lVar) {
        String str3 = str2;
        if (jSONObject != null) {
            str3 = str2;
            if (jSONObject.has(str)) {
                try {
                    str3 = jSONObject.getString(str);
                } catch (JSONException e) {
                    str3 = str2;
                    if (lVar != null) {
                        C2374t d0 = lVar.m30262d0();
                        d0.m30043b("JsonUtils", "Failed to retrieve string property for key = " + str, e);
                        str3 = str2;
                    }
                }
            }
        }
        return str3;
    }

    /* renamed from: b */
    public static List m29918b(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(m29910c(jSONArray.get(i)));
        }
        return arrayList;
    }

    /* renamed from: b */
    public static Map<String, Object> m29917b(JSONObject jSONObject) throws JSONException {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, m29910c(jSONObject.get(next)));
        }
        return hashMap;
    }

    /* renamed from: b */
    public static JSONArray m29919b(Object obj) {
        if (obj == null) {
            return new JSONArray();
        }
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(obj);
        return jSONArray;
    }

    /* renamed from: b */
    public static JSONArray m29912b(JSONObject jSONObject, String str, JSONArray jSONArray, C2341l lVar) {
        JSONArray jSONArray2 = jSONArray;
        if (jSONObject != null) {
            jSONArray2 = jSONArray;
            if (jSONObject.has(str)) {
                try {
                    jSONArray2 = jSONObject.getJSONArray(str);
                } catch (JSONException e) {
                    jSONArray2 = jSONArray;
                    if (lVar != null) {
                        C2374t d0 = lVar.m30262d0();
                        d0.m30043b("JsonUtils", "Failed to retrieve JSON array for key = " + str, e);
                        jSONArray2 = jSONArray;
                    }
                }
            }
        }
        return jSONArray2;
    }

    /* renamed from: b */
    public static JSONObject m29911b(JSONObject jSONObject, String str, JSONObject jSONObject2, C2341l lVar) {
        JSONObject jSONObject3 = jSONObject2;
        if (jSONObject != null) {
            jSONObject3 = jSONObject2;
            if (jSONObject.has(str)) {
                try {
                    jSONObject3 = jSONObject.getJSONObject(str);
                } catch (JSONException e) {
                    jSONObject3 = jSONObject2;
                    if (lVar != null) {
                        C2374t d0 = lVar.m30262d0();
                        d0.m30043b("JsonUtils", "Failed to retrieve JSON property for key = " + str, e);
                        jSONObject3 = jSONObject2;
                    }
                }
            }
        }
        return jSONObject3;
    }

    /* renamed from: b */
    public static void m29915b(JSONObject jSONObject, String str, long j, C2341l lVar) {
        if (jSONObject != null) {
            try {
                jSONObject.put(str, j);
            } catch (JSONException e) {
                if (lVar != null) {
                    C2374t d0 = lVar.m30262d0();
                    d0.m30043b("JsonUtils", "Failed to put long property for key = " + str, e);
                }
            }
        }
    }

    /* renamed from: c */
    public static Bundle m29909c(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return new Bundle();
        }
        Bundle bundle = new Bundle();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (jSONObject.isNull(next)) {
                bundle.putString(next, null);
            } else {
                Object opt = jSONObject.opt(next);
                if (opt instanceof JSONObject) {
                    bundle.putBundle(next, m29909c((JSONObject) opt));
                } else if (opt instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) opt;
                    if (jSONArray.length() == 0) {
                        bundle.putStringArrayList(next, new ArrayList<>(0));
                    } else if (m29935a(jSONArray, 0, (Object) null, (C2341l) null) instanceof String) {
                        ArrayList<String> arrayList = new ArrayList<>(jSONArray.length());
                        for (int i = 0; i < jSONArray.length(); i++) {
                            arrayList.add((String) m29935a(jSONArray, i, (Object) null, (C2341l) null));
                        }
                        bundle.putStringArrayList(next, arrayList);
                    } else {
                        bundle.putParcelableArrayList(next, m29936a(jSONArray));
                    }
                } else if (opt instanceof Boolean) {
                    bundle.putBoolean(next, ((Boolean) opt).booleanValue());
                } else if (opt instanceof String) {
                    bundle.putString(next, (String) opt);
                } else if (opt instanceof Integer) {
                    bundle.putInt(next, ((Integer) opt).intValue());
                } else if (opt instanceof Long) {
                    bundle.putLong(next, ((Long) opt).longValue());
                } else if (opt instanceof Double) {
                    bundle.putDouble(next, ((Double) opt).doubleValue());
                }
            }
        }
        return bundle;
    }

    /* renamed from: c */
    public static Object m29910c(Object obj) throws JSONException {
        if (obj == JSONObject.NULL) {
            return null;
        }
        if (obj instanceof JSONObject) {
            return m29917b((JSONObject) obj);
        }
        Object obj2 = obj;
        if (obj instanceof JSONArray) {
            obj2 = m29918b((JSONArray) obj);
        }
        return obj2;
    }

    /* renamed from: d */
    public static JSONObject m29908d(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                jSONObject2.put(next, jSONObject.get(next));
            } catch (JSONException e) {
                C2374t.m30035i("JsonUtils", "Failed to copy over item for key '" + next + "' to JSONObject copy");
            }
        }
        return jSONObject2;
    }

    /* renamed from: e */
    public static String m29907e(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return jSONObject.toString(4);
        } catch (JSONException e) {
            return jSONObject.toString();
        }
    }
}
