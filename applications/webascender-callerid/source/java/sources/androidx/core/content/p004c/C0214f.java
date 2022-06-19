package androidx.core.content.p004c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.TypedValue;
import f.h.k.h;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.core.content.c.f */
/* loaded from: classes-dex2jar.jar:androidx/core/content/c/f.class */
public final class C0214f {

    /* renamed from: androidx.core.content.c.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/c/f$a.class */
    public static abstract class AbstractC0215a {

        /* renamed from: androidx.core.content.c.f$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/content/c/f$a$a.class */
        public class RunnableC0216a implements Runnable {

            /* renamed from: f */
            final /* synthetic */ Typeface f1324f;

            RunnableC0216a(Typeface typeface) {
                AbstractC0215a.this = r4;
                this.f1324f = typeface;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC0215a.this.m5995d(this.f1324f);
            }
        }

        /* renamed from: androidx.core.content.c.f$a$b */
        /* loaded from: classes-dex2jar.jar:androidx/core/content/c/f$a$b.class */
        public class RunnableC0217b implements Runnable {

            /* renamed from: f */
            final /* synthetic */ int f1326f;

            RunnableC0217b(int i) {
                AbstractC0215a.this = r4;
                this.f1326f = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC0215a.this.m5996c(this.f1326f);
            }
        }

        /* renamed from: a */
        public final void m5998a(int i, Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            handler2.post(new RunnableC0217b(i));
        }

        /* renamed from: b */
        public final void m5997b(Typeface typeface, Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            handler2.post(new RunnableC0216a(typeface));
        }

        /* renamed from: c */
        public abstract void m5996c(int i);

        /* renamed from: d */
        public abstract void m5995d(Typeface typeface);
    }

    /* renamed from: androidx.core.content.c.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/c/f$b.class */
    public static final class C0218b {

        /* renamed from: androidx.core.content.c.f$b$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/content/c/f$b$a.class */
        static class C0219a {

            /* renamed from: a */
            private static final Object f1328a = new Object();

            /* renamed from: b */
            private static Method f1329b;

            /* renamed from: c */
            private static boolean f1330c;

            /* renamed from: a */
            static void m5993a(Resources.Theme theme) {
                synchronized (f1328a) {
                    if (!f1330c) {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            f1329b = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException e) {
                            Log.i("ResourcesCompat", "Failed to retrieve rebase() method", e);
                        }
                        f1330c = true;
                    }
                    Method method = f1329b;
                    if (method != null) {
                        try {
                            method.invoke(theme, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException e2) {
                            Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", e2);
                            f1329b = null;
                        }
                    }
                }
            }
        }

        /* renamed from: androidx.core.content.c.f$b$b */
        /* loaded from: classes-dex2jar.jar:androidx/core/content/c/f$b$b.class */
        static class C0220b {
            /* renamed from: a */
            static void m5992a(Resources.Theme theme) {
                theme.rebase();
            }
        }

        /* renamed from: a */
        public static void m5994a(Resources.Theme theme) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                C0220b.m5992a(theme);
            } else if (i < 23) {
            } else {
                C0219a.m5993a(theme);
            }
        }
    }

    /* renamed from: a */
    public static int m6005a(Resources resources, int i, Resources.Theme theme) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 23 ? resources.getColor(i, theme) : resources.getColor(i);
    }

    /* renamed from: b */
    public static Drawable m6004b(Resources resources, int i, Resources.Theme theme) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i, theme) : resources.getDrawable(i);
    }

    /* renamed from: c */
    public static Typeface m6003c(Context context, int i) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return m6000f(context, i, new TypedValue(), 0, null, null, false);
    }

    /* renamed from: d */
    public static Typeface m6002d(Context context, int i, TypedValue typedValue, int i2, AbstractC0215a abstractC0215a) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return m6000f(context, i, typedValue, i2, abstractC0215a, null, true);
    }

    /* renamed from: e */
    public static void m6001e(Context context, int i, AbstractC0215a abstractC0215a, Handler handler) throws Resources.NotFoundException {
        h.c(abstractC0215a);
        if (context.isRestricted()) {
            abstractC0215a.m5998a(-4, handler);
        } else {
            m6000f(context, i, new TypedValue(), 0, abstractC0215a, handler, false);
        }
    }

    /* renamed from: f */
    private static Typeface m6000f(Context context, int i, TypedValue typedValue, int i2, AbstractC0215a abstractC0215a, Handler handler, boolean z) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface m5999g = m5999g(context, resources, typedValue, i, i2, abstractC0215a, handler, z);
        if (m5999g == null && abstractC0215a == null) {
            throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
        }
        return m5999g;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Typeface m5999g(android.content.Context r9, android.content.res.Resources r10, android.util.TypedValue r11, int r12, int r13, androidx.core.content.p004c.C0214f.AbstractC0215a r14, android.os.Handler r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.p004c.C0214f.m5999g(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, androidx.core.content.c.f$a, android.os.Handler, boolean):android.graphics.Typeface");
    }
}
