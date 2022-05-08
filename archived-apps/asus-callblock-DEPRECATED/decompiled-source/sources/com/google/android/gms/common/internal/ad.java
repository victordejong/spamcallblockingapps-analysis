package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.internal.bl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ad.class */
public final class ad {

    /* renamed from: a  reason: collision with root package name */
    private static Object f4000a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f4001b;
    private static String c;
    private static int d;

    public static int a(Context context) {
        Bundle bundle;
        synchronized (f4000a) {
            if (!f4001b) {
                f4001b = true;
                try {
                    bundle = bl.a(context).a(context.getPackageName(), 128).metaData;
                } catch (PackageManager.NameNotFoundException e) {
                    Log.wtf("MetadataValueReader", "This should never happen.", e);
                }
                if (bundle != null) {
                    c = bundle.getString("com.google.app.id");
                    d = bundle.getInt("com.google.android.gms.version");
                }
            }
        }
        return d;
    }
}
