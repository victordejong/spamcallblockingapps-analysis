package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
/* renamed from: com.appsflyer.internal.b */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/b.class */
public final class C0666b {

    /* renamed from: ǃ */
    private IntentFilter f3009 = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    /* renamed from: com.appsflyer.internal.b$d */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/b$d.class */
    public static final class C0667d {

        /* renamed from: ǃ */
        public final float f3010;

        /* renamed from: ι */
        public final String f3011;

        C0667d(float f, String str) {
            this.f3010 = f;
            this.f3011 = str;
        }
    }

    /* renamed from: com.appsflyer.internal.b$e */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/b$e.class */
    public static final class C0668e {

        /* renamed from: ı */
        public static final C0666b f3012 = new C0666b();
    }

    C0666b() {
    }

    /* renamed from: ι */
    public final C0667d m4042(Context context) {
        float f;
        String str;
        String str2 = null;
        try {
            Intent registerReceiver = context.registerReceiver(null, this.f3009);
            str2 = null;
            f = 0.0f;
            if (registerReceiver != null) {
                if (2 == registerReceiver.getIntExtra("status", -1)) {
                    int intExtra = registerReceiver.getIntExtra("plugged", -1);
                    str = intExtra != 1 ? intExtra != 2 ? intExtra != 4 ? "other" : "wireless" : "usb" : "ac";
                } else {
                    str = "no";
                }
                int intExtra2 = registerReceiver.getIntExtra("level", -1);
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
        return new C0667d(f, str2);
    }
}
