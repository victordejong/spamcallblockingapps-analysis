package com.google.android.gms.signin;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.signin.internal.SignInClientImpl;
import p131c.p161d.p170b.p224d.p263k.C4883a;
import p131c.p161d.p170b.p224d.p263k.C4884b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/zaa.class */
public final class zaa {

    /* renamed from: a */
    public static final Api.ClientKey<SignInClientImpl> f30239a = new Api.ClientKey<>();
    @ShowFirstParty

    /* renamed from: b */
    public static final Api.ClientKey<SignInClientImpl> f30240b = new Api.ClientKey<>();

    /* renamed from: c */
    public static final Api.AbstractClientBuilder<SignInClientImpl, SignInOptions> f30241c = new C4884b();

    /* renamed from: d */
    public static final Api.AbstractClientBuilder<SignInClientImpl, zae> f30242d = new C4883a();

    /* renamed from: e */
    public static final Api<SignInOptions> f30243e = new Api<>("SignIn.API", f30241c, f30239a);

    static {
        new Scope("profile");
        new Scope("email");
        new Api("SignIn.INTERNAL_API", f30242d, f30240b);
    }
}
