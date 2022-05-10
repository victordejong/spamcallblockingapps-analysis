package com.google.android.gms.common.wrappers;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.VisibleForTesting;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/wrappers/Wrappers.class */
public class Wrappers {

    /* renamed from: b */
    public static Wrappers f23581b = new Wrappers();

    /* renamed from: a */
    public PackageManagerWrapper f23582a = null;

    @KeepForSdk
    /* renamed from: b */
    public static PackageManagerWrapper m17026b(Context context) {
        return f23581b.m17027a(context);
    }

    @VisibleForTesting
    /* renamed from: a */
    public final PackageManagerWrapper m17027a(Context context) {
        PackageManagerWrapper packageManagerWrapper;
        synchronized (this) {
            if (this.f23582a == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                this.f23582a = new PackageManagerWrapper(context);
            }
            packageManagerWrapper = this.f23582a;
        }
        return packageManagerWrapper;
    }
}
