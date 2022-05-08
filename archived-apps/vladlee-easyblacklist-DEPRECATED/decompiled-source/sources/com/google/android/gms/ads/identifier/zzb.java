package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/identifier/zzb.class */
public final class zzb {

    /* renamed from: a */
    private SharedPreferences f5892a;

    public zzb(Context context) {
        try {
            Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            this.f5892a = remoteContext == null ? null : remoteContext.getSharedPreferences("google_ads_flags", 0);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while getting SharedPreferences ", th);
            this.f5892a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final float m6065a(String str) {
        try {
            if (this.f5892a == null) {
                return 0.0f;
            }
            return this.f5892a.getFloat(str, 0.0f);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return 0.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final String m6064a(String str, String str2) {
        try {
            return this.f5892a == null ? str2 : this.f5892a.getString(str, str2);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return str2;
        }
    }

    public final boolean getBoolean(String str, boolean z) {
        try {
            if (this.f5892a == null) {
                return false;
            }
            return this.f5892a.getBoolean(str, false);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return false;
        }
    }
}
