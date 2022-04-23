package com.google.android.gms.signin;

import android.os.Bundle;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/SignInOptions.class */
public final class SignInOptions implements Api.ApiOptions.Optional {
    public static final SignInOptions DEFAULT = new SignInOptions();

    /* renamed from: a */
    private final boolean f17323a = false;

    /* renamed from: b */
    private final boolean f17324b = false;

    /* renamed from: c */
    private final String f17325c = null;

    /* renamed from: d */
    private final boolean f17326d = false;

    /* renamed from: g */
    private final boolean f17329g = false;

    /* renamed from: e */
    private final String f17327e = null;

    /* renamed from: f */
    private final String f17328f = null;

    /* renamed from: h */
    private final Long f17330h = null;

    /* renamed from: i */
    private final Long f17331i = null;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/SignInOptions$zaa.class */
    public static final class zaa {
    }

    static {
        new zaa();
    }

    private SignInOptions() {
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SignInOptions)) {
            return false;
        }
        SignInOptions signInOptions = (SignInOptions) obj;
        return this.f17323a == signInOptions.f17323a && this.f17324b == signInOptions.f17324b && Objects.equal(this.f17325c, signInOptions.f17325c) && this.f17326d == signInOptions.f17326d && this.f17329g == signInOptions.f17329g && Objects.equal(this.f17327e, signInOptions.f17327e) && Objects.equal(this.f17328f, signInOptions.f17328f) && Objects.equal(this.f17330h, signInOptions.f17330h) && Objects.equal(this.f17331i, signInOptions.f17331i);
    }

    public final Long getAuthApiSignInModuleVersion() {
        return this.f17330h;
    }

    public final String getHostedDomain() {
        return this.f17327e;
    }

    public final String getLogSessionId() {
        return this.f17328f;
    }

    public final Long getRealClientLibraryVersion() {
        return this.f17331i;
    }

    public final String getServerClientId() {
        return this.f17325c;
    }

    public final int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.f17323a), Boolean.valueOf(this.f17324b), this.f17325c, Boolean.valueOf(this.f17326d), Boolean.valueOf(this.f17329g), this.f17327e, this.f17328f, this.f17330h, this.f17331i);
    }

    public final boolean isForceCodeForRefreshToken() {
        return this.f17326d;
    }

    public final boolean isIdTokenRequested() {
        return this.f17324b;
    }

    public final boolean isOfflineAccessRequested() {
        return this.f17323a;
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", this.f17323a);
        bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", this.f17324b);
        bundle.putString("com.google.android.gms.signin.internal.serverClientId", this.f17325c);
        bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
        bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", this.f17326d);
        bundle.putString("com.google.android.gms.signin.internal.hostedDomain", this.f17327e);
        bundle.putString("com.google.android.gms.signin.internal.logSessionId", this.f17328f);
        bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", this.f17329g);
        Long l = this.f17330h;
        if (l != null) {
            bundle.putLong("com.google.android.gms.signin.internal.authApiSignInModuleVersion", l.longValue());
        }
        Long l2 = this.f17331i;
        if (l2 != null) {
            bundle.putLong("com.google.android.gms.signin.internal.realClientLibraryVersion", l2.longValue());
        }
        return bundle;
    }

    public final boolean waitForAccessTokenRefresh() {
        return this.f17329g;
    }
}
