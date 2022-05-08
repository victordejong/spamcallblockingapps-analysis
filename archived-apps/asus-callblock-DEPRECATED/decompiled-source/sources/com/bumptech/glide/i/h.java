package com.bumptech.glide.i;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Looper;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/i/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f3471a = "0123456789abcdef".toCharArray();

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f3472b = new char[64];
    private static final char[] c = new char[40];

    /* renamed from: com.bumptech.glide.i.h$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/i/h$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3473a = new int[Bitmap.Config.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:19:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:17:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0042 -> B:15:0x0014). Please submit an issue!!! */
        static {
            try {
                f3473a[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3473a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3473a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3473a[Bitmap.Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public static int a(int i, int i2, Bitmap.Config config) {
        int i3;
        Bitmap.Config config2 = config;
        if (config == null) {
            config2 = Bitmap.Config.ARGB_8888;
        }
        switch (AnonymousClass1.f3473a[config2.ordinal()]) {
            case 1:
                i3 = 1;
                break;
            case 2:
            case 3:
                i3 = 2;
                break;
            default:
                i3 = 4;
                break;
        }
        return i3 * i * i2;
    }

    @TargetApi(19)
    public static int a(Bitmap bitmap) {
        int allocationByteCount;
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                allocationByteCount = bitmap.getAllocationByteCount();
            } catch (NullPointerException e) {
            }
            return allocationByteCount;
        }
        allocationByteCount = bitmap.getHeight() * bitmap.getRowBytes();
        return allocationByteCount;
    }

    public static String a(byte[] bArr) {
        String str;
        synchronized (f3472b) {
            char[] cArr = f3472b;
            for (int i = 0; i < bArr.length; i++) {
                int i2 = bArr[i] & 255;
                cArr[i * 2] = f3471a[i2 >>> 4];
                cArr[(i * 2) + 1] = f3471a[i2 & 15];
            }
            str = new String(cArr);
        }
        return str;
    }

    public static <T> List<T> a(Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t : collection) {
            arrayList.add(t);
        }
        return arrayList;
    }

    public static <T> Queue<T> a(int i) {
        return new ArrayDeque(i);
    }

    public static void a() {
        if (!b()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    public static boolean a(int i, int i2) {
        return b(i) && b(i2);
    }

    public static boolean b() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    private static boolean b(int i) {
        return i > 0 || i == Integer.MIN_VALUE;
    }

    public static boolean c() {
        return !b();
    }
}
