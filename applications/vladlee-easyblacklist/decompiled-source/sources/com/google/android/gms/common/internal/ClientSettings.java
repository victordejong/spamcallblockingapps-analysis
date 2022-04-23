package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import androidx.p026b.C0531c;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.signin.SignInOptions;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ClientSettings.class */
public final class ClientSettings {
    public static final String KEY_CLIENT_SESSION_ID = "com.google.android.gms.common.internal.ClientSettings.sessionId";

    /* renamed from: a */
    private final Account f6730a;

    /* renamed from: b */
    private final Set<Scope> f6731b;

    /* renamed from: c */
    private final Set<Scope> f6732c;

    /* renamed from: d */
    private final Map<Api<?>, OptionalApiSettings> f6733d;

    /* renamed from: e */
    private final int f6734e;

    /* renamed from: f */
    private final View f6735f;

    /* renamed from: g */
    private final String f6736g;

    /* renamed from: h */
    private final String f6737h;

    /* renamed from: i */
    private final SignInOptions f6738i;

    /* renamed from: j */
    private final boolean f6739j;

    /* renamed from: k */
    private Integer f6740k;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ClientSettings$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        private Account f6741a;

        /* renamed from: b */
        private C0531c<Scope> f6742b;

        /* renamed from: c */
        private Map<Api<?>, OptionalApiSettings> f6743c;

        /* renamed from: e */
        private View f6745e;

        /* renamed from: f */
        private String f6746f;

        /* renamed from: g */
        private String f6747g;

        /* renamed from: i */
        private boolean f6749i;

        /* renamed from: d */
        private int f6744d = 0;

        /* renamed from: h */
        private SignInOptions f6748h = SignInOptions.DEFAULT;

        public final Builder addAllRequiredScopes(Collection<Scope> collection) {
            if (this.f6742b == null) {
                this.f6742b = new C0531c<>();
            }
            this.f6742b.addAll(collection);
            return this;
        }

        public final Builder addRequiredScope(Scope scope) {
            if (this.f6742b == null) {
                this.f6742b = new C0531c<>();
            }
            this.f6742b.add(scope);
            return this;
        }

        public final ClientSettings build() {
            return new ClientSettings(this.f6741a, this.f6742b, this.f6743c, this.f6744d, this.f6745e, this.f6746f, this.f6747g, this.f6748h, this.f6749i);
        }

        public final Builder enableSignInClientDisconnectFix() {
            this.f6749i = true;
            return this;
        }

        public final Builder setAccount(Account account) {
            this.f6741a = account;
            return this;
        }

        public final Builder setGravityForPopups(int i) {
            this.f6744d = i;
            return this;
        }

        public final Builder setOptionalApiSettingsMap(Map<Api<?>, OptionalApiSettings> map) {
            this.f6743c = map;
            return this;
        }

        public final Builder setRealClientClassName(String str) {
            this.f6747g = str;
            return this;
        }

        public final Builder setRealClientPackageName(String str) {
            this.f6746f = str;
            return this;
        }

        public final Builder setSignInOptions(SignInOptions signInOptions) {
            this.f6748h = signInOptions;
            return this;
        }

        public final Builder setViewForPopups(View view) {
            this.f6745e = view;
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ClientSettings$OptionalApiSettings.class */
    public static final class OptionalApiSettings {
        public final Set<Scope> mScopes;

        public OptionalApiSettings(Set<Scope> set) {
            Preconditions.checkNotNull(set);
            this.mScopes = Collections.unmodifiableSet(set);
        }
    }

    public ClientSettings(Account account, Set<Scope> set, Map<Api<?>, OptionalApiSettings> map, int i, View view, String str, String str2, SignInOptions signInOptions) {
        this(account, set, map, i, view, str, str2, signInOptions, false);
    }

    public ClientSettings(Account account, Set<Scope> set, Map<Api<?>, OptionalApiSettings> map, int i, View view, String str, String str2, SignInOptions signInOptions, boolean z) {
        this.f6730a = account;
        this.f6731b = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.f6733d = map == null ? Collections.emptyMap() : map;
        this.f6735f = view;
        this.f6734e = i;
        this.f6736g = str;
        this.f6737h = str2;
        this.f6738i = signInOptions;
        this.f6739j = z;
        HashSet hashSet = new HashSet(this.f6731b);
        for (OptionalApiSettings optionalApiSettings : this.f6733d.values()) {
            hashSet.addAll(optionalApiSettings.mScopes);
        }
        this.f6732c = Collections.unmodifiableSet(hashSet);
    }

    public static ClientSettings createDefault(Context context) {
        return new GoogleApiClient.Builder(context).buildClientSettings();
    }

    @Nullable
    public final Account getAccount() {
        return this.f6730a;
    }

    @Nullable
    @Deprecated
    public final String getAccountName() {
        Account account = this.f6730a;
        if (account != null) {
            return account.name;
        }
        return null;
    }

    public final Account getAccountOrDefault() {
        Account account = this.f6730a;
        return account != null ? account : new Account("<<default account>>", AccountType.GOOGLE);
    }

    public final Set<Scope> getAllRequestedScopes() {
        return this.f6732c;
    }

    public final Set<Scope> getApplicableScopes(Api<?> api) {
        OptionalApiSettings optionalApiSettings = this.f6733d.get(api);
        if (optionalApiSettings == null || optionalApiSettings.mScopes.isEmpty()) {
            return this.f6731b;
        }
        HashSet hashSet = new HashSet(this.f6731b);
        hashSet.addAll(optionalApiSettings.mScopes);
        return hashSet;
    }

    @Nullable
    public final Integer getClientSessionId() {
        return this.f6740k;
    }

    public final int getGravityForPopups() {
        return this.f6734e;
    }

    public final Map<Api<?>, OptionalApiSettings> getOptionalApiSettings() {
        return this.f6733d;
    }

    @Nullable
    public final String getRealClientClassName() {
        return this.f6737h;
    }

    @Nullable
    public final String getRealClientPackageName() {
        return this.f6736g;
    }

    public final Set<Scope> getRequiredScopes() {
        return this.f6731b;
    }

    @Nullable
    public final SignInOptions getSignInOptions() {
        return this.f6738i;
    }

    @Nullable
    public final View getViewForPopups() {
        return this.f6735f;
    }

    public final boolean isSignInClientDisconnectFixEnabled() {
        return this.f6739j;
    }

    public final void setClientSessionId(Integer num) {
        this.f6740k = num;
    }
}
