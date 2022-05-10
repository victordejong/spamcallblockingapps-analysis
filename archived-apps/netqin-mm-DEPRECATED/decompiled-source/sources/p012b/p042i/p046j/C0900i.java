package p012b.p042i.p046j;

import android.graphics.Typeface;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: b.i.j.i */
/* loaded from: classes-dex2jar.jar:b/i/j/i.class */
public class C0900i extends C0899h {
    @Override // p012b.p042i.p046j.C0899h
    /* renamed from: a */
    public Typeface mo35555a(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f4104g, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f4110m.invoke(null, newInstance, "sans-serif", -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // p012b.p042i.p046j.C0899h
    /* renamed from: d */
    public Method mo35554d(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Array.newInstance(cls, 1).getClass();
        Class cls3 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", cls2, String.class, cls3, cls3);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
