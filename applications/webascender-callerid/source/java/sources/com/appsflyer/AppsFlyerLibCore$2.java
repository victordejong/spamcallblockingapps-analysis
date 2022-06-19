package com.appsflyer;

import android.content.Context;
import android.content.SharedPreferences;
import com.appsflyer.internal.model.event.Attr;
import com.appsflyer.internal.referrer.GoogleReferrer;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$2.class */
final class AppsFlyerLibCore$2 implements Runnable {

    /* renamed from: ı */
    private /* synthetic */ Context f2903;

    /* renamed from: Ι */
    private /* synthetic */ AppsFlyerLibCore f2904;

    /* renamed from: ι */
    private /* synthetic */ SharedPreferences f2905;

    AppsFlyerLibCore$2(AppsFlyerLibCore appsFlyerLibCore, SharedPreferences sharedPreferences, Context context) {
        this.f2904 = appsFlyerLibCore;
        this.f2905 = sharedPreferences;
        this.f2903 = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f2904.getLaunchCounter(this.f2905, false) == 1) {
            if (GoogleReferrer.allow(this.f2904, this.f2903) && !this.f2905.getBoolean(AppsFlyerProperties.NEW_REFERRER_SENT, false)) {
                return;
            }
            AppsFlyerLibCore.ι(this.f2904, new Attr().context(this.f2903));
        }
    }
}
