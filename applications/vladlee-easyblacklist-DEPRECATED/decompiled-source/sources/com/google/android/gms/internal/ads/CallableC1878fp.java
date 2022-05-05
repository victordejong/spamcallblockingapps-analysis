package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.internal.ads.fp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fp.class */
final class CallableC1878fp implements Callable<String> {

    /* renamed from: a */
    private final /* synthetic */ Context f8474a;

    /* renamed from: b */
    private final /* synthetic */ Context f8475b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallableC1878fp(Context context, Context context2) {
        this.f8474a = context;
        this.f8475b = context2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() {
        SharedPreferences sharedPreferences;
        boolean z = false;
        if (this.f8474a != null) {
            zzavs.zzed("Attempting to read user agent from Google Play Services.");
            sharedPreferences = this.f8474a.getSharedPreferences("admob_user_agent", 0);
        } else {
            zzavs.zzed("Attempting to read user agent from local cache.");
            sharedPreferences = this.f8475b.getSharedPreferences("admob_user_agent", 0);
            z = true;
        }
        String string = sharedPreferences.getString("user_agent", "");
        String str = string;
        if (TextUtils.isEmpty(string)) {
            zzavs.zzed("Reading user agent from WebSettings");
            String defaultUserAgent = WebSettings.getDefaultUserAgent(this.f8475b);
            str = defaultUserAgent;
            if (z) {
                sharedPreferences.edit().putString("user_agent", defaultUserAgent).apply();
                zzavs.zzed("Persisting user agent.");
                str = defaultUserAgent;
            }
        }
        return str;
    }
}
