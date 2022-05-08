package com.tmobile.tmoid.helperlib;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Binder;
import android.util.Base64;
import android.webkit.CookieManager;
import com.facebook.stetho.common.Utf8Charset;
import com.google.firebase.messaging.Constants;
import com.tmobile.tmoid.agent.Configuration;
import com.tmobile.tmoid.agent.ConfigurationProvider;
import com.tmobile.tmoid.agent.IAMAgentCallManager;
import com.tmobile.tmoid.agent.IAMAgentStateHolder;
import com.tmobile.tmoid.agent.IAMHttpUtils;
import com.tmobile.tmoid.agent.IAMMainActivity;
import com.tmobile.tmoid.agent.IAMWebViewClient;
import com.tmobile.tmoid.agent.LoginState;
import com.tmobile.tmoid.helperlib.impl.APIRequestForAccessToken;
import com.tmobile.tmoid.helperlib.impl.APIRequestForAuthorizationCode;
import com.tmobile.tmoid.helperlib.impl.APIResponse;
import com.tmobile.tmoid.helperlib.impl.IHelperLibrary;
import com.tmobile.tmoid.helperlib.util.Log;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import java.util.UUID;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/HelperLibraryImpl.class */
public class HelperLibraryImpl extends IHelperLibrary.Stub {

    /* renamed from: a */
    private HelperLibraryService f14729a;

    /* renamed from: b */
    private Configuration f14730b;

    /* renamed from: c */
    private IAMAgentCallManager f14731c;

    public HelperLibraryImpl(HelperLibraryService helperLibraryService) {
        this.f14729a = helperLibraryService;
        this.f14731c = IAMAgentStateHolder.m5162c(helperLibraryService).m5164a();
        ConfigurationProvider.m5172b(helperLibraryService, new ConfigurationProvider.Listener() { // from class: com.tmobile.tmoid.helperlib.a
            @Override // com.tmobile.tmoid.agent.ConfigurationProvider.Listener
            /* renamed from: a */
            public final void mo4702a(Configuration configuration) {
                HelperLibraryImpl.this.m5055U0(configuration);
            }
        });
    }

    /* renamed from: Q0 */
    private APIResponse m5059Q0(APIRequestForAuthorizationCode aPIRequestForAuthorizationCode) {
        Header[] headers;
        DefaultHttpClient b = IAMWebViewClient.m5130b(this.f14729a);
        final String[] strArr = {null};
        final ServerErrorException[] serverErrorExceptionArr = {null};
        b.setRedirectHandler(new RedirectHandler(this) { // from class: com.tmobile.tmoid.helperlib.HelperLibraryImpl.1
            public URI getLocationURI(HttpResponse httpResponse, HttpContext httpContext) {
                return null;
            }

            public boolean isRedirectRequested(HttpResponse httpResponse, HttpContext httpContext) {
                Header[] headers2;
                for (Header header : httpResponse.getHeaders("Location")) {
                    strArr[0] = IAMWebViewClient.m5129c(header.getValue());
                    serverErrorExceptionArr[0] = IAMWebViewClient.m5128d(header.getValue());
                    if (!(strArr[0] == null && serverErrorExceptionArr[0] == null)) {
                        return false;
                    }
                }
                return false;
            }
        });
        String b2 = m5052b(aPIRequestForAuthorizationCode);
        HttpGet httpGet = new HttpGet(b2);
        IAMHttpUtils.m5157c(this.f14729a, httpGet);
        IAMHttpUtils.m5158b(httpGet, m5058R0().m5116c());
        APIResponse aPIResponse = new APIResponse();
        try {
            m5054V0(httpGet);
            HttpResponse execute = b.execute(httpGet);
            m5053W0(execute);
            CookieManager instance = CookieManager.getInstance();
            Map<String, String> c = m5058R0().m5116c();
            for (Header header : execute.getHeaders("Set-Cookie")) {
                String[] split = header.getValue().split(";")[0].split("=");
                String str = split[0];
                String str2 = "";
                if (split.length > 1) {
                    str2 = split[1];
                }
                c.put(str, str2);
                instance.setCookie(b2, header.getValue());
            }
            if (strArr[0] != null) {
                aPIResponse.m5021h(strArr[0]);
            } else if (serverErrorExceptionArr[0] != null) {
                serverErrorExceptionArr[0].setFailURL(b2.split("\\?")[0]);
                aPIResponse.m5022g(serverErrorExceptionArr[0]);
            }
        } catch (IOException e) {
            Log.m4651e("TMO-Agent.Helperlib", "while httpclient.execute():", e);
            aPIResponse.m5022g(new ServerErrorException(-7, e));
        }
        return aPIResponse;
    }

    /* renamed from: R0 */
    private LoginState m5058R0() {
        return IAMAgentStateHolder.m5162c(this.f14729a).m5161d();
    }

