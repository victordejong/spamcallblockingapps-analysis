package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/asj.class */
public final class asj extends zzzc<Boolean> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public asj(int i, String str, Boolean bool) {
        super(i, str, bool, (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    /* renamed from: a */
    public final /* synthetic */ Boolean mo2957a(SharedPreferences sharedPreferences) {
        return Boolean.valueOf(sharedPreferences.getBoolean(getKey(), zzqf().booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    /* renamed from: a */
    public final /* synthetic */ Boolean mo2956a(JSONObject jSONObject) {
        return Boolean.valueOf(jSONObject.optBoolean(getKey(), zzqf().booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final /* synthetic */ Boolean zza(Bundle bundle) {
        String valueOf = String.valueOf(getKey());
        if (!bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            return zzqf();
        }
        String valueOf2 = String.valueOf(getKey());
        return Boolean.valueOf(bundle.getBoolean(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final /* synthetic */ void zza(SharedPreferences.Editor editor, Boolean bool) {
        editor.putBoolean(getKey(), bool.booleanValue());
    }
}
