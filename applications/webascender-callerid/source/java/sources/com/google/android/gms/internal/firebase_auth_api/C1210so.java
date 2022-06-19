package com.google.android.gms.internal.firebase_auth_api;

import android.util.Log;
import com.google.android.gms.internal.firebase-auth-api.zzqe;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.so */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/so.class */
public final class C1210so {
    /* renamed from: a */
    public static List<String> m2455a(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null && jSONArray.length() != 0) {
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(jSONArray.getString(i));
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public static zzqe m2454b(Exception exc, String str, String str2) {
        String message = exc.getMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 47 + String.valueOf(str2).length() + String.valueOf(message).length());
        sb.append("Failed to parse ");
        sb.append(str);
        sb.append(" for string [");
        sb.append(str2);
        sb.append("] with exception: ");
        sb.append(message);
        Log.e(str, sb.toString());
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 30 + String.valueOf(str2).length());
        sb2.append("Failed to parse ");
        sb2.append(str);
        sb2.append(" for string [");
        sb2.append(str2);
        sb2.append("]");
        return new zzqe(sb2.toString(), exc);
    }
}
