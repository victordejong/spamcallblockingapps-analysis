package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import com.google.android.gms.common.api.C0807a;
import com.google.android.gms.common.api.Scope;
import f.e.b;
import g.f.a.d.f.a;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.common.internal.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/e.class */
public final class C0908e {

    /* renamed from: a */
    private final Account f3528a;

    /* renamed from: b */
    private final Set<Scope> f3529b;

    /* renamed from: c */
    private final Set<Scope> f3530c;

    /* renamed from: d */
    private final Map<C0807a<?>, C0910b> f3531d;

    /* renamed from: e */
    private final String f3532e;

    /* renamed from: f */
    private final String f3533f;

    /* renamed from: g */
    private final a f3534g;

    /* renamed from: h */
    private final boolean f3535h;

    /* renamed from: i */
    private Integer f3536i;

    /* renamed from: com.google.android.gms.common.internal.e$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/e$a.class */
    public static final class C0909a {

        /* renamed from: a */
        private Account f3537a;

        /* renamed from: b */
        private b<Scope> f3538b;

        /* renamed from: c */
        private String f3539c;

        /* renamed from: d */
        private String f3540d;

        /* renamed from: e */
        private a f3541e = a.o;

        /* renamed from: a */
        public final C0908e m3354a() {
            return new C0908e(this.f3537a, this.f3538b, null, 0, null, this.f3539c, this.f3540d, this.f3541e, false);
        }

        /* renamed from: b */
        public final C0909a m3353b(String str) {
            this.f3539c = str;
            return this;
        }

        /* renamed from: c */
        public final C0909a m3352c(Account account) {
            this.f3537a = account;
            return this;
        }

        /* renamed from: d */
        public final C0909a m3351d(String str) {
            this.f3540d = str;
            return this;
        }

        /* renamed from: e */
        public final C0909a m3350e(Collection<Scope> collection) {
            if (this.f3538b == null) {
                this.f3538b = new b<>();
            }
            this.f3538b.addAll(collection);
            return this;
        }
    }

    /* renamed from: com.google.android.gms.common.internal.e$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/e$b.class */
    public static final class C0910b {

        /* renamed from: a */
        public final Set<Scope> f3542a;
    }

    public C0908e(Account account, Set<Scope> set, Map<C0807a<?>, C0910b> map, int i, View view, String str, String str2, a aVar, boolean z) {
        this.f3528a = account;
        Set<Scope> emptySet = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.f3529b = emptySet;
        Map<C0807a<?>, C0910b> emptyMap = map == null ? Collections.emptyMap() : map;
        this.f3531d = emptyMap;
        this.f3532e = str;
        this.f3533f = str2;
        this.f3534g = aVar;
        this.f3535h = false;
        HashSet hashSet = new HashSet(emptySet);
        for (C0910b c0910b : emptyMap.values()) {
            hashSet.addAll(c0910b.f3542a);
        }
        this.f3530c = Collections.unmodifiableSet(hashSet);
    }

    /* renamed from: a */
    public final Account m3367a() {
        return this.f3528a;
    }

    @Deprecated
    /* renamed from: b */
    public final String m3366b() {
        Account account = this.f3528a;
        if (account != null) {
            return account.name;
        }
        return null;
    }

    /* renamed from: c */
    public final Account m3365c() {
        Account account = this.f3528a;
        return account != null ? account : new Account("<<default account>>", "com.google");
    }

    /* renamed from: d */
    public final Set<Scope> m3364d() {
        return this.f3530c;
    }

    /* renamed from: e */
    public final Set<Scope> m3363e(C0807a<?> c0807a) {
        C0910b c0910b = this.f3531d.get(c0807a);
        if (c0910b == null || c0910b.f3542a.isEmpty()) {
            return this.f3529b;
        }
        HashSet hashSet = new HashSet(this.f3529b);
        hashSet.addAll(c0910b.f3542a);
        return hashSet;
    }

    /* renamed from: f */
    public final String m3362f() {
        return this.f3532e;
    }

    /* renamed from: g */
    public final Set<Scope> m3361g() {
        return this.f3529b;
    }

    /* renamed from: h */
    public final Map<C0807a<?>, C0910b> m3360h() {
        return this.f3531d;
    }

    /* renamed from: i */
    public final void m3359i(Integer num) {
        this.f3536i = num;
    }

    /* renamed from: j */
    public final String m3358j() {
        return this.f3533f;
    }

    /* renamed from: k */
    public final a m3357k() {
        return this.f3534g;
    }

    /* renamed from: l */
    public final Integer m3356l() {
        return this.f3536i;
    }

    /* renamed from: m */
    public final boolean m3355m() {
        return this.f3535h;
    }
}
