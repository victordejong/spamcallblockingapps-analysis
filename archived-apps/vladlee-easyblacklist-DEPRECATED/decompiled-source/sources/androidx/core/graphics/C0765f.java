package androidx.core.graphics;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.core.content.p033a.C0633c;
import androidx.core.p034d.C0649b;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;
/* renamed from: androidx.core.graphics.f */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/f.class */
public class C0765f extends C0757d {

    /* renamed from: a */
    protected final Class f3167a;

    /* renamed from: b */
    protected final Constructor f3168b;

    /* renamed from: c */
    protected final Method f3169c;

    /* renamed from: d */
    protected final Method f3170d;

    /* renamed from: e */
    protected final Method f3171e;

    /* renamed from: f */
    protected final Method f3172f;

    /* renamed from: g */
    protected final Method f3173g;

    public C0765f() {
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Constructor<?> constructor;
        Class<?> cls = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            method5 = cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, Integer.TYPE, Boolean.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, FontVariationAxis[].class);
            method4 = cls.getMethod("addFontFromBuffer", ByteBuffer.class, Integer.TYPE, FontVariationAxis[].class, Integer.TYPE, Integer.TYPE);
            method3 = cls.getMethod("freeze", new Class[0]);
            method2 = cls.getMethod("abortCreation", new Class[0]);
            method = mo8222a((Class) cls);
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class " + e.getClass().getName(), e);
            method2 = null;
            method3 = null;
            method4 = null;
            method5 = null;
            constructor = null;
            method = null;
        }
        this.f3167a = cls;
        this.f3168b = constructor;
        this.f3169c = method5;
        this.f3170d = method4;
        this.f3171e = method3;
        this.f3172f = method2;
        this.f3173g = method;
    }

    /* renamed from: a */
    private boolean m8228a() {
        if (this.f3169c == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.f3169c != null;
    }

    /* renamed from: a */
    private boolean m8227a(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f3169c.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: a */
    private boolean m8226a(Object obj, ByteBuffer byteBuffer, int i, int i2, int i3) {
        try {
            return ((Boolean) this.f3170d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Integer.valueOf(i3))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: b */
    private Object m8225b() {
        try {
            return this.f3168b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: b */
    private boolean m8224b(Object obj) {
        try {
            return ((Boolean) this.f3171e.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: c */
    private void m8223c(Object obj) {
        try {
            this.f3172f.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException e) {
        }
    }

    @Override // androidx.core.graphics.C0767h
    /* renamed from: a */
    public final Typeface mo8220a(Context context, Resources resources, int i, String str, int i2) {
        if (!m8228a()) {
            return super.mo8220a(context, resources, i, str, i2);
        }
        Object b = m8225b();
        if (b == null) {
            return null;
        }
        if (!m8227a(context, b, str, 0, -1, -1, null)) {
            m8223c(b);
            return null;
        } else if (!m8224b(b)) {
            return null;
        } else {
            return mo8221a(b);
        }
    }

    @Override // androidx.core.graphics.C0757d, androidx.core.graphics.C0767h
    /* renamed from: a */
    public final Typeface mo8219a(Context context, C0633c.C0635b bVar, Resources resources, int i) {
        C0633c.C0636c[] a;
        if (!m8228a()) {
            return super.mo8219a(context, bVar, resources, i);
        }
        Object b = m8225b();
        if (b == null) {
            return null;
        }
        for (C0633c.C0636c cVar : bVar.m8661a()) {
            if (!m8227a(context, b, cVar.m8660a(), cVar.m8656e(), cVar.m8659b(), cVar.m8658c() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(cVar.m8657d()))) {
                m8223c(b);
                return null;
            }
        }
        if (!m8224b(b)) {
            return null;
        }
        return mo8221a(b);
    }

    @Override // androidx.core.graphics.C0757d, androidx.core.graphics.C0767h
    /* renamed from: a */
    public final Typeface mo8217a(Context context, C0649b.C0651b[] bVarArr, int i) {
        Typeface a;
        if (bVarArr.length <= 0) {
            return null;
        }
        if (!m8228a()) {
            C0649b.C0651b a2 = m8215a(bVarArr, i);
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(a2.m8594a(), "r", null);
                if (openFileDescriptor != null) {
                    Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(a2.m8592c()).setItalic(a2.m8591d()).build();
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return build;
                } else if (openFileDescriptor == null) {
                    return null;
                } else {
                    openFileDescriptor.close();
                    return null;
                }
            } catch (IOException e) {
                return null;
            }
        } else {
            Map<Uri, ByteBuffer> a3 = C0649b.m8599a(context, bVarArr);
            Object b = m8225b();
            if (b == null) {
                return null;
            }
            boolean z = false;
            for (C0649b.C0651b bVar : bVarArr) {
                ByteBuffer byteBuffer = a3.get(bVar.m8594a());
                if (byteBuffer != null) {
                    if (!m8226a(b, byteBuffer, bVar.m8593b(), bVar.m8592c(), bVar.m8591d() ? 1 : 0)) {
                        m8223c(b);
                        return null;
                    }
                    z = true;
                }
            }
            if (!z) {
                m8223c(b);
                return null;
            } else if (m8224b(b) && (a = mo8221a(b)) != null) {
                return Typeface.create(a, i);
            } else {
                return null;
            }
        }
    }

    /* renamed from: a */
    protected Typeface mo8221a(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f3167a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f3173g.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: a */
    protected Method mo8222a(Class cls) {
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), Integer.TYPE, Integer.TYPE);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
