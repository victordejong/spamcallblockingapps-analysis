package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/asl.class */
public final class asl extends zzzc<Integer> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public asl(String str, Integer num) {
        super(1, str, num, (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    /* renamed from: a */
    public final /* synthetic */ Integer mo2957a(SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(getKey(), zzqf().intValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    /* renamed from: a */
    public final /* synthetic */ Integer mo2956a(JSONObject jSONObject) {
        return Integer.valueOf(jSONObject.optInt(getKey(), zzqf().intValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final /* synthetic */ Integer zza(Bundle bundle) {
        String valueOf = String.valueOf(getKey());
        if (!bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            return zzqf();
        }
        String valueOf2 = String.valueOf(getKey());
        return Integer.valueOf(bundle.getInt(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final /* synthetic */ void zza(SharedPreferences.Editor editor, Integer num) {
        editor.putInt(getKey(), num.intValue());
    }
}
