package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahz.class */
public final /* synthetic */ class zzahz {
    public static void zza(zzaia zzaiaVar, String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("(");
        sb.append(str2);
        sb.append(");");
        zzaiaVar.zzcy(sb.toString());
    }

    public static void zza(zzaia zzaiaVar, String str, Map map) {
        try {
            zzaiaVar.zzb(str, zzq.zzkq().zzi(map));
        } catch (JSONException e) {
            zzavs.zzez("Could not convert parameters to JSON.");
        }
    }

    public static void zza(zzaia zzaiaVar, String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        zzaiaVar.zzj(str, jSONObject2.toString());
    }

    public static void zzb(zzaia zzaiaVar, String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        String jSONObject3 = jSONObject2.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("'");
        sb.append(",");
        sb.append(jSONObject3);
        sb.append(");");
        String valueOf = String.valueOf(sb.toString());
        zzavs.zzea(valueOf.length() != 0 ? "Dispatching AFMA event: ".concat(valueOf) : new String("Dispatching AFMA event: "));
        zzaiaVar.zzcy(sb.toString());
    }
}
