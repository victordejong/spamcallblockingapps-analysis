package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import com.google.android.gms.common.api.Api;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/TypefaceCompatBaseImpl.class */
public class TypefaceCompatBaseImpl {

    /* renamed from: a */
    private ConcurrentHashMap<Long, FontResourcesParserCompat.FontFamilyFilesResourceEntry> f3046a = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor.class */
    public interface StyleExtractor<T> {
        /* renamed from: a */
        int mo19521a(T t);

        /* renamed from: b */
        boolean mo19520b(T t);
    }

    /* renamed from: a */
    private void m19535a(Typeface typeface, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry) {
        long j = m19526j(typeface);
        if (j != 0) {
            this.f3046a.put(Long.valueOf(j), fontFamilyFilesResourceEntry);
        }
    }

    /* renamed from: f */
    private FontResourcesParserCompat.FontFileResourceEntry m19530f(FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, int i) {
        return (FontResourcesParserCompat.FontFileResourceEntry) m19529g(fontFamilyFilesResourceEntry.m19630a(), i, new StyleExtractor<FontResourcesParserCompat.FontFileResourceEntry>(this) { // from class: androidx.core.graphics.TypefaceCompatBaseImpl.2
            /* renamed from: c */
            public int mo19521a(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
                return fontFileResourceEntry.m19625e();
            }

            /* renamed from: d */
            public boolean mo19520b(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
                return fontFileResourceEntry.m19624f();
            }
        });
    }

    /* renamed from: g */
    private static <T> T m19529g(T[] tArr, int i, StyleExtractor<T> styleExtractor) {
        int i2 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        T t = null;
        int i3 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        for (T t2 : tArr) {
            int abs = (Math.abs(styleExtractor.mo19521a(t2) - i2) * 2) + (styleExtractor.mo19520b(t2) == z ? 0 : 1);
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

    /* renamed from: j */
    private static long m19526j(@Nullable Typeface typeface) {
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

    @Nullable
    /* renamed from: b */
    public Typeface mo19534b(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) {
        FontResourcesParserCompat.FontFileResourceEntry f = m19530f(fontFamilyFilesResourceEntry, i);
        if (f == null) {
            return null;
        }
        Typeface d = TypefaceCompat.m19562d(context, resources, f.m19628b(), f.m19629a(), i);
        m19535a(d, fontFamilyFilesResourceEntry);
        return d;
    }

    @Nullable
    /* renamed from: c */
    public Typeface mo19533c(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        Throwable th;
        InputStream inputStream = null;
        if (fontInfoArr.length < 1) {
            return null;
        }
        try {
            inputStream = context.getContentResolver().openInputStream(mo19528h(fontInfoArr, i).m19411c());
            try {
                Typeface d = mo19532d(context, inputStream);
                TypefaceCompatUtil.m19519a(inputStream);
                return d;
            } catch (IOException e) {
                TypefaceCompatUtil.m19519a(inputStream);
                return null;
            } catch (Throwable th2) {
                th = th2;
                TypefaceCompatUtil.m19519a(inputStream);
                throw th;
            }
        } catch (IOException e2) {
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    public Typeface mo19532d(Context context, InputStream inputStream) {
        File e = TypefaceCompatUtil.m19515e(context);
        if (e == null) {
            return null;
        }
        try {
            if (!TypefaceCompatUtil.m19516d(e, inputStream)) {
                e.delete();
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(e.getPath());
            e.delete();
            return createFromFile;
        } catch (RuntimeException e2) {
            e.delete();
            return null;
        } catch (Throwable th) {
            e.delete();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Nullable
    /* renamed from: e */
    public Typeface mo19531e(Context context, Resources resources, int i, String str, int i2) {
        File e = TypefaceCompatUtil.m19515e(context);
        if (e == null) {
            return null;
        }
        try {
            if (!TypefaceCompatUtil.m19517c(e, resources, i)) {
                e.delete();
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(e.getPath());
            e.delete();
            return createFromFile;
        } catch (RuntimeException e2) {
            e.delete();
            return null;
        } catch (Throwable th) {
            e.delete();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public FontsContractCompat.FontInfo mo19528h(FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        return (FontsContractCompat.FontInfo) m19529g(fontInfoArr, i, new StyleExtractor<FontsContractCompat.FontInfo>(this) { // from class: androidx.core.graphics.TypefaceCompatBaseImpl.1
            /* renamed from: c */
            public int mo19521a(FontsContractCompat.FontInfo fontInfo) {
                return fontInfo.m19410d();
            }

            /* renamed from: d */
            public boolean mo19520b(FontsContractCompat.FontInfo fontInfo) {
                return fontInfo.m19409e();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: i */
    public FontResourcesParserCompat.FontFamilyFilesResourceEntry m19527i(Typeface typeface) {
        long j = m19526j(typeface);
        if (j == 0) {
            return null;
        }
        return this.f3046a.get(Long.valueOf(j));
    }
}
