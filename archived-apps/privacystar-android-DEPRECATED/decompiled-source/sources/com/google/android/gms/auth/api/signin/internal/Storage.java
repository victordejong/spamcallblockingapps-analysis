package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/Storage.class */
public class Storage {
    private static final Lock zaaj = new ReentrantLock();
    @GuardedBy("sLk")
    private static Storage zaak;
    private final Lock zaal = new ReentrantLock();
    @GuardedBy("mLk")
    private final SharedPreferences zaam;

    @VisibleForTesting
    private Storage(Context context) {
        this.zaam = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    @KeepForSdk
    public static Storage getInstance(Context context) {
        Preconditions.checkNotNull(context);
        zaaj.lock();
        try {
            if (zaak == null) {
                zaak = new Storage(context.getApplicationContext());
            }
            Storage storage = zaak;
            zaaj.unlock();
            return storage;
        } catch (Throwable th) {
            zaaj.unlock();
            throw th;
        }
    }

    private final void zaa(String str, String str2) {
        this.zaal.lock();
        try {
            this.zaam.edit().putString(str, str2).apply();
        } finally {
            this.zaal.unlock();
        }
    }

    private static String zab(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }

    @VisibleForTesting
    @Nullable
    private final GoogleSignInAccount zad(String str) {
        String zaf;
        if (TextUtils.isEmpty(str) || (zaf = zaf(zab("googleSignInAccount", str))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.zaa(zaf);
        } catch (JSONException e) {
            return null;
        }
    }

    @VisibleForTesting
    @Nullable
    private final GoogleSignInOptions zae(String str) {
        String zaf;
        if (TextUtils.isEmpty(str) || (zaf = zaf(zab("googleSignInOptions", str))) == null) {
            return null;
        }
        try {
            return GoogleSignInOptions.zab(zaf);
        } catch (JSONException e) {
            return null;
        }
    }

    @Nullable
    private final String zaf(String str) {
        this.zaal.lock();
        try {
            return this.zaam.getString(str, null);
        } finally {
            this.zaal.unlock();
        }
    }

    private final void zag(String str) {
        this.zaal.lock();
        try {
            this.zaam.edit().remove(str).apply();
        } finally {
            this.zaal.unlock();
        }
    }

    @KeepForSdk
    public void clear() {
        this.zaal.lock();
        try {
            this.zaam.edit().clear().apply();
        } finally {
            this.zaal.unlock();
        }
    }

    @Nullable
    @KeepForSdk
    public GoogleSignInAccount getSavedDefaultGoogleSignInAccount() {
        return zad(zaf("defaultGoogleSignInAccount"));
    }

    @Nullable
    @KeepForSdk
    public GoogleSignInOptions getSavedDefaultGoogleSignInOptions() {
        return zae(zaf("defaultGoogleSignInAccount"));
    }

    @Nullable
    @KeepForSdk
    public String getSavedRefreshToken() {
        return zaf("refreshToken");
    }

    @KeepForSdk
    public void saveDefaultGoogleSignInAccount(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        Preconditions.checkNotNull(googleSignInAccount);
        Preconditions.checkNotNull(googleSignInOptions);
        zaa("defaultGoogleSignInAccount", googleSignInAccount.zab());
        Preconditions.checkNotNull(googleSignInAccount);
        Preconditions.checkNotNull(googleSignInOptions);
        String zab = googleSignInAccount.zab();
        zaa(zab("googleSignInAccount", zab), googleSignInAccount.zac());
        zaa(zab("googleSignInOptions", zab), googleSignInOptions.zae());
    }

    public final void zaf() {
        String zaf = zaf("defaultGoogleSignInAccount");
        zag("defaultGoogleSignInAccount");
        if (!TextUtils.isEmpty(zaf)) {
            zag(zab("googleSignInAccount", zaf));
            zag(zab("googleSignInOptions", zaf));
        }
    }
}
