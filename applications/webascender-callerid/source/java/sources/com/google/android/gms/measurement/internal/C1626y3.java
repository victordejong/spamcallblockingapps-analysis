package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.common.internal.C0931r;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.measurement.internal.y3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/y3.class */
public final class C1626y3 {

    /* renamed from: a */
    private final String f4586a = "default_event_parameters";

    /* renamed from: b */
    private final Bundle f4587b = new Bundle();

    /* renamed from: c */
    private Bundle f4588c;

    /* renamed from: d */
    final /* synthetic */ c4 f4589d;

    public C1626y3(c4 c4Var, String str, Bundle bundle) {
        this.f4589d = c4Var;
        C0931r.m3312g("default_event_parameters");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f5 A[Catch: NumberFormatException | JSONException -> 0x0105, TRY_ENTER, TRY_LEAVE, TryCatch #0 {NumberFormatException | JSONException -> 0x0105, blocks: (B:11:0x0041, B:34:0x00b9, B:35:0x00cf, B:36:0x00e2, B:37:0x00f5), top: B:49:0x0041, outer: #1 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle m1488a() {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C1626y3.m1488a():android.os.Bundle");
    }

    /* renamed from: b */
    public final void m1487b(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        SharedPreferences.Editor edit = this.f4589d.p().edit();
        if (bundle2.size() == 0) {
            edit.remove(this.f4586a);
        } else {
            String str = this.f4586a;
            JSONArray jSONArray = new JSONArray();
            for (String str2 : bundle2.keySet()) {
                Object obj = bundle2.get(str2);
                if (obj != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("n", str2);
                        jSONObject.put("v", String.valueOf(obj));
                        if (obj instanceof String) {
                            jSONObject.put("t", "s");
                        } else if (obj instanceof Long) {
                            jSONObject.put("t", "l");
                        } else if (obj instanceof Double) {
                            jSONObject.put("t", "d");
                        } else {
                            ((l5) this.f4589d).a.c().o().m1569b("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                        }
                        jSONArray.put(jSONObject);
                    } catch (JSONException e) {
                        ((l5) this.f4589d).a.c().o().m1569b("Cannot serialize bundle value to SharedPreferences", e);
                    }
                }
            }
            edit.putString(str, jSONArray.toString());
        }
        edit.apply();
        this.f4588c = bundle2;
    }
}
