package com.google.p068b.p069a;
/* renamed from: com.google.b.a.g */
/* loaded from: classes-dex2jar.jar:com/google/b/a/g.class */
public final class C3116g extends Exception {

    /* renamed from: a */
    private EnumC3117a f18766a;

    /* renamed from: b */
    private String f18767b;

    /* renamed from: com.google.b.a.g$a */
    /* loaded from: classes-dex2jar.jar:com/google/b/a/g$a.class */
    public enum EnumC3117a {
        INVALID_COUNTRY_CODE,
        NOT_A_NUMBER,
        TOO_SHORT_AFTER_IDD,
        TOO_SHORT_NSN,
        TOO_LONG
    }

    public C3116g(EnumC3117a aVar, String str) {
        super(str);
        this.f18767b = str;
        this.f18766a = aVar;
    }

    /* renamed from: a */
    public final EnumC3117a m738a() {
        return this.f18766a;
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return "Error type: " + this.f18766a + ". " + this.f18767b;
    }
}
