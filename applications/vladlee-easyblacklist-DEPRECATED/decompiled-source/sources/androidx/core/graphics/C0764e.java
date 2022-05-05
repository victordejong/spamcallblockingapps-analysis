package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.util.Log;
import androidx.core.content.p033a.C0633c;
import androidx.core.p034d.C0649b;
import androidx.p026b.C0542i;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;
/* renamed from: androidx.core.graphics.e */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/e.class */
final class C0764e extends C0767h {

    /* renamed from: a */
    private static final Class f3163a;

    /* renamed from: b */
    private static final Constructor f3164b;

    /* renamed from: c */
    private static final Method f3165c;

    /* renamed from: d */
    private static final Method f3166d;

    static {
        Method method;
        Method method2;
        Class<?> cls;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, Integer.TYPE, List.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi24Impl", e.getClass().getName(), e);
            cls = null;
            method = null;
            method2 = null;
        }
        f3164b = constructor;
        f3163a = cls;
        f3165c = method2;
        f3166d = method;
    }

    /* renamed from: a */
    private static Typeface m8231a(Object obj) {
        try {
            Object newInstance = Array.newInstance(f3163a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f3166d.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m8232a() {
        if (f3165c == null) {
            Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return f3165c != null;
    }

    /* renamed from: a */
    private static boolean m8230a(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) f3165c.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: b */
    private static Object m8229b() {
        try {
            return f3164b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            return null;
        }
    }

    @Override // androidx.core.graphics.C0767h
    /* renamed from: a */
    public final Typeface mo8219a(Context context, C0633c.C0635b bVar, Resources resources, int i) {
        C0633c.C0636c[] a;
        Object b = m8229b();
        if (b == null) {
            return null;
        }
        for (C0633c.C0636c cVar : bVar.m8661a()) {
            ByteBuffer a2 = C0771k.m8209a(context, resources, cVar.m8655f());
            if (a2 == null || !m8230a(b, a2, cVar.m8656e(), cVar.m8659b(), cVar.m8658c())) {
                return null;
            }
        }
        return m8231a(b);
    }

    @Override // androidx.core.graphics.C0767h
    /* renamed from: a */
    public final Typeface mo8217a(Context context, C0649b.C0651b[] bVarArr, int i) {
        Object b = m8229b();
        if (b == null) {
            return null;
        }
        C0542i iVar = new C0542i();
        for (C0649b.C0651b bVar : bVarArr) {
            Uri a = bVar.m8594a();
            ByteBuffer byteBuffer = (ByteBuffer) iVar.get(a);
            ByteBuffer byteBuffer2 = byteBuffer;
            if (byteBuffer == null) {
                byteBuffer2 = C0771k.m8208a(context, a);
                iVar.put(a, byteBuffer2);
            }
            if (byteBuffer2 == null || !m8230a(b, byteBuffer2, bVar.m8593b(), bVar.m8592c(), bVar.m8591d())) {
                return null;
            }
        }
        Typeface a2 = m8231a(b);
        if (a2 == null) {
            return null;
        }
        return Typeface.create(a2, i);
    }
}
