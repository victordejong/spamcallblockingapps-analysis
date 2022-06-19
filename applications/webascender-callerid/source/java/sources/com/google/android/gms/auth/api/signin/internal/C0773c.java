package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.C0931r;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
/* renamed from: com.google.android.gms.auth.api.signin.internal.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/c.class */
public class C0773c {

    /* renamed from: c */
    private static final Lock f3262c = new ReentrantLock();

    /* renamed from: d */
    private static C0773c f3263d;

    /* renamed from: a */
    private final Lock f3264a = new ReentrantLock();

    /* renamed from: b */
    private final SharedPreferences f3265b;

    private C0773c(Context context) {
        this.f3265b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    /* renamed from: b */
    public static C0773c m3770b(Context context) {
        C0931r.m3308k(context);
        Lock lock = f3262c;
        lock.lock();
        try {
            if (f3263d == null) {
                f3263d = new C0773c(context.getApplicationContext());
            }
            C0773c c0773c = f3263d;
            lock.unlock();
            return c0773c;
        } catch (Throwable th) {
            f3262c.unlock();
            throw th;
        }
    }

    /* renamed from: g */
    private final GoogleSignInAccount m3765g(String str) {
        String m3761k;
        if (!TextUtils.isEmpty(str) && (m3761k = m3761k(m3762j("googleSignInAccount", str))) != null) {
            try {
                return GoogleSignInAccount.I1(m3761k);
            } catch (JSONException e) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: h */
    private final void m3764h(String str, String str2) {
        this.f3264a.lock();
        try {
            this.f3265b.edit().putString(str, str2).apply();
        } finally {
            this.f3264a.unlock();
        }
    }

    /* renamed from: i */
    private final GoogleSignInOptions m3763i(String str) {
        String m3761k;
        if (!TextUtils.isEmpty(str) && (m3761k = m3761k(m3762j("googleSignInOptions", str))) != null) {
            try {
                return GoogleSignInOptions.F1(m3761k);
            } catch (JSONException e) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: j */
    private static String m3762j(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: k */
    private final String m3761k(String str) {
        this.f3264a.lock();
        try {
            return this.f3265b.getString(str, null);
        } finally {
            this.f3264a.unlock();
        }
    }

    /* renamed from: a */
    public void m3771a() {
        this.f3264a.lock();
        try {
            this.f3265b.edit().clear().apply();
        } finally {
            this.f3264a.unlock();
        }
    }

    /* renamed from: c */
    public GoogleSignInAccount m3769c() {
        return m3765g(m3761k("defaultGoogleSignInAccount"));
    }

    /* renamed from: d */
    public GoogleSignInOptions m3768d() {
        return m3763i(m3761k("defaultGoogleSignInAccount"));
    }

    /* renamed from: e */
    public String m3767e() {
        return m3761k("refreshToken");
    }

    /* renamed from: f */
    public void m3766f(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        C0931r.m3308k(googleSignInAccount);
        C0931r.m3308k(googleSignInOptions);
        m3764h("defaultGoogleSignInAccount", googleSignInAccount.K1());
        C0931r.m3308k(googleSignInAccount);
        C0931r.m3308k(googleSignInOptions);
        String K1 = googleSignInAccount.K1();
        m3764h(m3762j("googleSignInAccount", K1), googleSignInAccount.L1());
        m3764h(m3762j("googleSignInOptions", K1), googleSignInOptions.G1());
    }
}
