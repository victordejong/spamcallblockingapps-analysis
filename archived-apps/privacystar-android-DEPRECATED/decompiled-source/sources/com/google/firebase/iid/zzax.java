package com.google.firebase.iid;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzax.class */
final class zzax {
    private static final long zzdf = TimeUnit.DAYS.toMillis(7);
    private final long timestamp;
    final String zzbq;
    private final String zzdg;

    private zzax(String str, String str2, long j) {
        this.zzbq = str;
        this.zzdg = str2;
        this.timestamp = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zza(@Nullable zzax zzaxVar) {
        if (zzaxVar == null) {
            return null;
        }
        return zzaxVar.zzbq;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zza(String str, String str2, long j) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("token", str);
            jSONObject.put("appVersion", str2);
            jSONObject.put(AppMeasurement.Param.TIMESTAMP, j);
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
    public static zzax zzi(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!str.startsWith("{")) {
            return new zzax(str, null, 0L);
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new zzax(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong(AppMeasurement.Param.TIMESTAMP));
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
    public final boolean zzj(String str) {
        return System.currentTimeMillis() > this.timestamp + zzdf || !str.equals(this.zzdg);
    }
}
