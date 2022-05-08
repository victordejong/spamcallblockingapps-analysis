package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.NonNull;
import com.flurry.sdk.C2792ac;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
/* renamed from: com.appsflyer.internal.b */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/b.class */
public final class C1836b {

    /* renamed from: ı */
    public IntentFilter f1828 = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    /* renamed from: com.appsflyer.internal.b$d */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/b$d.class */
    public static final class C1837d {

        /* renamed from: ı */
        public final float f1829;

        /* renamed from: Ι */
        public final String f1830;

        public C1837d(float f, String str) {
            this.f1829 = f;
            this.f1830 = str;
        }
    }

    /* renamed from: com.appsflyer.internal.b$e */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/b$e.class */
    public static final class C1838e {

        /* renamed from: ı */
        public static final C1836b f1831 = new C1836b();
    }

    @NonNull
    /* renamed from: Ι */
    public final C1837d m36152(Context context) {
        float f;
        String str;
        String str2 = null;
        str2 = null;
        try {
            Intent registerReceiver = context.registerReceiver(null, this.f1828);
            f = 0.0f;
            if (registerReceiver != null) {
                if (2 == registerReceiver.getIntExtra("status", -1)) {
                    int intExtra = registerReceiver.getIntExtra("plugged", -1);
                    str = intExtra != 1 ? intExtra != 2 ? intExtra != 4 ? "other" : "wireless" : "usb" : C2792ac.f3935a;
                } else {
                    str = "no";
                }
                int intExtra2 = registerReceiver.getIntExtra(IapPlanRealmObject.LEVEL, -1);
                str2 = str;
                int intExtra3 = registerReceiver.getIntExtra("scale", -1);
                str2 = str;
                f = 0.0f;
                if (-1 != intExtra2) {
                    str2 = str;
                    f = 0.0f;
                    if (-1 != intExtra3) {
                        f = (intExtra2 * 100.0f) / intExtra3;
                        str2 = str;
                    }
                }
            }
        } catch (Throwable th) {
            f = 0.0f;
        }
        return new C1837d(f, str2);
    }
}
