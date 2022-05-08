package androidx.core.provider;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import android.provider.BaseColumns;
import androidx.annotation.GuardedBy;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.graphics.TypefaceCompatUtil;
import androidx.core.provider.SelfDestructiveThread;
import androidx.core.util.Preconditions;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import org.apache.commons.cli.HelpFormatter;
/* loaded from: classes-dex2jar.jar:androidx/core/provider/FontsContractCompat.class */
public class FontsContractCompat {

    /* renamed from: a */
    static final LruCache<String, Typeface> f3101a = new LruCache<>(16);

    /* renamed from: b */
    private static final SelfDestructiveThread f3102b = new SelfDestructiveThread("fonts", 10, 10000);

    /* renamed from: c */
    static final Object f3103c = new Object();
    @GuardedBy

    /* renamed from: d */
    static final SimpleArrayMap<String, ArrayList<SelfDestructiveThread.ReplyCallback<TypefaceResult>>> f3104d = new SimpleArrayMap<>();

    /* renamed from: e */
    private static final Comparator<byte[]> f3105e = new Comparator<byte[]>() { // from class: androidx.core.provider.FontsContractCompat.5
        /* renamed from: a */
        public int compare(byte[] bArr, byte[] bArr2) {
            int i;
            int i2;
            if (bArr.length != bArr2.length) {
                i2 = bArr.length;
                i = bArr2.length;
            } else {
                for (int i3 = 0; i3 < bArr.length; i3++) {
                    if (bArr[i3] != bArr2[i3]) {
                        byte b = bArr[i3];
                        byte b2 = bArr2[i3];
                        i2 = b;
                        i = b2;
                    }
                }
                return 0;
            }
            return i2 - i;
        }
    };

    /* renamed from: androidx.core.provider.FontsContractCompat$4 */
    /* loaded from: classes-dex2jar.jar:androidx/core/provider/FontsContractCompat$4.class */
    class RunnableC02104 implements Runnable {

        /* renamed from: f */
        final /* synthetic */ Context f3113f;

        /* renamed from: g */
        final /* synthetic */ FontRequest f3114g;

        /* renamed from: h */
        final /* synthetic */ Handler f3115h;

        /* renamed from: i */
        final /* synthetic */ FontRequestCallback f3116i;

