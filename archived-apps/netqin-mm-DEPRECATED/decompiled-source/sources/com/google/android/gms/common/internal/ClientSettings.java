package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.signin.SignInOptions;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p012b.p035f.C0782b;
@VisibleForTesting
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ClientSettings.class */
public final class ClientSettings {

    /* renamed from: a */
    public final Account f23413a;

    /* renamed from: b */
    public final Set<Scope> f23414b;

    /* renamed from: c */
    public final Set<Scope> f23415c;

    /* renamed from: d */
    public final Map<Api<?>, zaa> f23416d;

    /* renamed from: e */
    public final View f23417e;

    /* renamed from: f */
    public final String f23418f;

    /* renamed from: g */
    public final String f23419g;

    /* renamed from: h */
    public final SignInOptions f23420h;

    /* renamed from: i */
    public final boolean f23421i;

    /* renamed from: j */
    public Integer f23422j;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ClientSettings$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public Account f23423a;

        /* renamed from: b */
        public C0782b<Scope> f23424b;

        /* renamed from: c */
        public String f23425c;

        /* renamed from: d */
        public String f23426d;

        /* renamed from: e */
        public SignInOptions f23427e = SignInOptions.f30215j;

        /* renamed from: a */
        public final Builder m17319a(Account account) {
            this.f23423a = account;
            return this;
        }

        @KeepForSdk
        /* renamed from: a */
        public final Builder m17318a(String str) {
            this.f23425c = str;
            return this;
        }

        /* renamed from: a */
        public final Builder m17317a(Collection<Scope> collection) {
            if (this.f23424b == null) {
                this.f23424b = new C0782b<>();
            }
            this.f23424b.addAll(collection);
            return this;
        }

        @KeepForSdk
        /* renamed from: a */
        public final ClientSettings m17320a() {
            return new ClientSettings(this.f23423a, this.f23424b, null, 0, null, this.f23425c, this.f23426d, this.f23427e, false);
        }

        /* renamed from: b */
        public final Builder m17316b(String str) {
            this.f23426d = str;
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ClientSettings$zaa.class */
    public static final class zaa {

        /* renamed from: a */
        public final Set<Scope> f23428a;
    }

    public ClientSettings(Account account, Set<Scope> set, Map<Api<?>, zaa> map, int i, View view, String str, String str2, SignInOptions signInOptions, boolean z) {
        this.f23413a = account;
        this.f23414b = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.f23416d = map == null ? Collections.emptyMap() : map;
        this.f23417e = view;
        this.f23418f = str;
        this.f23419g = str2;
        this.f23420h = signInOptions;
        this.f23421i = false;
        HashSet hashSet = new HashSet(this.f23414b);
        for (zaa zaaVar : this.f23416d.values()) {
            hashSet.addAll(zaaVar.f23428a);
        }
        this.f23415c = Collections.unmodifiableSet(hashSet);
    }

    @KeepForSdk
    /* renamed from: a */
    public static ClientSettings m17331a(Context context) {
        return new GoogleApiClient.Builder(context).m17756b();
    }

    @KeepForSdk
    /* renamed from: a */
    public final Account m17332a() {
        return this.f23413a;
    }

    /* renamed from: a */
    public final void m17330a(Integer num) {
        this.f23422j = num;
    }

    @KeepForSdk
    /* renamed from: b */
    public final Account m17329b() {
        Account account = this.f23413a;
        return account != null ? account : new Account("<<default account>>", "com.google");
    }

    @KeepForSdk
    /* renamed from: c */
    public final Set<Scope> m17328c() {
        return this.f23415c;
    }

    @KeepForSdk
    /* renamed from: d */
    public final String m17327d() {
        return this.f23418f;
    }

    @KeepForSdk
    /* renamed from: e */
    public final Set<Scope> m17326e() {
        return this.f23414b;
    }

    /* renamed from: f */
    public final Map<Api<?>, zaa> m17325f() {
        return this.f23416d;
    }

    /* renamed from: g */
    public final String m17324g() {
        return this.f23419g;
    }

    /* renamed from: h */
    public final SignInOptions m17323h() {
        return this.f23420h;
    }

    /* renamed from: i */
    public final Integer m17322i() {
        return this.f23422j;
    }

    /* renamed from: j */
    public final boolean m17321j() {
        return this.f23421i;
    }
}
