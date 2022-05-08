package com.android.volley;

import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/android/volley/a.class */
public final class a extends u {
    private Intent c;

    public a() {
    }

    public a(j jVar) {
        super(jVar);
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.c != null ? "User needs to (re)enter credentials." : super.getMessage();
    }
}
