package com.bumptech.glide.load.c;

import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a.class */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int f3557a = 22;

    public static boolean a(Uri uri) {
        boolean z = false;
        if ("file".equals(uri.getScheme())) {
            z = false;
            if (!uri.getPathSegments().isEmpty()) {
                z = false;
                if ("android_asset".equals(uri.getPathSegments().get(0))) {
                    z = true;
                }
            }
        }
        return z;
    }

    public static String b(Uri uri) {
        return uri.toString().substring(f3557a);
    }
}
