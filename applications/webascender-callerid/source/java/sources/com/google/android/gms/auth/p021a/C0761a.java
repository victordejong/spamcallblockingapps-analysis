package com.google.android.gms.auth.p021a;

import com.google.android.gms.auth.api.signin.AbstractC0766b;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.h;
import com.google.android.gms.auth.api.signin.internal.i;
import com.google.android.gms.auth.p021a.p023e.AbstractC0764a;
import com.google.android.gms.common.api.C0807a;
import g.f.a.d.c.c.f;
/* renamed from: com.google.android.gms.auth.a.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/a/a.class */
public final class C0761a {

    /* renamed from: a */
    public static final C0807a.g<f> f3233a;

    /* renamed from: b */
    public static final C0807a.g<h> f3234b;

    /* renamed from: c */
    private static final C0807a.a<f, a> f3235c;

    /* renamed from: d */
    private static final C0807a.a<h, GoogleSignInOptions> f3236d;

    /* renamed from: e */
    public static final C0807a<GoogleSignInOptions> f3237e;

    /* renamed from: f */
    public static final AbstractC0766b f3238f = new i();

    static {
        C0807a.g<f> gVar = new C0807a.g<>();
        f3233a = gVar;
        C0807a.g<h> gVar2 = new C0807a.g<>();
        f3234b = gVar2;
        g gVar3 = new g();
        f3235c = gVar3;
        h hVar = new h();
        f3236d = hVar;
        C0807a<c> c0807a = C0762b.f3244c;
        new C0807a("Auth.CREDENTIALS_API", gVar3, gVar);
        f3237e = new C0807a<>("Auth.GOOGLE_SIGN_IN_API", hVar, gVar2);
        AbstractC0764a abstractC0764a = C0762b.f3245d;
    }
}