        @Override // java.lang.Runnable
        public void run() {
            try {
                FontFamilyResult d = FontsContractCompat.m19426d(this.f3113f, null, this.f3114g);
                if (d.m19414b() != 0) {
                    int b = d.m19414b();
                    if (b == 1) {
                        this.f3115h.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.2
                            @Override // java.lang.Runnable
                            public void run() {
                                RunnableC02104.this.f3116i.m19408a(-2);
                            }
                        });
                    } else if (b != 2) {
                        this.f3115h.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.4
                            @Override // java.lang.Runnable
                            public void run() {
                                RunnableC02104.this.f3116i.m19408a(-3);
                            }
                        });
                    } else {
                        this.f3115h.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.3
                            @Override // java.lang.Runnable
                            public void run() {
                                RunnableC02104.this.f3116i.m19408a(-3);
                            }
                        });
                    }
                } else {
                    FontInfo[] a = d.m19415a();
                    if (a == null || a.length == 0) {
                        this.f3115h.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.5
                            @Override // java.lang.Runnable
                            public void run() {
                                RunnableC02104.this.f3116i.m19408a(1);
                            }
                        });
                        return;
                    }
                    for (FontInfo fontInfo : a) {
                        if (fontInfo.m19413a() != 0) {
                            final int a2 = fontInfo.m19413a();
                            if (a2 < 0) {
                                this.f3115h.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.6
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        RunnableC02104.this.f3116i.m19408a(-3);
                                    }
                                });
                                return;
                            } else {
                                this.f3115h.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.7
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        RunnableC02104.this.f3116i.m19408a(a2);
                                    }
                                });
                                return;
                            }
                        }
                    }
                    final Typeface a3 = FontsContractCompat.m19429a(this.f3113f, null, a);
                    if (a3 == null) {
                        this.f3115h.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.8
                            @Override // java.lang.Runnable
                            public void run() {
                                RunnableC02104.this.f3116i.m19408a(-3);
                            }
                        });
                    } else {
                        this.f3115h.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.9
                            @Override // java.lang.Runnable
                            public void run() {
                                RunnableC02104.this.f3116i.m19407b(a3);
                            }
                        });
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                this.f3115h.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RunnableC02104.this.f3116i.m19408a(-1);
                    }
                });
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/provider/FontsContractCompat$Columns.class */
    public static final class Columns implements BaseColumns {
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/provider/FontsContractCompat$FontFamilyResult.class */
    public static class FontFamilyResult {

        /* renamed from: a */
        private final int f3128a;

        /* renamed from: b */
        private final FontInfo[] f3129b;

        @RestrictTo
        public FontFamilyResult(int i, @Nullable FontInfo[] fontInfoArr) {
            this.f3128a = i;
            this.f3129b = fontInfoArr;
        }

        /* renamed from: a */
        public FontInfo[] m19415a() {
            return this.f3129b;
        }

        /* renamed from: b */
        public int m19414b() {
            return this.f3128a;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/provider/FontsContractCompat$FontInfo.class */
    public static class FontInfo {

        /* renamed from: a */
        private final Uri f3130a;

        /* renamed from: b */
        private final int f3131b;

        /* renamed from: c */
        private final int f3132c;

        /* renamed from: d */
        private final boolean f3133d;

        /* renamed from: e */
        private final int f3134e;

        @RestrictTo
        public FontInfo(@NonNull Uri uri, @IntRange(from = 0) int i, @IntRange(from = 1, to = 1000) int i2, boolean z, int i3) {
            Preconditions.m19337d(uri);
            this.f3130a = uri;
            this.f3131b = i;
            this.f3132c = i2;
            this.f3133d = z;
            this.f3134e = i3;
        }

        /* renamed from: a */
        public int m19413a() {
            return this.f3134e;
        }

        @IntRange
        /* renamed from: b */
        public int m19412b() {
            return this.f3131b;
        }

        @NonNull
        /* renamed from: c */
        public Uri m19411c() {
            return this.f3130a;
        }

        @IntRange
        /* renamed from: d */
        public int m19410d() {
            return this.f3132c;
        }

        /* renamed from: e */
        public boolean m19409e() {
            return this.f3133d;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/provider/FontsContractCompat$FontRequestCallback.class */
    public static class FontRequestCallback {

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        /* loaded from: classes-dex2jar.jar:androidx/core/provider/FontsContractCompat$FontRequestCallback$FontRequestFailReason.class */
        public @interface FontRequestFailReason {
        }

        /* renamed from: a */
        public void m19408a(int i) {
        }

        /* renamed from: b */
        public void m19407b(Typeface typeface) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/core/provider/FontsContractCompat$TypefaceResult.class */
    public static final class TypefaceResult {

        /* renamed from: a */
        final Typeface f3135a;

        /* renamed from: b */
        final int f3136b;

        TypefaceResult(@Nullable Typeface typeface, int i) {
            this.f3135a = typeface;
            this.f3136b = i;
        }
    }

    private FontsContractCompat() {
    }

    @Nullable
    /* renamed from: a */
    public static Typeface m19429a(@NonNull Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontInfo[] fontInfoArr) {
        return TypefaceCompat.m19564b(context, cancellationSignal, fontInfoArr, 0);
    }

    /* renamed from: b */
    private static List<byte[]> m19428b(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    /* renamed from: c */
    private static boolean m19427c(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!Arrays.equals(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    @NonNull
    /* renamed from: d */
    public static FontFamilyResult m19426d(@NonNull Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontRequest fontRequest) throws PackageManager.NameNotFoundException {
        ProviderInfo i = m19421i(context.getPackageManager(), fontRequest, context.getResources());
        return i == null ? new FontFamilyResult(1, null) : new FontFamilyResult(0, m19424f(context, fontRequest, i.authority, cancellationSignal));
    }

    /* renamed from: e */
    private static List<List<byte[]>> m19425e(FontRequest fontRequest, Resources resources) {
        return fontRequest.m19435a() != null ? fontRequest.m19435a() : FontResourcesParserCompat.m19636c(resources, fontRequest.m19434b());
    }

    @NonNull
    @VisibleForTesting
    /* renamed from: f */
    static FontInfo[] m19424f(Context context, FontRequest fontRequest, String str, CancellationSignal cancellationSignal) {
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        Uri build = new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority(str).build();
        Uri build2 = new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority(str).appendPath("file").build();
        Cursor cursor2 = null;
        try {
            if (Build.VERSION.SDK_INT > 16) {
                cursor = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{fontRequest.m19430f()}, null, cancellationSignal);
            } else {
                cursor = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{fontRequest.m19430f()}, null);
            }
            ArrayList arrayList2 = arrayList;
            if (cursor != null) {
                arrayList2 = arrayList;
                if (cursor.getCount() > 0) {
                    int columnIndex = cursor.getColumnIndex("result_code");
                    ArrayList arrayList3 = new ArrayList();
                    int columnIndex2 = cursor.getColumnIndex("_id");
                    int columnIndex3 = cursor.getColumnIndex("file_id");
                    int columnIndex4 = cursor.getColumnIndex("font_ttc_index");
                    int columnIndex5 = cursor.getColumnIndex("font_weight");
                    int columnIndex6 = cursor.getColumnIndex("font_italic");
                    while (true) {
                        cursor2 = cursor;
                        if (!cursor.moveToNext()) {
                            break;
                        }
                        int i = columnIndex != -1 ? cursor.getInt(columnIndex) : 0;
                        arrayList3.add(new FontInfo(columnIndex3 == -1 ? ContentUris.withAppendedId(build, cursor.getLong(columnIndex2)) : ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3)), columnIndex4 != -1 ? cursor.getInt(columnIndex4) : 0, columnIndex5 != -1 ? cursor.getInt(columnIndex5) : 400, columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1, i));
                    }
                    arrayList2 = arrayList3;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return (FontInfo[]) arrayList2.toArray(new FontInfo[0]);
        } catch (Throwable th) {
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    @NonNull
    /* renamed from: g */
    static TypefaceResult m19423g(Context context, FontRequest fontRequest, int i) {
        try {
            FontFamilyResult d = m19426d(context, null, fontRequest);
            int i2 = -3;
            if (d.m19414b() == 0) {
                Typeface b = TypefaceCompat.m19564b(context, null, d.m19415a(), i);
                if (b != null) {
                    i2 = 0;
                }
                return new TypefaceResult(b, i2);
            }
            if (d.m19414b() == 1) {
                i2 = -2;
            }
            return new TypefaceResult(null, i2);
        } catch (PackageManager.NameNotFoundException e) {
            return new TypefaceResult(null, -1);
        }
    }

    @RestrictTo
    /* renamed from: h */
    public static Typeface m19422h(final Context context, final FontRequest fontRequest, @Nullable final ResourcesCompat.FontCallback fontCallback, @Nullable final Handler handler, boolean z, int i, final int i2) {
        final String str = fontRequest.m19433c() + HelpFormatter.DEFAULT_OPT_PREFIX + i2;
        Typeface typeface = f3101a.get(str);
        if (typeface != null) {
            if (fontCallback != null) {
                fontCallback.mo9376d(typeface);
            }
            return typeface;
        } else if (!z || i != -1) {
            Callable<TypefaceResult> callable = new Callable<TypefaceResult>() { // from class: androidx.core.provider.FontsContractCompat.1
                /* renamed from: a */
                public TypefaceResult call() throws Exception {
                    TypefaceResult g = FontsContractCompat.m19423g(context, fontRequest, i2);
                    Typeface typeface2 = g.f3135a;
                    if (typeface2 != null) {
                        FontsContractCompat.f3101a.put(str, typeface2);
                    }
                    return g;
                }
            };
            Typeface typeface2 = null;
            if (z) {
                try {
                    typeface2 = ((TypefaceResult) f3102b.m19402e(callable, i)).f3135a;
                } catch (InterruptedException e) {
                }
                return typeface2;
            }
            SelfDestructiveThread.ReplyCallback<TypefaceResult> replyCallback = fontCallback == null ? null : new SelfDestructiveThread.ReplyCallback<TypefaceResult>() { // from class: androidx.core.provider.FontsContractCompat.2
                /* renamed from: b */
                public void mo19401a(TypefaceResult typefaceResult) {
                    if (typefaceResult == null) {
                        ResourcesCompat.FontCallback.this.m19607a(1, handler);
                        return;
                    }
                    int i3 = typefaceResult.f3136b;
                    if (i3 == 0) {
                        ResourcesCompat.FontCallback.this.m19606b(typefaceResult.f3135a, handler);
                    } else {
                        ResourcesCompat.FontCallback.this.m19607a(i3, handler);
                    }
                }
            };
            synchronized (f3103c) {
                ArrayList<SelfDestructiveThread.ReplyCallback<TypefaceResult>> arrayList = f3104d.get(str);
                if (arrayList != null) {
                    if (replyCallback != null) {
                        arrayList.add(replyCallback);
                    }
                    return null;
                }
                if (replyCallback != null) {
                    ArrayList<SelfDestructiveThread.ReplyCallback<TypefaceResult>> arrayList2 = new ArrayList<>();
                    arrayList2.add(replyCallback);
                    f3104d.put(str, arrayList2);
                }
                f3102b.m19403d(callable, new SelfDestructiveThread.ReplyCallback<TypefaceResult>() { // from class: androidx.core.provider.FontsContractCompat.3
                    /* renamed from: b */
                    public void mo19401a(TypefaceResult typefaceResult) {
                        synchronized (FontsContractCompat.f3103c) {
                            ArrayList<SelfDestructiveThread.ReplyCallback<TypefaceResult>> arrayList3 = FontsContractCompat.f3104d.get(str);
                            if (arrayList3 != null) {
                                FontsContractCompat.f3104d.remove(str);
                                for (int i3 = 0; i3 < arrayList3.size(); i3++) {
                                    arrayList3.get(i3).mo19401a(typefaceResult);
                                }
                            }
                        }
                    }
                });
                return null;
            }
        } else {
            TypefaceResult g = m19423g(context, fontRequest, i2);
            if (fontCallback != null) {
                int i3 = g.f3136b;
                if (i3 == 0) {
                    fontCallback.m19606b(g.f3135a, handler);
                } else {
                    fontCallback.m19607a(i3, handler);
                }
            }
            return g.f3135a;
        }
    }

    @Nullable
    @RestrictTo
    @VisibleForTesting
    /* renamed from: i */
    public static ProviderInfo m19421i(@NonNull PackageManager packageManager, @NonNull FontRequest fontRequest, @Nullable Resources resources) throws PackageManager.NameNotFoundException {
        String d = fontRequest.m19432d();
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(d, 0);
        if (resolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException("No package found for authority: " + d);
        } else if (resolveContentProvider.packageName.equals(fontRequest.m19431e())) {
            List<byte[]> b = m19428b(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
            Collections.sort(b, f3105e);
            List<List<byte[]>> e = m19425e(fontRequest, resources);
            for (int i = 0; i < e.size(); i++) {
                ArrayList arrayList = new ArrayList(e.get(i));
                Collections.sort(arrayList, f3105e);
                if (m19427c(b, arrayList)) {
                    return resolveContentProvider;
                }
            }
            return null;
        } else {
            throw new PackageManager.NameNotFoundException("Found content provider " + d + ", but package was not " + fontRequest.m19431e());
        }
    }

    @RequiresApi
    @RestrictTo
    /* renamed from: j */
    public static Map<Uri, ByteBuffer> m19420j(Context context, FontInfo[] fontInfoArr, CancellationSignal cancellationSignal) {
        HashMap hashMap = new HashMap();
        for (FontInfo fontInfo : fontInfoArr) {
            if (fontInfo.m19413a() == 0) {
                Uri c = fontInfo.m19411c();
                if (!hashMap.containsKey(c)) {
                    hashMap.put(c, TypefaceCompatUtil.m19514f(context, cancellationSignal, c));
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }
}
