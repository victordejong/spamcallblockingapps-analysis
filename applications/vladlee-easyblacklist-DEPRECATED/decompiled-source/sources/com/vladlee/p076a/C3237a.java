package com.vladlee.p076a;
/* renamed from: com.vladlee.a.a */
/* loaded from: classes-dex2jar.jar:com/vladlee/a/a.class */
public final class C3237a extends Exception {

    /* renamed from: a */
    C3246f f19170a;

    public C3237a(int i, String str) {
        this(new C3246f(i, str));
    }

    public C3237a(int i, String str, Exception exc) {
        this(new C3246f(i, str), exc);
    }

    private C3237a(C3246f fVar) {
        this(fVar, (Exception) null);
    }

    private C3237a(C3246f fVar, Exception exc) {
        super(fVar.f19200b, exc);
        this.f19170a = fVar;
    }
}
