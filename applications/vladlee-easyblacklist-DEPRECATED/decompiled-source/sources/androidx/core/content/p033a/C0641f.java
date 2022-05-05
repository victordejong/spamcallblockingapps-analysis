package androidx.core.content.p033a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import androidx.core.p036f.C0687f;
/* renamed from: androidx.core.content.a.f */
/* loaded from: classes-dex2jar.jar:androidx/core/content/a/f.class */
public final class C0641f {

    /* renamed from: androidx.core.content.a.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/a/f$a.class */
    public static abstract class AbstractC0642a {
        /* renamed from: a */
        public abstract void mo1184a(int i);

        /* renamed from: a */
        public final void m8639a(int i, Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            handler2.post(new RunnableC0644h(this, i));
        }

        /* renamed from: a */
        public abstract void mo1183a(Typeface typeface);

        /* renamed from: a */
        public final void m8638a(Typeface typeface, Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            handler2.post(new RunnableC0643g(this, typeface));
        }
    }

    /* renamed from: a */
    public static Typeface m8645a(Context context, int i) {
        if (context.isRestricted()) {
            return null;
        }
        return m8643a(context, i, new TypedValue(), 0, null, false);
    }

    /* renamed from: a */
    public static Typeface m8644a(Context context, int i, TypedValue typedValue, int i2, AbstractC0642a aVar) {
        if (context.isRestricted()) {
            return null;
        }
        return m8643a(context, i, typedValue, i2, aVar, true);
    }

    /* renamed from: a */
    private static Typeface m8643a(Context context, int i, TypedValue typedValue, int i2, AbstractC0642a aVar, boolean z) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface a = m8641a(context, resources, typedValue, i, i2, aVar, z);
        if (a != null || aVar != null) {
            return a;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Typeface m8641a(android.content.Context r8, android.content.res.Resources r9, android.util.TypedValue r10, int r11, int r12, androidx.core.content.p033a.C0641f.AbstractC0642a r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.p033a.C0641f.m8641a(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, androidx.core.content.a.f$a, boolean):android.graphics.Typeface");
    }

    /* renamed from: a */
    public static Drawable m8640a(Resources resources, int i, Resources.Theme theme) {
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i, theme) : resources.getDrawable(i);
    }

    /* renamed from: a */
    public static void m8642a(Context context, int i, AbstractC0642a aVar) {
        C0687f.m8549a(aVar);
        if (context.isRestricted()) {
            aVar.m8639a(-4, (Handler) null);
        } else {
            m8643a(context, i, new TypedValue(), 0, aVar, false);
        }
    }
}
