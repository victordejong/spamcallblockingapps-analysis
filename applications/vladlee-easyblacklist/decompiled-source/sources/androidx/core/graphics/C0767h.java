package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.Log;
import androidx.core.content.p033a.C0633c;
import androidx.core.p034d.C0649b;
import com.google.android.gms.common.api.Api;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.graphics.h */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/h.class */
public class C0767h {

    /* renamed from: a */
    private ConcurrentHashMap<Long, C0633c.C0635b> f3174a = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.graphics.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/graphics/h$a.class */
    public interface AbstractC0768a<T> {
        /* renamed from: a */
        boolean mo8212a(T t);

        /* renamed from: b */
        int mo8211b(T t);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static Typeface m8218a(Context context, InputStream inputStream) {
        File a = C0771k.m8210a(context);
        if (a == null) {
            return null;
        }
        try {
            if (!C0771k.m8204a(a, inputStream)) {
                a.delete();
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(a.getPath());
            a.delete();
            return createFromFile;
        } catch (RuntimeException e) {
            a.delete();
            return null;
        } catch (Throwable th) {
            a.delete();
            throw th;
        }
    }

    /* renamed from: a */
    private static <T> T m8214a(T[] tArr, int i, AbstractC0768a<T> aVar) {
        int i2 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        int i3 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        T t = null;
        for (T t2 : tArr) {
            int abs = (Math.abs(aVar.mo8211b(t2) - i2) * 2) + (aVar.mo8212a(t2) == z ? 0 : 1);
            if (t != null) {
                i3 = i3;
                if (i3 <= abs) {
                }
            }
            t = t2;
            i3 = abs;
        }
        return t;
    }

    /* renamed from: b */
    private static long m8213b(Typeface typeface) {
        if (typeface == null) {
            return 0L;
        }
        try {
            Field declaredField = Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
            return ((Number) declaredField.get(typeface)).longValue();
        } catch (IllegalAccessException e) {
            Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e);
            return 0L;
        } catch (NoSuchFieldException e2) {
            Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e2);
            return 0L;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public Typeface mo8220a(Context context, Resources resources, int i, String str, int i2) {
        File a = C0771k.m8210a(context);
        if (a == null) {
            return null;
        }
        try {
            if (!C0771k.m8205a(a, resources, i)) {
                a.delete();
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(a.getPath());
            a.delete();
            return createFromFile;
        } catch (RuntimeException e) {
            a.delete();
            return null;
        } catch (Throwable th) {
            a.delete();
            throw th;
        }
    }

    /* renamed from: a */
    public Typeface mo8219a(Context context, C0633c.C0635b bVar, Resources resources, int i) {
        C0633c.C0636c cVar = (C0633c.C0636c) m8214a(bVar.m8661a(), i, new C0770j(this));
        if (cVar == null) {
            return null;
        }
        Typeface a = C0756c.m8268a(context, resources, cVar.m8655f(), cVar.m8660a(), i);
        long b = m8213b(a);
        if (b != 0) {
            this.f3174a.put(Long.valueOf(b), bVar);
        }
        return a;
    }

    /* renamed from: a */
    public Typeface mo8217a(Context context, C0649b.C0651b[] bVarArr, int i) {
        Throwable th;
        int length = bVarArr.length;
        InputStream inputStream = null;
        if (length <= 0) {
            return null;
        }
        try {
            inputStream = context.getContentResolver().openInputStream(m8215a(bVarArr, i).m8594a());
        } catch (IOException e) {
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            Typeface a = m8218a(context, inputStream);
            C0771k.m8207a(inputStream);
            return a;
        } catch (IOException e2) {
            C0771k.m8207a(inputStream);
            return null;
        } catch (Throwable th3) {
            th = th3;
            C0771k.m8207a(inputStream);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C0633c.C0635b m8216a(Typeface typeface) {
        long b = m8213b(typeface);
        if (b == 0) {
            return null;
        }
        return this.f3174a.get(Long.valueOf(b));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final C0649b.C0651b m8215a(C0649b.C0651b[] bVarArr, int i) {
        return (C0649b.C0651b) m8214a(bVarArr, i, new C0769i(this));
    }
}
