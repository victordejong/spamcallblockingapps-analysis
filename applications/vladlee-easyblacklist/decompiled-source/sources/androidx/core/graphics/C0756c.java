package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import androidx.core.content.p033a.C0633c;
import androidx.core.content.p033a.C0641f;
import androidx.core.p034d.C0649b;
import androidx.p026b.C0535g;
/* renamed from: androidx.core.graphics.c */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/c.class */
public final class C0756c {

    /* renamed from: a */
    private static final C0767h f3130a;

    /* renamed from: b */
    private static final C0535g<String, Typeface> f3131b;

    static {
        f3130a = Build.VERSION.SDK_INT >= 28 ? new C0766g() : Build.VERSION.SDK_INT >= 26 ? new C0765f() : (Build.VERSION.SDK_INT < 24 || !C0764e.m8232a()) ? Build.VERSION.SDK_INT >= 21 ? new C0757d() : new C0767h() : new C0764e();
        f3131b = new C0535g<>(16);
    }

    /* renamed from: a */
    public static Typeface m8268a(Context context, Resources resources, int i, String str, int i2) {
        Typeface a = f3130a.mo8220a(context, resources, i, str, i2);
        if (a != null) {
            f3131b.put(m8263b(resources, i, i2), a);
        }
        return a;
    }

    /* renamed from: a */
    public static Typeface m8267a(Context context, Typeface typeface, int i) {
        if (context != null) {
            if (Build.VERSION.SDK_INT < 21) {
                C0633c.C0635b a = f3130a.m8216a(typeface);
                Typeface a2 = a == null ? null : f3130a.mo8219a(context, a, context.getResources(), i);
                if (a2 != null) {
                    return a2;
                }
            }
            return Typeface.create(typeface, i);
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    /* renamed from: a */
    public static Typeface m8266a(Context context, C0633c.AbstractC0634a aVar, Resources resources, int i, int i2, C0641f.AbstractC0642a aVar2, boolean z) {
        Typeface typeface;
        if (aVar instanceof C0633c.C0637d) {
            C0633c.C0637d dVar = (C0633c.C0637d) aVar;
            typeface = C0649b.m8601a(context, dVar.m8654a(), aVar2, null, !z ? aVar2 == null : dVar.m8653b() == 0, z ? dVar.m8652c() : -1, i2);
        } else {
            Typeface a = f3130a.mo8219a(context, (C0633c.C0635b) aVar, resources, i2);
            typeface = a;
            if (aVar2 != null) {
                if (a != null) {
                    aVar2.m8638a(a, (Handler) null);
                    typeface = a;
                } else {
                    aVar2.m8639a(-3, (Handler) null);
                    typeface = a;
                }
            }
        }
        if (typeface != null) {
            f3131b.put(m8263b(resources, i, i2), typeface);
        }
        return typeface;
    }

    /* renamed from: a */
    public static Typeface m8265a(Context context, C0649b.C0651b[] bVarArr, int i) {
        return f3130a.mo8217a(context, bVarArr, i);
    }

    /* renamed from: a */
    public static Typeface m8264a(Resources resources, int i, int i2) {
        return f3131b.get(m8263b(resources, i, i2));
    }

    /* renamed from: b */
    private static String m8263b(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + "-" + i + "-" + i2;
    }
}
