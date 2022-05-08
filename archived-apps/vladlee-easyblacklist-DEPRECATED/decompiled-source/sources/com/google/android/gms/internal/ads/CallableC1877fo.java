package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.google.android.gms.common.util.SharedPreferencesUtils;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.internal.ads.fo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fo.class */
final class CallableC1877fo implements Callable<String> {

    /* renamed from: a */
    private final /* synthetic */ Context f8473a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallableC1877fo(Context context) {
        this.f8473a = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() {
        SharedPreferences sharedPreferences = this.f8473a.getSharedPreferences("admob_user_agent", 0);
        String string = sharedPreferences.getString("user_agent", "");
        if (TextUtils.isEmpty(string)) {
            zzavs.zzed("User agent is not initialized on Google Play Services. Initializing.");
            string = WebSettings.getDefaultUserAgent(this.f8473a);
            SharedPreferencesUtils.publishWorldReadableSharedPreferences(this.f8473a, sharedPreferences.edit().putString("user_agent", string), "admob_user_agent");
        } else {
            zzavs.zzed("User agent is already initialized on Google Play Services.");
        }
        return string;
    }
}
