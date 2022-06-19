package com.google.android.gms.auth.p021a;

import com.google.android.gms.auth.p021a.C0761a;
@Deprecated
/* renamed from: com.google.android.gms.auth.a.a$a$a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/a/a$a$a.class */
public class a$a$a {

    /* renamed from: a */
    protected String f3239a;

    /* renamed from: b */
    protected Boolean f3240b;

    /* renamed from: c */
    protected String f3241c;

    public a$a$a() {
        this.f3240b = Boolean.FALSE;
    }

    public a$a$a(C0761a.a aVar) {
        this.f3240b = Boolean.FALSE;
        this.f3239a = C0761a.a.b(aVar);
        this.f3240b = Boolean.valueOf(C0761a.a.c(aVar));
        this.f3241c = C0761a.a.d(aVar);
    }

    /* renamed from: a */
    public a$a$a m3787a(String str) {
        this.f3241c = str;
        return this;
    }

    /* renamed from: b */
    public C0761a.a m3786b() {
        return new C0761a.a(this);
    }
}
