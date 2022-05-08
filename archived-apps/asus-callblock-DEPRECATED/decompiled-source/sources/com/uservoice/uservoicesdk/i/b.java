package com.uservoice.uservoicesdk.i;

import android.graphics.Bitmap;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/i/b.class */
public final class b {
    private static b c;

    /* renamed from: a  reason: collision with root package name */
    public Map<String, SoftReference<Bitmap>> f4699a = new LinkedHashMap(20);

    /* renamed from: b  reason: collision with root package name */
    public Map<String, WeakReference<a>> f4700b = new HashMap();

    private b() {
    }

    public static b a() {
        if (c == null) {
            c = new b();
        }
        return c;
    }
}
