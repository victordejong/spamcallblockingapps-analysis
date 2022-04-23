package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/asm.class */
public final class asm extends zzzc<String> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public asm(String str, String str2) {
        super(1, str, str2, (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    /* renamed from: a */
    public final /* synthetic */ String mo2957a(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(getKey(), zzqf());
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    /* renamed from: a */
    public final /* synthetic */ String mo2956a(JSONObject jSONObject) {
        return jSONObject.optString(getKey(), zzqf());
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final /* synthetic */ String zza(Bundle bundle) {
        String valueOf = String.valueOf(getKey());
        if (!bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            return zzqf();
        }
        String valueOf2 = String.valueOf(getKey());
        return bundle.getString(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag."));
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final /* synthetic */ void zza(SharedPreferences.Editor editor, String str) {
        editor.putString(getKey(), str);
    }
}
