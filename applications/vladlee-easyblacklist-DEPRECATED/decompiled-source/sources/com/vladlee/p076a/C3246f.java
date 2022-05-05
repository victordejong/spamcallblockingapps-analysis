package com.vladlee.p076a;
/* renamed from: com.vladlee.a.f */
/* loaded from: classes-dex2jar.jar:com/vladlee/a/f.class */
public final class C3246f {

    /* renamed from: a */
    int f19199a;

    /* renamed from: b */
    String f19200b;

    public C3246f(int i, String str) {
        String a;
        this.f19199a = i;
        if (str == null || str.trim().length() == 0) {
            a = C3238b.m423a(i);
        } else {
            a = str + " (response: " + C3238b.m423a(i) + ")";
        }
        this.f19200b = a;
    }

    /* renamed from: a */
    public final int m407a() {
        return this.f19199a;
    }

    /* renamed from: b */
    public final boolean m406b() {
        return this.f19199a == 0;
    }

    /* renamed from: c */
    public final boolean m405c() {
        return !m406b();
    }

    public final String toString() {
        return "IabResult: " + this.f19200b;
    }
}
