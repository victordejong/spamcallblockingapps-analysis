package com.google.android.gms.tagmanager;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/dn.class */
public final class dn implements x {

    /* renamed from: a  reason: collision with root package name */
    private static dn f4400a;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f4401b = new Object();
    private bl c;
    private y d;

    private dn(Context context) {
        this(z.a(context), new ca((byte) 0));
    }

    private dn(y yVar, bl blVar) {
        this.d = yVar;
        this.c = blVar;
    }

    public static x a(Context context) {
        dn dnVar;
        synchronized (f4401b) {
            if (f4400a == null) {
                f4400a = new dn(context);
            }
            dnVar = f4400a;
        }
        return dnVar;
    }

    @Override // com.google.android.gms.tagmanager.x
    public final boolean a(String str) {
        boolean z;
        if (!this.c.a()) {
            an.b("Too many urls sent too quickly with the TagManagerSender, rate limiting invoked.");
            z = false;
        } else {
            this.d.a(str);
            z = true;
        }
        return z;
    }
}
