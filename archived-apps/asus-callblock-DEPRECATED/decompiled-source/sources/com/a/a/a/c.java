package com.a.a.a;

import com.a.a.a.b.j;
/* loaded from: classes-dex2jar.jar:com/a/a/a/c.class */
public final class c extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private j f361a;

    private c(String str) {
        super(str);
    }

    public c(String str, j jVar) {
        this(str);
        this.f361a = jVar;
    }

    private c(String str, Throwable th) {
        super(str, th);
    }

    public c(String str, Throwable th, j jVar) {
        this(str, th);
        this.f361a = jVar;
    }

    public c(Throwable th) {
        this("There was an error executing the request", th, null);
    }
}
