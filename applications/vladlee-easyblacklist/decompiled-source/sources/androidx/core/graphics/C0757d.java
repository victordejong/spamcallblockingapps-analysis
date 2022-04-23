package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import androidx.core.content.p033a.C0633c;
import androidx.core.p034d.C0649b;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.core.graphics.d */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/d.class */
class C0757d extends C0767h {

    /* renamed from: a */
    private static Class f3132a;

    /* renamed from: b */
    private static Constructor f3133b;

    /* renamed from: c */
    private static Method f3134c;

    /* renamed from: d */
    private static Method f3135d;

    /* renamed from: e */
    private static boolean f3136e = false;

    /* renamed from: a */
    private static Typeface m8260a(Object obj) {
        m8262a();
        try {
            Object newInstance = Array.newInstance(f3132a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f3135d.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    private static File m8261a(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String readlink = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                return new File(readlink);
            }
            return null;
        } catch (ErrnoException e) {
            return null;
        }
    }

    /* renamed from: a */
    private static void m8262a() {
        Method method;
        Method method2;
        Class<?> cls;
        if (!f3136e) {
            f3136e = true;
            Constructor<?> constructor = null;
            try {
                cls = Class.forName("android.graphics.FontFamily");
                constructor = cls.getConstructor(new Class[0]);
                method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
                method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            } catch (ClassNotFoundException | NoSuchMethodException e) {
                Log.e("TypefaceCompatApi21Impl", e.getClass().getName(), e);
                method = null;
                method2 = null;
                cls = null;
            }
            f3133b = constructor;
            f3132a = cls;
            f3134c = method2;
            f3135d = method;
        }
    }

    /* renamed from: a */
    private static boolean m8259a(Object obj, String str, int i, boolean z) {
        m8262a();
        try {
            return ((Boolean) f3134c.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: b */
    private static Object m8258b() {
        m8262a();
        try {
            return f3133b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.core.graphics.C0767h
    /* renamed from: a */
    public Typeface mo8219a(Context context, C0633c.C0635b bVar, Resources resources, int i) {
        C0633c.C0636c[] a;
        Object b = m8258b();
        for (C0633c.C0636c cVar : bVar.m8661a()) {
            File a2 = C0771k.m8210a(context);
            if (a2 == null) {
                return null;
            }
            try {
                if (!C0771k.m8205a(a2, resources, cVar.m8655f())) {
                    a2.delete();
                    return null;
                }
                boolean a3 = m8259a(b, a2.getPath(), cVar.m8659b(), cVar.m8658c());
                a2.delete();
                if (!a3) {
                    return null;
                }
            } catch (RuntimeException e) {
                a2.delete();
                return null;
            } catch (Throwable th) {
                a2.delete();
                throw th;
            }
        }
        return m8260a(b);
    }

    @Override // androidx.core.graphics.C0767h
    /* renamed from: a */
    public Typeface mo8217a(Context context, C0649b.C0651b[] bVarArr, int i) {
        if (bVarArr.length <= 0) {
            return null;
        }
        C0649b.C0651b a = m8215a(bVarArr, i);
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(a.m8594a(), "r", null);
            if (openFileDescriptor != null) {
                File a2 = m8261a(openFileDescriptor);
                if (a2 != null && a2.canRead()) {
                    Typeface createFromFile = Typeface.createFromFile(a2);
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return createFromFile;
                }
                FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                Typeface a3 = C0767h.m8218a(context, fileInputStream);
                fileInputStream.close();
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return a3;
            } else if (openFileDescriptor == null) {
                return null;
            } else {
                openFileDescriptor.close();
                return null;
            }
        } catch (IOException e) {
            return null;
        }
    }
}
