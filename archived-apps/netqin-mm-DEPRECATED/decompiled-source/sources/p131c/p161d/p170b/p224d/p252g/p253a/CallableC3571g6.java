package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.google.android.gms.internal.ads.zzayp;
import com.google.android.gms.internal.ads.zzbbb;
import java.util.concurrent.Callable;
/* renamed from: c.d.b.d.g.a.g6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/g6.class */
public final class CallableC3571g6 implements Callable<String> {

    /* renamed from: a */
    public final /* synthetic */ Context f13018a;

    /* renamed from: b */
    public final /* synthetic */ Context f13019b;

    public CallableC3571g6(zzbbb zzbbbVar, Context context, Context context2) {
        this.f13018a = context;
        this.f13019b = context2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        SharedPreferences sharedPreferences;
        boolean z = false;
        if (this.f13018a != null) {
            zzayp.m16153g("Attempting to read user agent from Google Play Services.");
            sharedPreferences = this.f13018a.getSharedPreferences("admob_user_agent", 0);
        } else {
            zzayp.m16153g("Attempting to read user agent from local cache.");
            sharedPreferences = this.f13019b.getSharedPreferences("admob_user_agent", 0);
            z = true;
        }
        String string = sharedPreferences.getString("user_agent", "");
        String str = string;
        if (TextUtils.isEmpty(string)) {
            zzayp.m16153g("Reading user agent from WebSettings");
            String defaultUserAgent = WebSettings.getDefaultUserAgent(this.f13019b);
            str = defaultUserAgent;
            if (z) {
                sharedPreferences.edit().putString("user_agent", defaultUserAgent).apply();
                zzayp.m16153g("Persisting user agent.");
                str = defaultUserAgent;
            }
        }
        return str;
    }
}
