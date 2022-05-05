package androidx.appcompat.p020a.p021a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.appcompat.widget.C0451ap;
import androidx.core.content.C0646b;
import androidx.core.content.p033a.C0631a;
import java.util.WeakHashMap;
/* renamed from: androidx.appcompat.a.a.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/a/a/a.class */
public final class C0258a {

    /* renamed from: a */
    private static final ThreadLocal<TypedValue> f1013a = new ThreadLocal<>();

    /* renamed from: b */
    private static final WeakHashMap<Context, SparseArray<C0259a>> f1014b = new WeakHashMap<>(0);

    /* renamed from: c */
    private static final Object f1015c = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/a/a/a$a.class */
    public static final class C0259a {

        /* renamed from: a */
        final ColorStateList f1016a;

        /* renamed from: b */
        final Configuration f1017b;

        C0259a(ColorStateList colorStateList, Configuration configuration) {
            this.f1016a = colorStateList;
            this.f1017b = configuration;
        }
    }

    /* renamed from: a */
    public static ColorStateList m9952a(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i);
        }
        ColorStateList d = m9949d(context, i);
        if (d != null) {
            return d;
        }
        ColorStateList c = m9950c(context, i);
        if (c == null) {
            return C0646b.m8614b(context, i);
        }
        synchronized (f1015c) {
            SparseArray<C0259a> sparseArray = f1014b.get(context);
            SparseArray<C0259a> sparseArray2 = sparseArray;
            if (sparseArray == null) {
                sparseArray2 = new SparseArray<>();
                f1014b.put(context, sparseArray2);
            }
            sparseArray2.append(i, new C0259a(c, context.getResources().getConfiguration()));
        }
        return c;
    }

    /* renamed from: b */
    public static Drawable m9951b(Context context, int i) {
        return C0451ap.m9150a().m9146a(context, i);
    }

    /* renamed from: c */
    private static ColorStateList m9950c(Context context, int i) {
        Resources resources = context.getResources();
        TypedValue typedValue = f1013a.get();
        TypedValue typedValue2 = typedValue;
        if (typedValue == null) {
            typedValue2 = new TypedValue();
            f1013a.set(typedValue2);
        }
        boolean z = true;
        resources.getValue(i, typedValue2, true);
        if (typedValue2.type < 28 || typedValue2.type > 31) {
            z = false;
        }
        if (z) {
            return null;
        }
        Resources resources2 = context.getResources();
        try {
            return C0631a.m8679a(resources2, resources2.getXml(i), context.getTheme());
        } catch (Exception e) {
            Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", e);
            return null;
        }
    }

    /* renamed from: d */
    private static ColorStateList m9949d(Context context, int i) {
        C0259a aVar;
        synchronized (f1015c) {
            SparseArray<C0259a> sparseArray = f1014b.get(context);
            if (!(sparseArray == null || sparseArray.size() <= 0 || (aVar = sparseArray.get(i)) == null)) {
                if (aVar.f1017b.equals(context.getResources().getConfiguration())) {
                    return aVar.f1016a;
                }
                sparseArray.remove(i);
            }
            return null;
        }
    }
}
