package com.tmobile.tmoid.agent;

import android.content.Context;
import android.content.SharedPreferences;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.tmobile.tmoid.helperlib.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/LoginState.class */
public class LoginState {

    /* renamed from: f */
    public static final String f14680f = LoginState.class.getSimpleName() + "_preferences";

    /* renamed from: g */
    private static Pattern f14681g = Pattern.compile(".*IAM_SESSION_ID.*");

    /* renamed from: a */
    private final Context f14682a;

    /* renamed from: b */
    private String f14683b;

    /* renamed from: d */
    private Map<String, String> f14685d = new HashMap();

    /* renamed from: e */
    private List<LoginStateListener> f14686e = new ArrayList();

    /* renamed from: c */
    private State f14684c = State.UNKNOWN;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tmobile.tmoid.agent.LoginState$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/LoginState$1.class */
    public static /* synthetic */ class C20161 {

        /* renamed from: a */
        static final /* synthetic */ int[] f14687a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[State.values().length];
            f14687a = iArr;
            try {
                iArr[State.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14687a[State.LOGGED_IN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14687a[State.LOGGED_OUT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/LoginState$State.class */
    public enum State {
        UNKNOWN,
        LOGGED_OUT,
        LOGGED_IN
    }

    public LoginState(Context context) {
        this.f14682a = context;
    }

    /* renamed from: g */
    private void m5112g() {
        Log.m4648v("TMO-Agent", "[LoginState cookie store] {\n");
        for (String str : this.f14685d.keySet()) {
            Log.m4648v("TMO-Agent", "\t" + str + "=" + this.f14685d.get(str));
        }
        Log.m4648v("TMO-Agent", "} [LoginState cookie store]");
    }

    /* renamed from: i */
    public static String m5110i(State state) {
        int i = C20161.f14687a[state.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? "N/A" : "LOGGED_OUT" : "LOGGED_IN" : "UNKNOWN";
    }

    /* renamed from: a */
    public void m5118a(Context context, State state) {
        Log.m4650i("TMO-Agent", "changing login state from " + m5110i(this.f14684c) + " to " + m5110i(state));
        State state2 = this.f14684c;
        State state3 = State.LOGGED_IN;
        boolean z = state2 != state3 && state == state3;
        State state4 = this.f14684c;
        State state5 = State.LOGGED_OUT;
        if (z) {
            String lastSubmittedUserIdentifier = ((IAMMainActivity) context).f14658n.getLastSubmittedUserIdentifier();
            this.f14683b = lastSubmittedUserIdentifier;
            if (lastSubmittedUserIdentifier == null) {
                CookieManager.getInstance().removeAllCookie();
                ((IAMMainActivity) IAMMainActivity.m5148d()).f14656l.m5081g();
            } else {
                SharedPreferences.Editor edit = this.f14682a.getSharedPreferences(f14680f, 0).edit();
                edit.putString("tmoid.username", this.f14683b);
                edit.commit();
            }
        }
        for (LoginStateListener loginStateListener : this.f14686e) {
            loginStateListener.m5109a(this.f14684c, state);
        }
        this.f14684c = state;
        Log.m4650i("TMO-Agent", "login state is now:" + m5110i(this.f14684c));
        m5112g();
    }

    /* renamed from: b */
    public void m5117b() {
        Log.m4654d("TMO-Agent", "LoginState: clearState");
        this.f14684c = State.LOGGED_OUT;
        this.f14683b = null;
        this.f14685d.clear();
        CookieManager.getInstance().removeAllCookie();
        CookieSyncManager.getInstance().sync();
        this.f14682a.getSharedPreferences(f14680f, 0).edit().remove("tmoid.username").commit();
        for (LoginStateListener loginStateListener : this.f14686e) {
            State state = this.f14684c;
            loginStateListener.m5109a(state, state);
        }
    }

    /* renamed from: c */
    public Map<String, String> m5116c() {
        return this.f14685d;
    }

    /* renamed from: d */
    public State m5115d() {
        return this.f14684c;
    }

    /* renamed from: e */
    public String m5114e() {
        return this.f14683b;
    }

    /* renamed from: f */
    public void m5113f(Configuration configuration) {
        Log.m4648v("TMO-Agent", "LoginState: initState");
        CookieManager instance = CookieManager.getInstance();
        instance.removeExpiredCookie();
        String cookie = instance.getCookie("https://" + configuration.getOAUTH_SERVER_HOST());
        StringBuilder sb = new StringBuilder();
        sb.append("cookie = ");
        sb.append(cookie == null ? "null" : cookie);
        Log.m4648v("TMO-Agent", sb.toString());
        if (cookie != null) {
            if (f14681g.matcher(cookie).matches()) {
                Log.m4654d("TMO-Agent", "Got AUTHENTICATION cookie, change to LOGGED_IN");
                this.f14684c = State.LOGGED_IN;
            }
            String[] split = cookie.split(";");
            int length = split.length;
            for (int i = 0; i < length; i++) {
                String str = split[i];
                while (str.startsWith(" ")) {
                    str = str.substring(1);
                }
                String[] split2 = str.split("=");
                this.f14685d.put(split2[0], split2.length > 1 ? split2[1] : "");
            }
            this.f14683b = this.f14682a.getSharedPreferences(f14680f, 0).getString("tmoid.username", null);
        }
    }

    /* renamed from: h */
    public void m5111h(Context context) {
        m5118a(context, State.LOGGED_OUT);
    }
}
