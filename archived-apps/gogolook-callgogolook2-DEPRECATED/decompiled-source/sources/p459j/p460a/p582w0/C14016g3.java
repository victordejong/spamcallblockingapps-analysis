package p459j.p460a.p582w0;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.appsflyer.internal.referrer.Payload;
import gogolook.callgogolook2.main.MainActivity;
import p626l.p631e0.C14966w;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.g3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/g3.class */
public final class C14016g3 {
    static {
        new C14016g3();
        C14016g3.class.getSimpleName();
    }

    /* renamed from: a */
    public static final void m2837a() {
        C13915b3.m3061a("install_referrer_deep_link", "install_referrer_goto", "install_referrer_action");
    }

    /* renamed from: a */
    public static final void m2836a(Context context, String str) {
        C15149k.m377b(context, "context");
        C15149k.m377b(str, Payload.REFERRER);
        C13915b3.m3044e("install_referrer", str);
        Uri parse = Uri.parse(str);
        if (parse != null) {
            String uri = parse.toString();
            C15149k.m383a((Object) uri, "referrerUri.toString()");
            if (C14966w.m712c(uri, "whoscall://referrer", false, 2, null)) {
                boolean booleanQueryParameter = parse.getBooleanQueryParameter("auto_launch", false);
                String queryParameter = parse.getQueryParameter("deep_link");
                String queryParameter2 = parse.getQueryParameter("goto");
                String queryParameter3 = parse.getQueryParameter("action");
                if (!TextUtils.isEmpty(queryParameter)) {
                    C13915b3.m3044e("install_referrer_deep_link", queryParameter);
                } else if (!TextUtils.isEmpty(queryParameter2)) {
                    C13915b3.m3044e("install_referrer_goto", queryParameter2);
                } else if (!TextUtils.isEmpty(queryParameter3)) {
                    C13915b3.m3044e("install_referrer_action", queryParameter3);
                }
                if (booleanQueryParameter) {
                    context.startActivity(new Intent(context, MainActivity.class));
                }
            }
        }
    }
}
