package androidx.core.graphics;

import android.graphics.Typeface;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.core.graphics.g */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/g.class */
public final class C0766g extends C0765f {
    @Override // androidx.core.graphics.C0765f
    /* renamed from: a */
    protected final Typeface mo8221a(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f3167a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f3173g.invoke(null, newInstance, "sans-serif", -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // androidx.core.graphics.C0765f
    /* renamed from: a */
    protected final Method mo8222a(Class cls) {
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), String.class, Integer.TYPE, Integer.TYPE);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
