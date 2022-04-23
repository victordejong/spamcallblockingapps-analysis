package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.Nullable;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/Storage.class */
public class Storage {

    /* renamed from: a */
    private static final Lock f6135a = new ReentrantLock();

    /* renamed from: b */
    private static Storage f6136b;

    /* renamed from: c */
    private final Lock f6137c = new ReentrantLock();

    /* renamed from: d */
    private final SharedPreferences f6138d;

    private Storage(Context context) {
        this.f6138d = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    @Nullable
    /* renamed from: a */
    private final GoogleSignInAccount m6004a(String str) {
        String c;
        if (TextUtils.isEmpty(str) || (c = m6000c(m6001b("googleSignInAccount", str))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.zaa(c);
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    private final void m6003a(String str, String str2) {
        this.f6137c.lock();
        try {
            this.f6138d.edit().putString(str, str2).apply();
        } finally {
            this.f6137c.unlock();
        }
    }

    @Nullable
    /* renamed from: b */
    private final GoogleSignInOptions m6002b(String str) {
        String c;
        if (TextUtils.isEmpty(str) || (c = m6000c(m6001b("googleSignInOptions", str))) == null) {
            return null;
        }
        try {
            return GoogleSignInOptions.zab(c);
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: b */
    private static String m6001b(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }

    @Nullable
    /* renamed from: c */
    private final String m6000c(String str) {
        this.f6137c.lock();
        try {
            return this.f6138d.getString(str, null);
        } finally {
            this.f6137c.unlock();
        }
    }

    /* renamed from: d */
    private final void m5999d(String str) {
        this.f6137c.lock();
        try {
            this.f6138d.edit().remove(str).apply();
        } finally {
            this.f6137c.unlock();
        }
    }

    public static Storage getInstance(Context context) {
        Preconditions.checkNotNull(context);
        f6135a.lock();
        try {
            if (f6136b == null) {
                f6136b = new Storage(context.getApplicationContext());
            }
            Storage storage = f6136b;
            f6135a.unlock();
            return storage;
        } catch (Throwable th) {
            f6135a.unlock();
            throw th;
        }
    }

    public void clear() {
        this.f6137c.lock();
        try {
            this.f6138d.edit().clear().apply();
        } finally {
            this.f6137c.unlock();
        }
    }

    @Nullable
    public GoogleSignInAccount getSavedDefaultGoogleSignInAccount() {
        return m6004a(m6000c("defaultGoogleSignInAccount"));
    }

    @Nullable
    public GoogleSignInOptions getSavedDefaultGoogleSignInOptions() {
        return m6002b(m6000c("defaultGoogleSignInAccount"));
    }

    @Nullable
    public String getSavedRefreshToken() {
        return m6000c("refreshToken");
    }

    public void saveDefaultGoogleSignInAccount(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        Preconditions.checkNotNull(googleSignInAccount);
        Preconditions.checkNotNull(googleSignInOptions);
        m6003a("defaultGoogleSignInAccount", googleSignInAccount.zab());
        Preconditions.checkNotNull(googleSignInAccount);
        Preconditions.checkNotNull(googleSignInOptions);
        String zab = googleSignInAccount.zab();
        m6003a(m6001b("googleSignInAccount", zab), googleSignInAccount.zac());
        m6003a(m6001b("googleSignInOptions", zab), googleSignInOptions.zae());
    }

    public final void zaf() {
        String c = m6000c("defaultGoogleSignInAccount");
        m5999d("defaultGoogleSignInAccount");
        if (!TextUtils.isEmpty(c)) {
            m5999d(m6001b("googleSignInAccount", c));
            m5999d(m6001b("googleSignInOptions", c));
        }
    }
}
