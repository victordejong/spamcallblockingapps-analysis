package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.google.android.gms.common.p026n.C0950c;
import com.google.android.gms.common.util.C0971m;
import java.util.List;
/* renamed from: com.google.android.gms.cloudmessaging.u */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/u.class */
public final class C0803u {

    /* renamed from: a */
    private final Context f3316a;

    /* renamed from: b */
    private int f3317b;

    /* renamed from: c */
    private int f3318c = 0;

    public C0803u(Context context) {
        this.f3316a = context;
    }

    /* renamed from: b */
    private final PackageInfo m3701b(String str) {
        try {
            return C0950c.m3200a(this.f3316a).m3205e(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("Failed to find package ");
            sb.append(valueOf);
            Log.w("Metadata", sb.toString());
            return null;
        }
    }

    /* renamed from: a */
    public final int m3702a() {
        synchronized (this) {
            int i = this.f3318c;
            if (i != 0) {
                return i;
            }
            PackageManager packageManager = this.f3316a.getPackageManager();
            if (C0950c.m3200a(this.f3316a).m3208b("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                Log.e("Metadata", "Google Play services missing or without correct permission.");
                return 0;
            }
            if (!C0971m.m3139i()) {
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    this.f3318c = 1;
                    return 1;
                }
            }
            Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
            intent2.setPackage("com.google.android.gms");
            List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
            if (queryBroadcastReceivers != null && queryBroadcastReceivers.size() > 0) {
                this.f3318c = 2;
                return 2;
            }
            Log.w("Metadata", "Failed to resolve IID implementation package, falling back");
            if (C0971m.m3139i()) {
                this.f3318c = 2;
            } else {
                this.f3318c = 1;
            }
            return this.f3318c;
        }
    }

    /* renamed from: c */
    public final int m3700c() {
        int i;
        PackageInfo m3701b;
        synchronized (this) {
            if (this.f3317b == 0 && (m3701b = m3701b("com.google.android.gms")) != null) {
                this.f3317b = m3701b.versionCode;
            }
            i = this.f3317b;
        }
        return i;
    }
}
