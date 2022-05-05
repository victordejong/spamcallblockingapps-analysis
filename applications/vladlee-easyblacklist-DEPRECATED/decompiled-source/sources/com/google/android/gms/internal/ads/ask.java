package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ask.class */
public final class ask extends zzzc<Long> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ask(String str, Long l) {
        super(1, str, l, (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    /* renamed from: a */
    public final /* synthetic */ Long mo2957a(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(getKey(), zzqf().longValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    /* renamed from: a */
    public final /* synthetic */ Long mo2956a(JSONObject jSONObject) {
        return Long.valueOf(jSONObject.optLong(getKey(), zzqf().longValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final /* synthetic */ Long zza(Bundle bundle) {
        String valueOf = String.valueOf(getKey());
        if (!bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            return zzqf();
        }
        String valueOf2 = String.valueOf(getKey());
        return Long.valueOf(bundle.getLong(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final /* synthetic */ void zza(SharedPreferences.Editor editor, Long l) {
        editor.putLong(getKey(), l.longValue());
    }
}
