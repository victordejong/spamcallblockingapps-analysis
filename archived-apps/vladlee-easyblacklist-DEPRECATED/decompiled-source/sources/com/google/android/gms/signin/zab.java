package com.google.android.gms.signin;

import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.signin.internal.SignInClientImpl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/zab.class */
public final class zab {

    /* renamed from: a */
    private static final Api.ClientKey<SignInClientImpl> f17344a = new Api.ClientKey<>();

    /* renamed from: b */
    private static final Api.ClientKey<SignInClientImpl> f17345b = new Api.ClientKey<>();
    public static final Api.AbstractClientBuilder<SignInClientImpl, SignInOptions> zapv = new C2878a();

    /* renamed from: c */
    private static final Api.AbstractClientBuilder<SignInClientImpl, Object> f17346c = new C2879b();

    /* renamed from: d */
    private static final Scope f17347d = new Scope(Scopes.PROFILE);

    /* renamed from: e */
    private static final Scope f17348e = new Scope(Scopes.EMAIL);
    public static final Api<SignInOptions> API = new Api<>("SignIn.API", zapv, f17344a);

    /* renamed from: f */
    private static final Api<Object> f17349f = new Api<>("SignIn.INTERNAL_API", f17346c, f17345b);
}
