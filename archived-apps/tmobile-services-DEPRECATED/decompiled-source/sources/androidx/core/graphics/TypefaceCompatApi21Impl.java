package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
@RequiresApi
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/TypefaceCompatApi21Impl.class */
class TypefaceCompatApi21Impl extends TypefaceCompatBaseImpl {

    /* renamed from: b */
    private static Class<?> f3030b;

    /* renamed from: c */
    private static Constructor<?> f3031c;

    /* renamed from: d */
    private static Method f3032d;

    /* renamed from: e */
    private static Method f3033e;

    /* renamed from: f */
    private static boolean f3034f = false;

    /* renamed from: k */
    private static boolean m19558k(Object obj, String str, int i, boolean z) {
        m19555n();
        try {
            return ((Boolean) f3032d.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: l */
    private static Typeface m19557l(Object obj) {
        m19555n();
        try {
            Object newInstance = Array.newInstance(f3030b, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f3033e.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: m */
    private File m19556m(@NonNull ParcelFileDescriptor parcelFileDescriptor) {
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

    /* renamed from: n */
    private static void m19555n() {
        Method method;
        Method method2;
        Class<?> cls;
        if (!f3034f) {
            f3034f = true;
            Constructor<?> constructor = null;
            try {
                cls = Class.forName("android.graphics.FontFamily");
                constructor = cls.getConstructor(new Class[0]);
                method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
                method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            } catch (ClassNotFoundException | NoSuchMethodException e) {
                Log.e("TypefaceCompatApi21Impl", e.getClass().getName(), e);
                method = null;
                cls = null;
                method2 = null;
            }
            f3031c = constructor;
            f3030b = cls;
            f3032d = method2;
            f3033e = method;
        }
    }

    /* renamed from: o */
    private static Object m19554o() {
        m19555n();
        try {
            return f3031c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    /* renamed from: b */
    public Typeface mo19534b(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) {
        FontResourcesParserCompat.FontFileResourceEntry[] a;
        Object o = m19554o();
        for (FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry : fontFamilyFilesResourceEntry.m19630a()) {
            File e = TypefaceCompatUtil.m19515e(context);
            if (e == null) {
                return null;
            }
            try {
                if (!TypefaceCompatUtil.m19517c(e, resources, fontFileResourceEntry.m19628b())) {
                    e.delete();
                    return null;
                } else if (!m19558k(o, e.getPath(), fontFileResourceEntry.m19625e(), fontFileResourceEntry.m19624f())) {
                    e.delete();
                    return null;
                } else {
                    e.delete();
                }
            } catch (RuntimeException e2) {
                e.delete();
                return null;
            } catch (Throwable th) {
                e.delete();
                throw th;
            }
        }
        return m19557l(o);
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    /* renamed from: c */
    public Typeface mo19533c(Context context, CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        if (fontInfoArr.length < 1) {
            return null;
        }
        FontsContractCompat.FontInfo h = mo19528h(fontInfoArr, i);
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(h.m19411c(), "r", cancellationSignal);
            if (openFileDescriptor != null) {
                File m = m19556m(openFileDescriptor);
                if (m != null && m.canRead()) {
                    Typeface createFromFile = Typeface.createFromFile(m);
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return createFromFile;
                }
                FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                try {
                    Typeface d = super.mo19532d(context, fileInputStream);
                    fileInputStream.close();
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return d;
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
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
