package com.google.android.gms.internal.firebase_auth_api;

import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.common.p024l.C0945a;
import com.google.android.gms.internal.firebase-auth-api.dk;
import com.google.android.gms.internal.firebase-auth-api.gk;
import com.google.firebase.auth.internal.j;
import com.revenuecat.purchases.subscriberattributes.SubscriberAttributeKt;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.ek */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/ek.class */
public final class AsyncTaskC1047ek extends AsyncTask<Void, Void, C1037dk> {

    /* renamed from: f */
    private static final C0945a f3695f = new C0945a("FirebaseAuth", "GetAuthDomainTask");

    /* renamed from: a */
    private final String f3696a;

    /* renamed from: b */
    private final String f3697b;

    /* renamed from: c */
    private final WeakReference<AbstractC1077gk> f3698c;

    /* renamed from: d */
    private final Uri.Builder f3699d;

    /* renamed from: e */
    private final String f3700e;

    public AsyncTaskC1047ek(String str, String str2, Intent intent, gk gkVar) {
        C0931r.m3312g(str);
        this.f3696a = str;
        C0931r.m3312g(str2);
        C0931r.m3308k(intent);
        String stringExtra = intent.getStringExtra("com.google.firebase.auth.KEY_API_KEY");
        C0931r.m3312g(stringExtra);
        Uri.Builder buildUpon = Uri.parse(gkVar.m2848b(stringExtra)).buildUpon();
        Uri.Builder appendQueryParameter = buildUpon.appendPath("getProjectConfig").appendQueryParameter(SubscriberAttributeKt.JSON_NAME_KEY, stringExtra).appendQueryParameter("androidPackageName", str);
        C0931r.m3308k(str2);
        appendQueryParameter.appendQueryParameter("sha1Cert", str2);
        this.f3697b = buildUpon.build().toString();
        this.f3698c = new WeakReference<>(gkVar);
        this.f3699d = gkVar.m2844r(intent, str, str2);
        this.f3700e = intent.getStringExtra("com.google.firebase.auth.KEY_CUSTOM_AUTH_DOMAIN");
    }

    /* renamed from: a */
    private static byte[] m2941a(InputStream inputStream, int i) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[128];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } finally {
            byteArrayOutputStream.close();
        }
    }

    /* renamed from: b */
    public final void onPostExecute(dk dkVar) {
        String str;
        String str2;
        Uri.Builder builder;
        AbstractC1077gk abstractC1077gk = this.f3698c.get();
        if (dkVar != null) {
            String m2956a = dkVar.m2956a();
            str = dkVar.m2955b();
            str2 = m2956a;
        } else {
            str = null;
            str2 = null;
        }
        if (abstractC1077gk == null) {
            f3695f.m3220c("An error has occurred: the handler reference has returned null.", new Object[0]);
        } else if (TextUtils.isEmpty(str2) || (builder = this.f3699d) == null) {
            abstractC1077gk.m2843v(this.f3696a, j.a(str));
        } else {
            builder.authority(str2);
            abstractC1077gk.m2847c(this.f3699d.build(), this.f3696a);
        }
    }

    @Override // android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ C1037dk doInBackground(Void[] voidArr) {
        dk dkVar;
        String str;
        String str2;
        if (!TextUtils.isEmpty(this.f3700e)) {
            dkVar = C1037dk.m2954c(this.f3700e);
        } else {
            try {
                try {
                    URL url = new URL(this.f3697b);
                    AbstractC1077gk abstractC1077gk = this.f3698c.get();
                    HttpURLConnection m2845m = abstractC1077gk.m2845m(url);
                    m2845m.addRequestProperty("Content-Type", "application/json; charset=UTF-8");
                    m2845m.setConnectTimeout(60000);
                    new C1007al(abstractC1077gk.m2846k(), C1268yk.m2300b().m2301a()).m3028a(m2845m);
                    int responseCode = m2845m.getResponseCode();
                    if (responseCode != 200) {
                        try {
                        } catch (IOException e) {
                            C0945a c0945a = f3695f;
                            String valueOf = String.valueOf(e);
                            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 75);
                            sb.append("Error parsing error message from response body in getErrorMessageFromBody. ");
                            sb.append(valueOf);
                            c0945a.m3215h(sb.toString(), new Object[0]);
                        }
                        if (m2845m.getResponseCode() >= 400) {
                            InputStream errorStream = m2845m.getErrorStream();
                            str = errorStream == null ? "WEB_INTERNAL_ERROR:Could not retrieve the authDomain for this project but did not receive an error response from the network request. Please try again." : (String) C1233vk.m2390a(new String(m2941a(errorStream, 128)), String.class);
                            f3695f.m3220c(String.format("Error getting project config. Failed with %s %s", str, Integer.valueOf(responseCode)), new Object[0]);
                            dkVar = C1037dk.m2953d(str);
                        }
                        str = null;
                        f3695f.m3220c(String.format("Error getting project config. Failed with %s %s", str, Integer.valueOf(responseCode)), new Object[0]);
                        dkVar = C1037dk.m2953d(str);
                    } else {
                        dn dnVar = new dn();
                        dnVar.b(new String(m2941a(m2845m.getInputStream(), 128)));
                        Iterator it = dnVar.a().iterator();
                        do {
                            dkVar = null;
                            if (!it.hasNext()) {
                                break;
                            }
                            str2 = (String) it.next();
                            if (str2.endsWith("firebaseapp.com")) {
                                break;
                            }
                        } while (!str2.endsWith("web.app"));
                        dkVar = C1037dk.m2954c(str2);
                    }
                } catch (IOException e2) {
                    C0945a c0945a2 = f3695f;
                    String valueOf2 = String.valueOf(e2);
                    StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 22);
                    sb2.append("IOException occurred: ");
                    sb2.append(valueOf2);
                    c0945a2.m3220c(sb2.toString(), new Object[0]);
                    dkVar = null;
                }
            } catch (zzqe e3) {
                C0945a c0945a3 = f3695f;
                String valueOf3 = String.valueOf(e3);
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf3).length() + 33);
                sb3.append("ConversionException encountered: ");
                sb3.append(valueOf3);
                c0945a3.m3220c(sb3.toString(), new Object[0]);
                dkVar = null;
            } catch (NullPointerException e4) {
                C0945a c0945a4 = f3695f;
                String valueOf4 = String.valueOf(e4);
                StringBuilder sb4 = new StringBuilder(String.valueOf(valueOf4).length() + 26);
                sb4.append("Null pointer encountered: ");
                sb4.append(valueOf4);
                c0945a4.m3220c(sb4.toString(), new Object[0]);
                dkVar = null;
            }
        }
        return dkVar;
    }

    @Override // android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ void onCancelled(C1037dk c1037dk) {
        onPostExecute(null);
    }
}
