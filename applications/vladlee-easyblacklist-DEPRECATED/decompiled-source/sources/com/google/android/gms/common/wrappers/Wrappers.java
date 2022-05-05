package com.google.android.gms.common.wrappers;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/wrappers/Wrappers.class */
public class Wrappers {

    /* renamed from: b */
    private static Wrappers f7017b = new Wrappers();

    /* renamed from: a */
    private PackageManagerWrapper f7018a = null;

    /* renamed from: a */
    private final PackageManagerWrapper m5550a(Context context) {
        PackageManagerWrapper packageManagerWrapper;
        synchronized (this) {
            if (this.f7018a == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                this.f7018a = new PackageManagerWrapper(context);
            }
            packageManagerWrapper = this.f7018a;
        }
        return packageManagerWrapper;
    }

    public static PackageManagerWrapper packageManager(Context context) {
        return f7017b.m5550a(context);
    }
}
