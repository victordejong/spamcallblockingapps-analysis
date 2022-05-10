package p012b.p042i.p044i.p045c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.TypedValue;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: b.i.i.c.f */
/* loaded from: classes-dex2jar.jar:b/i/i/c/f.class */
public final class C0882f {

    /* renamed from: b.i.i.c.f$a */
    /* loaded from: classes-dex2jar.jar:b/i/i/c/f$a.class */
    public static abstract class AbstractC0883a {

        /* renamed from: b.i.i.c.f$a$a */
        /* loaded from: classes-dex2jar.jar:b/i/i/c/f$a$a.class */
        public class RunnableC0884a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Typeface f4076a;

            public RunnableC0884a(Typeface typeface) {
                this.f4076a = typeface;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC0883a.this.mo35631a(this.f4076a);
            }
        }

        /* renamed from: b.i.i.c.f$a$b */
        /* loaded from: classes-dex2jar.jar:b/i/i/c/f$a$b.class */
        public class RunnableC0885b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ int f4078a;

            public RunnableC0885b(int i) {
                this.f4078a = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC0883a.this.mo35633a(this.f4078a);
            }
        }

        /* renamed from: a */
        public abstract void mo35633a(int i);

        /* renamed from: a */
        public final void m35632a(int i, Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            handler2.post(new RunnableC0885b(i));
        }

        /* renamed from: a */
        public abstract void mo35631a(Typeface typeface);

        /* renamed from: a */
        public final void m35630a(Typeface typeface, Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            handler2.post(new RunnableC0884a(typeface));
        }
    }

    /* renamed from: b.i.i.c.f$b */
    /* loaded from: classes-dex2jar.jar:b/i/i/c/f$b.class */
    public static final class C0886b {

        /* renamed from: b.i.i.c.f$b$a */
        /* loaded from: classes-dex2jar.jar:b/i/i/c/f$b$a.class */
        public static class C0887a {

            /* renamed from: a */
            public static final Object f4080a = new Object();

            /* renamed from: b */
            public static Method f4081b;

            /* renamed from: c */
            public static boolean f4082c;

            /* renamed from: a */
            public static void m35628a(Resources.Theme theme) {
                synchronized (f4080a) {
                    if (!f4082c) {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            f4081b = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException e) {
                            Log.i("ResourcesCompat", "Failed to retrieve rebase() method", e);
                        }
                        f4082c = true;
                    }
                    if (f4081b != null) {
                        try {
                            f4081b.invoke(theme, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException e2) {
                            Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", e2);
                            f4081b = null;
                        }
                    }
                }
            }
        }

        /* renamed from: b.i.i.c.f$b$b */
        /* loaded from: classes-dex2jar.jar:b/i/i/c/f$b$b.class */
        public static class C0888b {
            /* renamed from: a */
            public static void m35627a(Resources.Theme theme) {
                theme.rebase();
            }
        }

        /* renamed from: a */
        public static void m35629a(Resources.Theme theme) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                C0888b.m35627a(theme);
            } else if (i >= 23) {
                C0887a.m35628a(theme);
            }
        }
    }

    /* renamed from: a */
    public static Typeface m35637a(Context context, int i, TypedValue typedValue, int i2, AbstractC0883a aVar) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return m35636a(context, i, typedValue, i2, aVar, null, true);
    }

    /* renamed from: a */
    public static Typeface m35636a(Context context, int i, TypedValue typedValue, int i2, AbstractC0883a aVar, Handler handler, boolean z) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface a = m35635a(context, resources, typedValue, i, i2, aVar, handler, z);
        if (a != null || aVar != null) {
            return a;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface m35635a(android.content.Context r9, android.content.res.Resources r10, android.util.TypedValue r11, int r12, int r13, p012b.p042i.p044i.p045c.C0882f.AbstractC0883a r14, android.os.Handler r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p042i.p044i.p045c.C0882f.m35635a(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, b.i.i.c.f$a, android.os.Handler, boolean):android.graphics.Typeface");
    }

    /* renamed from: a */
    public static Drawable m35634a(Resources resources, int i, Resources.Theme theme) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i, theme) : resources.getDrawable(i);
    }
}
