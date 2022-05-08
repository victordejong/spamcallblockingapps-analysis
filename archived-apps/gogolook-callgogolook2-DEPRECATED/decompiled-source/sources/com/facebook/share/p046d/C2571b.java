package com.facebook.share.p046d;

import com.facebook.share.model.CameraEffectArguments;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.share.d.b */
/* loaded from: classes-dex2jar.jar:com/facebook/share/d/b.class */
public class C2571b {

    /* renamed from: a */
    public static final Map<Class<?>, AbstractC2575d> f3430a = new HashMap();

    /* renamed from: com.facebook.share.d.b$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/b$a.class */
    public static final class C2572a implements AbstractC2575d {
        @Override // com.facebook.share.p046d.C2571b.AbstractC2575d
        /* renamed from: a */
        public void mo34274a(JSONObject jSONObject, String str, Object obj) throws JSONException {
            jSONObject.put(str, obj);
        }
    }

    /* renamed from: com.facebook.share.d.b$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/b$b.class */
    public static final class C2573b implements AbstractC2575d {
        @Override // com.facebook.share.p046d.C2571b.AbstractC2575d
        /* renamed from: a */
        public void mo34274a(JSONObject jSONObject, String str, Object obj) throws JSONException {
            JSONArray jSONArray = new JSONArray();
            for (String str2 : (String[]) obj) {
                jSONArray.put(str2);
            }
            jSONObject.put(str, jSONArray);
        }
    }

    /* renamed from: com.facebook.share.d.b$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/b$c.class */
    public static final class C2574c implements AbstractC2575d {
        @Override // com.facebook.share.p046d.C2571b.AbstractC2575d
        /* renamed from: a */
        public void mo34274a(JSONObject jSONObject, String str, Object obj) throws JSONException {
            throw new IllegalArgumentException("JSONArray's are not supported in bundles.");
        }
    }

    /* renamed from: com.facebook.share.d.b$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/b$d.class */
    public interface AbstractC2575d {
        /* renamed from: a */
        void mo34274a(JSONObject jSONObject, String str, Object obj) throws JSONException;
    }

    static {
        f3430a.put(String.class, new C2572a());
        f3430a.put(String[].class, new C2573b());
        f3430a.put(JSONArray.class, new C2574c());
    }

    /* renamed from: a */
    public static JSONObject m34275a(CameraEffectArguments cameraEffectArguments) throws JSONException {
        if (cameraEffectArguments == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        for (String str : cameraEffectArguments.m33942a()) {
            Object a = cameraEffectArguments.m33940a(str);
            if (a != null) {
                AbstractC2575d dVar = f3430a.get(a.getClass());
                if (dVar != null) {
                    dVar.mo34274a(jSONObject, str, a);
                } else {
                    throw new IllegalArgumentException("Unsupported type: " + a.getClass());
                }
            }
        }
        return jSONObject;
    }
}