    /* renamed from: S0 */
    private String m5057S0(String str) throws PackageManager.NameNotFoundException {
        Signature[] signatureArr;
        for (Signature signature : this.f14729a.getPackageManager().getPackageInfo(str, 64).signatures) {
            try {
                MessageDigest instance = MessageDigest.getInstance("SHA");
                instance.update(signature.toByteArray());
                return Base64.encodeToString(instance.digest(), 2);
            } catch (NoSuchAlgorithmException e) {
                Log.m4651e("TMO-Agent.Helperlib", "While trying to encode app signature", e);
            }
        }
        return null;
    }

    /* renamed from: V0 */
    private void m5054V0(HttpRequestBase httpRequestBase) {
        Header[] allHeaders;
        Log.m4648v("TMO-Agent.Helperlib", "HttpRequest {");
        Log.m4648v("TMO-Agent.Helperlib", "\t" + httpRequestBase.getRequestLine());
        for (Header header : httpRequestBase.getAllHeaders()) {
            Log.m4648v("TMO-Agent.Helperlib", "\t" + header.getName() + ":" + header.getValue());
        }
        Log.m4648v("TMO-Agent.Helperlib", "} HttpRequest");
    }

    /* renamed from: W0 */
    private void m5053W0(HttpResponse httpResponse) throws IOException {
        Header[] allHeaders;
        Log.m4648v("TMO-Agent.Helperlib", "HttpResponse {");
        Log.m4648v("TMO-Agent.Helperlib", "Headers {");
        for (Header header : httpResponse.getAllHeaders()) {
            Log.m4648v("TMO-Agent.Helperlib", "\t" + header.getName() + ":" + header.getValue());
        }
        Log.m4648v("TMO-Agent.Helperlib", "} Headers");
        Log.m4648v("TMO-Agent.Helperlib", EntityUtils.toString(httpResponse.getEntity()));
        Log.m4648v("TMO-Agent.Helperlib", "} HttpResponse");
    }

    /* renamed from: b */
    private String m5052b(APIRequestForAuthorizationCode aPIRequestForAuthorizationCode) {
        String str;
        String uuid = UUID.randomUUID().toString();
        try {
            str = URLEncoder.encode(aPIRequestForAuthorizationCode.m5033i(), Utf8Charset.NAME);
        } catch (UnsupportedEncodingException e) {
            Log.m4651e("TMO-Agent.Helperlib", "while encoding", e);
            str = "";
        }
        return this.f14730b.getAUTHORIZE_URL() + "?client_id=" + aPIRequestForAuthorizationCode.m5047c() + "&scope=" + str + "&redirect_uri=" + this.f14730b.getREDIRECT_URI_ENCODED() + "&access_type=" + aPIRequestForAuthorizationCode.m5037e() + "&display=" + aPIRequestForAuthorizationCode.m5035g() + "&re_auth=" + aPIRequestForAuthorizationCode.m5034h() + "&approval_prompt=" + aPIRequestForAuthorizationCode.m5036f() + "&response_type=code&state=" + uuid;
    }

    /* renamed from: c */
    private void m5051c(APIRequestForAccessToken aPIRequestForAccessToken) {
        if (this.f14730b.isENFORCE_COMPUTED_CLIENT_SECRET()) {
            Log.m4648v("TMO-Agent.Helperlib", "checkEnforceComputedClientSecret: enforced");
            try {
                String nameForUid = this.f14729a.getPackageManager().getNameForUid(Binder.getCallingUid());
                String S0 = m5057S0(nameForUid);
                Log.m4648v("TMO-Agent.Helperlib", "overwrite client secret for caller:" + nameForUid + " to: \"" + S0 + "\"");
                aPIRequestForAccessToken.m5040j(nameForUid);
                aPIRequestForAccessToken.m5041i(S0);
            } catch (PackageManager.NameNotFoundException e) {
                Log.m4651e("TMO-Agent.Helperlib", "while getSignatureForPackageName", e);
            }
        } else {
            Log.m4648v("TMO-Agent.Helperlib", "checkEnforceComputedClientSecret: not enforced, using secret passed through API call: " + aPIRequestForAccessToken.m5044f());
        }
    }

    /* renamed from: f */
    private APIResponse m5050f(APIRequestForAccessToken aPIRequestForAccessToken) {
        m5051c(aPIRequestForAccessToken);
        APIResponse e = IAMWebViewClient.m5127e(this.f14729a, IAMWebViewClient.m5130b(this.f14729a), aPIRequestForAccessToken);
        StringBuilder sb = new StringBuilder();
        sb.append("got access token: ");
        sb.append(e != null ? "SUCCESS" : "FAILURE");
        Log.m4654d("TMO-Agent.Helperlib", sb.toString());
        Log.m4648v("TMO-Agent.Helperlib", e != null ? e.toString() : "N/A");
        return e;
    }

    @Override // com.tmobile.tmoid.helperlib.impl.IHelperLibrary
    /* renamed from: A0 */
    public String mo5004A0() {
        Log.m4654d("TMO-Agent.Helperlib", "received call for requestUserIdentifier");
        return m5058R0().m5114e();
    }

