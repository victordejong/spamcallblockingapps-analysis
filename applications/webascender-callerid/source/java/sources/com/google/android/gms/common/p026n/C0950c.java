package com.google.android.gms.common.p026n;

import android.content.Context;
/* renamed from: com.google.android.gms.common.n.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/n/c.class */
public class C0950c {

    /* renamed from: b */
    private static C0950c f3577b = new C0950c();

    /* renamed from: a */
    private C0949b f3578a = null;

    /* renamed from: a */
    public static C0949b m3200a(Context context) {
        return f3577b.m3199b(context);
    }

    /* renamed from: b */
    private final C0949b m3199b(Context context) {
        C0949b c0949b;
        synchronized (this) {
            if (this.f3578a == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                this.f3578a = new C0949b(context);
            }
            c0949b = this.f3578a;
        }
        return c0949b;
    }
}
