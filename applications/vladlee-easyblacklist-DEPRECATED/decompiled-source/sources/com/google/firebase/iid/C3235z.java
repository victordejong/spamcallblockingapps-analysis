package com.google.firebase.iid;

import android.text.TextUtils;
import android.util.Log;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.firebase.iid.z */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/z.class */
final class C3235z {

    /* renamed from: b */
    private static final long f19161b = TimeUnit.DAYS.toMillis(7);

    /* renamed from: a */
    final String f19162a;

    /* renamed from: c */
    private final String f19163c;

    /* renamed from: d */
    private final long f19164d;

    private C3235z(String str, String str2, long j) {
        this.f19162a = str;
        this.f19163c = str2;
        this.f19164d = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C3235z m429a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!str.startsWith("{")) {
            return new C3235z(str, null, 0L);
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new C3235z(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong("timestamp"));
        } catch (JSONException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("Failed to parse token: ");
            sb.append(valueOf);
            Log.w("FirebaseInstanceId", sb.toString());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m430a(C3235z zVar) {
        if (zVar == null) {
            return null;
        }
        return zVar.f19162a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m428a(String str, String str2, long j) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("token", str);
            jSONObject.put("appVersion", str2);
            jSONObject.put("timestamp", j);
            return jSONObject.toString();
        } catch (JSONException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 24);
            sb.append("Failed to encode token: ");
            sb.append(valueOf);
            Log.w("FirebaseInstanceId", sb.toString());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m427b(String str) {
        return System.currentTimeMillis() > this.f19164d + f19161b || !str.equals(this.f19163c);
    }
}
