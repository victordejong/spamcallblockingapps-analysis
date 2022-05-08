package com.google.android.gms.signin;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/SignInOptions.class */
public final class SignInOptions implements Api.ApiOptions.Optional {

    /* renamed from: o */
    public static final SignInOptions f9801o = new SignInOptions(false, false, null, false, null, null, false, null, null);

    /* renamed from: f */
    private final boolean f9802f = false;

    /* renamed from: g */
    private final boolean f9803g = false;

    /* renamed from: h */
    private final String f9804h = null;

    /* renamed from: i */
    private final boolean f9805i = false;

    /* renamed from: l */
    private final boolean f9808l = false;

    /* renamed from: j */
    private final String f9806j = null;

    /* renamed from: k */
    private final String f9807k = null;

    /* renamed from: m */
    private final Long f9809m = null;

    /* renamed from: n */
    private final Long f9810n = null;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/SignInOptions$zaa.class */
    public static final class zaa {
    }

    static {
        new zaa();
    }

    private SignInOptions(boolean z, boolean z2, String str, boolean z3, String str2, String str3, boolean z4, Long l, Long l2) {
    }

    @Nullable
    /* renamed from: a */
    public final Long m10861a() {
        return this.f9809m;
    }

    @Nullable
    /* renamed from: b */
    public final String m10860b() {
        return this.f9806j;
    }

    @Nullable
    /* renamed from: c */
    public final String m10859c() {
        return this.f9807k;
    }

    @Nullable
    /* renamed from: e */
    public final Long m10858e() {
        return this.f9810n;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SignInOptions)) {
            return false;
        }
        SignInOptions signInOptions = (SignInOptions) obj;
        return this.f9802f == signInOptions.f9802f && this.f9803g == signInOptions.f9803g && Objects.m14537a(this.f9804h, signInOptions.f9804h) && this.f9805i == signInOptions.f9805i && this.f9808l == signInOptions.f9808l && Objects.m14537a(this.f9806j, signInOptions.f9806j) && Objects.m14537a(this.f9807k, signInOptions.f9807k) && Objects.m14537a(this.f9809m, signInOptions.f9809m) && Objects.m14537a(this.f9810n, signInOptions.f9810n);
    }

    /* renamed from: f */
    public final String m10857f() {
        return this.f9804h;
    }

    /* renamed from: g */
    public final boolean m10856g() {
        return this.f9805i;
    }

    public final int hashCode() {
        return Objects.m14536b(Boolean.valueOf(this.f9802f), Boolean.valueOf(this.f9803g), this.f9804h, Boolean.valueOf(this.f9805i), Boolean.valueOf(this.f9808l), this.f9806j, this.f9807k, this.f9809m, this.f9810n);
    }

    /* renamed from: i */
    public final boolean m10855i() {
        return this.f9803g;
    }

    /* renamed from: j */
    public final boolean m10854j() {
        return this.f9802f;
    }

    /* renamed from: k */
    public final boolean m10853k() {
        return this.f9808l;
    }
}