    @Override // com.tmobile.tmoid.helperlib.impl.IHelperLibrary
    /* renamed from: L */
    public boolean mo5003L() {
        Log.m4654d("TMO-Agent.Helperlib", "received call for requestAuthenticationStatus");
        return m5058R0().m5115d().equals(LoginState.State.LOGGED_IN);
    }

    @Override // com.tmobile.tmoid.helperlib.impl.IHelperLibrary
    /* renamed from: M0 */
    public APIResponse mo5002M0(APIRequestForAccessToken aPIRequestForAccessToken) {
        Log.m4654d("TMO-Agent.Helperlib", "received call for getAccessToken");
        Log.m4648v("TMO-Agent.Helperlib", "(client_id=" + aPIRequestForAccessToken.m5047c() + ") with request: " + aPIRequestForAccessToken.toString());
        m5051c(aPIRequestForAccessToken);
        APIResponse f = m5050f(aPIRequestForAccessToken);
        if (f != null) {
            Log.m4654d("TMO-Agent.Helperlib", "returning response to 3rd party application");
            Log.m4648v("TMO-Agent.Helperlib", f.toString());
        }
        return f;
    }

    /* renamed from: T0 */
    public /* synthetic */ void m5056T0(Intent intent) {
        this.f14729a.startActivity(intent);
        Log.m4650i("TMO-Agent.Helperlib", "intent was sent to start Agent activity");
    }

    /* renamed from: U0 */
    public /* synthetic */ void m5055U0(Configuration configuration) {
        this.f14730b = configuration;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0169  */
    @Override // com.tmobile.tmoid.helperlib.impl.IHelperLibrary
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.tmobile.tmoid.helperlib.impl.ConsumerProfileIPC mo5001g(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.tmoid.helperlib.HelperLibraryImpl.mo5001g(java.lang.String):com.tmobile.tmoid.helperlib.impl.ConsumerProfileIPC");
    }

    @Override // com.tmobile.tmoid.helperlib.impl.IHelperLibrary
    /* renamed from: x */
    public APIResponse mo5000x(APIRequestForAuthorizationCode aPIRequestForAuthorizationCode) {
        Log.m4654d("TMO-Agent.Helperlib", "received call for getAuthorizationCode");
        Log.m4648v("TMO-Agent.Helperlib", "(client_id=" + aPIRequestForAuthorizationCode.m5047c() + ") with request: " + aPIRequestForAuthorizationCode.toString());
        boolean z = m5058R0().m5115d() == LoginState.State.LOGGED_IN;
        boolean equals = aPIRequestForAuthorizationCode.m5035g().equals("NONE|PAGE");
        boolean equals2 = aPIRequestForAuthorizationCode.m5035g().equals("NONE");
        if (z || !equals2) {
            if ((z && equals2) || equals) {
                aPIRequestForAuthorizationCode.m5031k("NONE");
                APIResponse Q0 = m5059Q0(aPIRequestForAuthorizationCode);
                if (equals && Q0.m5026c()) {
                    aPIRequestForAuthorizationCode.m5031k("PAGE");
                } else if (Q0 != null && !Q0.m5025d()) {
                    return Q0;
                }
            }
            final Intent intent = new Intent(this.f14729a, IAMMainActivity.class);
            intent.putExtra("request_id", aPIRequestForAuthorizationCode.m5046d());
            intent.putExtra("scope", aPIRequestForAuthorizationCode.m5033i());
            intent.putExtra("client_id", aPIRequestForAuthorizationCode.m5047c());
            intent.putExtra("access_type", aPIRequestForAuthorizationCode.m5037e());
            intent.putExtra(Constants.ScionAnalytics.MessageType.DISPLAY_NOTIFICATION, aPIRequestForAuthorizationCode.m5035g());
            intent.putExtra("reauth", aPIRequestForAuthorizationCode.m5034h());
            intent.putExtra("approval_prompt", aPIRequestForAuthorizationCode.m5036f());
            intent.putExtra("action", "getAuthorizationCode");
            intent.setFlags(intent.getFlags() | 268435456 | 32768);
            new Thread(new Runnable() { // from class: com.tmobile.tmoid.helperlib.b
                @Override // java.lang.Runnable
                public final void run() {
                    HelperLibraryImpl.this.m5056T0(intent);
                }
            }).start();
            Log.m4648v("TMO-Agent.Helperlib", "calling getResponseBlocking for request_id: " + aPIRequestForAuthorizationCode.m5046d());
            APIResponse c = this.f14731c.m5167c(aPIRequestForAuthorizationCode);
            if (c != null) {
                Log.m4650i("TMO-Agent.Helperlib", "returning response to 3rd party application");
                Log.m4648v("TMO-Agent.Helperlib", c.toString());
            }
            return c;
        }
        APIResponse aPIResponse = new APIResponse();
        aPIResponse.m5022g(new InvalidStateException("User is not logged in"));
        return aPIResponse;
    }
}
