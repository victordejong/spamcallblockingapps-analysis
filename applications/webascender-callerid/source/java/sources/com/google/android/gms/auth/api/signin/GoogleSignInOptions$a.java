package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import com.google.android.gms.auth.api.signin.internal.a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.C0931r;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/GoogleSignInOptions$a.class */
public final class GoogleSignInOptions$a {

    /* renamed from: a */
    private Set<Scope> f3246a;

    /* renamed from: b */
    private boolean f3247b;

    /* renamed from: c */
    private boolean f3248c;

    /* renamed from: d */
    private boolean f3249d;

    /* renamed from: e */
    private String f3250e;

    /* renamed from: f */
    private Account f3251f;

    /* renamed from: g */
    private String f3252g;

    /* renamed from: h */
    private Map<Integer, a> f3253h;

    /* renamed from: i */
    private String f3254i;

    public GoogleSignInOptions$a() {
        this.f3246a = new HashSet();
        this.f3253h = new HashMap();
    }

    public GoogleSignInOptions$a(GoogleSignInOptions googleSignInOptions) {
        this.f3246a = new HashSet();
        this.f3253h = new HashMap();
        C0931r.m3308k(googleSignInOptions);
        this.f3246a = new HashSet(GoogleSignInOptions.H1(googleSignInOptions));
        this.f3247b = GoogleSignInOptions.L1(googleSignInOptions);
        this.f3248c = GoogleSignInOptions.M1(googleSignInOptions);
        this.f3249d = GoogleSignInOptions.N1(googleSignInOptions);
        this.f3250e = GoogleSignInOptions.O1(googleSignInOptions);
        this.f3251f = GoogleSignInOptions.P1(googleSignInOptions);
        this.f3252g = GoogleSignInOptions.Q1(googleSignInOptions);
        this.f3253h = GoogleSignInOptions.I1(GoogleSignInOptions.R1(googleSignInOptions));
        this.f3254i = GoogleSignInOptions.S1(googleSignInOptions);
    }

    /* renamed from: h */
    private final String m3777h(String str) {
        C0931r.m3312g(str);
        String str2 = this.f3250e;
        C0931r.m3317b(str2 == null || str2.equals(str), "two different server client ids provided");
        return str;
    }

    /* renamed from: a */
    public final GoogleSignInOptions m3784a() {
        if (this.f3246a.contains(GoogleSignInOptions.u)) {
            Set<Scope> set = this.f3246a;
            Scope scope = GoogleSignInOptions.t;
            if (set.contains(scope)) {
                this.f3246a.remove(scope);
            }
        }
        if (this.f3249d && (this.f3251f == null || !this.f3246a.isEmpty())) {
            m3782c();
        }
        return new GoogleSignInOptions(3, new ArrayList(this.f3246a), this.f3251f, this.f3249d, this.f3247b, this.f3248c, this.f3250e, this.f3252g, this.f3253h, this.f3254i, (C0769f) null);
    }

    /* renamed from: b */
    public final GoogleSignInOptions$a m3783b() {
        this.f3246a.add(GoogleSignInOptions.r);
        return this;
    }

    /* renamed from: c */
    public final GoogleSignInOptions$a m3782c() {
        this.f3246a.add(GoogleSignInOptions.s);
        return this;
    }

    /* renamed from: d */
    public final GoogleSignInOptions$a m3781d(String str) {
        this.f3249d = true;
        m3777h(str);
        this.f3250e = str;
        return this;
    }

    /* renamed from: e */
    public final GoogleSignInOptions$a m3780e() {
        this.f3246a.add(GoogleSignInOptions.q);
        return this;
    }

    /* renamed from: f */
    public final GoogleSignInOptions$a m3779f(Scope scope, Scope... scopeArr) {
        this.f3246a.add(scope);
        this.f3246a.addAll(Arrays.asList(scopeArr));
        return this;
    }

    /* renamed from: g */
    public final GoogleSignInOptions$a m3778g(String str) {
        this.f3254i = str;
        return this;
    }
}
