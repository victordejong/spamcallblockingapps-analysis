package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import androidx.collection.ArraySet;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.signin.SignInOptions;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;
@VisibleForTesting
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ClientSettings.class */
public final class ClientSettings {

    /* renamed from: a */
    private final Account f7463a;

    /* renamed from: b */
    private final Set<Scope> f7464b;

    /* renamed from: c */
    private final Set<Scope> f7465c;

    /* renamed from: d */
    private final Map<Api<?>, OptionalApiSettings> f7466d;

    /* renamed from: e */
    private final String f7467e;

    /* renamed from: f */
    private final String f7468f;

    /* renamed from: g */
    private final SignInOptions f7469g;

    /* renamed from: h */
    private final boolean f7470h;

    /* renamed from: i */
    private Integer f7471i;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ClientSettings$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        private Account f7472a;

        /* renamed from: b */
        private ArraySet<Scope> f7473b;

        /* renamed from: c */
        private Map<Api<?>, OptionalApiSettings> f7474c;

        /* renamed from: e */
        private View f7476e;

        /* renamed from: f */
        private String f7477f;

        /* renamed from: g */
        private String f7478g;

        /* renamed from: i */
        private boolean f7480i;

        /* renamed from: d */
        private int f7475d = 0;

        /* renamed from: h */
        private SignInOptions f7479h = SignInOptions.f9801o;

        /* renamed from: a */
        public final Builder m14571a(Collection<Scope> collection) {
            if (this.f7473b == null) {
                this.f7473b = new ArraySet<>();
            }
            this.f7473b.addAll(collection);
            return this;
        }

        @KeepForSdk
        /* renamed from: b */
        public final ClientSettings m14570b() {
            return new ClientSettings(this.f7472a, this.f7473b, this.f7474c, this.f7475d, this.f7476e, this.f7477f, this.f7478g, this.f7479h, this.f7480i);
        }

        /* renamed from: c */
        public final Builder m14569c(Account account) {
            this.f7472a = account;
            return this;
        }

        /* renamed from: d */
        public final Builder m14568d(String str) {
            this.f7478g = str;
            return this;
        }

        @KeepForSdk
        /* renamed from: e */
        public final Builder m14567e(String str) {
            this.f7477f = str;
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ClientSettings$OptionalApiSettings.class */
    public static final class OptionalApiSettings {

        /* renamed from: a */
        public final Set<Scope> f7481a;
    }

    public ClientSettings(Account account, Set<Scope> set, Map<Api<?>, OptionalApiSettings> map, int i, View view, String str, String str2, SignInOptions signInOptions, boolean z) {
        this.f7463a = account;
        this.f7464b = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.f7466d = map == null ? Collections.emptyMap() : map;
        this.f7467e = str;
        this.f7468f = str2;
        this.f7469g = signInOptions;
        this.f7470h = z;
        HashSet hashSet = new HashSet(this.f7464b);
        for (OptionalApiSettings optionalApiSettings : this.f7466d.values()) {
            hashSet.addAll(optionalApiSettings.f7481a);
        }
        this.f7465c = Collections.unmodifiableSet(hashSet);
    }

    @Nullable
    @KeepForSdk
    /* renamed from: a */
    public final Account m14582a() {
        return this.f7463a;
    }

    @KeepForSdk
    /* renamed from: b */
    public final Account m14581b() {
        Account account = this.f7463a;
        return account != null ? account : new Account(BaseGmsClient.DEFAULT_ACCOUNT, "com.google");
    }

    @KeepForSdk
    /* renamed from: c */
    public final Set<Scope> m14580c() {
        return this.f7465c;
    }

    @Nullable
    /* renamed from: d */
    public final Integer m14579d() {
        return this.f7471i;
    }

    /* renamed from: e */
    public final Map<Api<?>, OptionalApiSettings> m14578e() {
        return this.f7466d;
    }

    @Nullable
    /* renamed from: f */
    public final String m14577f() {
        return this.f7468f;
    }

    @Nullable
    @KeepForSdk
    /* renamed from: g */
    public final String m14576g() {
        return this.f7467e;
    }

    @KeepForSdk
    /* renamed from: h */
    public final Set<Scope> m14575h() {
        return this.f7464b;
    }

    @Nullable
    /* renamed from: i */
    public final SignInOptions m14574i() {
        return this.f7469g;
    }

    /* renamed from: j */
    public final boolean m14573j() {
        return this.f7470h;
    }

    /* renamed from: k */
    public final void m14572k(Integer num) {
        this.f7471i = num;
    }
}
