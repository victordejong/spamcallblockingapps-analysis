package androidx.core.p034d;

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
import android.os.Handler;
import androidx.core.content.p033a.C0633c;
import androidx.core.content.p033a.C0641f;
import androidx.core.graphics.C0756c;
import androidx.core.graphics.C0771k;
import androidx.core.p034d.C0657g;
import androidx.core.p036f.C0687f;
import androidx.p026b.C0535g;
import androidx.p026b.C0542i;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.core.d.b */
/* loaded from: classes-dex2jar.jar:androidx/core/d/b.class */
public final class C0649b {

    /* renamed from: a */
    static final C0535g<String, Typeface> f2917a = new C0535g<>(16);

    /* renamed from: d */
    private static final C0657g f2920d = new C0657g("fonts");

    /* renamed from: b */
    static final Object f2918b = new Object();

    /* renamed from: c */
    static final C0542i<String, ArrayList<C0657g.AbstractC0658a<C0652c>>> f2919c = new C0542i<>();

    /* renamed from: e */
    private static final Comparator<byte[]> f2921e = new C0656f();

    /* renamed from: androidx.core.d.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/d/b$a.class */
    public static final class C0650a {

        /* renamed from: a */
        private final int f2922a;

        /* renamed from: b */
        private final C0651b[] f2923b;

        public C0650a(int i, C0651b[] bVarArr) {
            this.f2922a = i;
            this.f2923b = bVarArr;
        }

        /* renamed from: a */
        public final int m8596a() {
            return this.f2922a;
        }

        /* renamed from: b */
        public final C0651b[] m8595b() {
            return this.f2923b;
        }
    }

    /* renamed from: androidx.core.d.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/d/b$b.class */
    public static final class C0651b {

        /* renamed from: a */
        private final Uri f2924a;

        /* renamed from: b */
        private final int f2925b;

        /* renamed from: c */
        private final int f2926c;

        /* renamed from: d */
        private final boolean f2927d;

        /* renamed from: e */
        private final int f2928e;

        public C0651b(Uri uri, int i, int i2, boolean z, int i3) {
            this.f2924a = (Uri) C0687f.m8549a(uri);
            this.f2925b = i;
            this.f2926c = i2;
            this.f2927d = z;
            this.f2928e = i3;
        }

        /* renamed from: a */
        public final Uri m8594a() {
            return this.f2924a;
        }

        /* renamed from: b */
        public final int m8593b() {
            return this.f2925b;
        }

        /* renamed from: c */
        public final int m8592c() {
            return this.f2926c;
        }

        /* renamed from: d */
        public final boolean m8591d() {
            return this.f2927d;
        }

        /* renamed from: e */
        public final int m8590e() {
            return this.f2928e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.d.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/d/b$c.class */
    public static final class C0652c {

        /* renamed from: a */
        final Typeface f2929a;

        /* renamed from: b */
        final int f2930b;

        C0652c(Typeface typeface, int i) {
            this.f2929a = typeface;
            this.f2930b = i;
        }
    }

    /* renamed from: a */
    public static Typeface m8601a(Context context, C0648a aVar, C0641f.AbstractC0642a aVar2, Handler handler, boolean z, int i, int i2) {
        String str = aVar.m8603f() + "-" + i2;
        Typeface typeface = f2917a.get(str);
        if (typeface != null) {
            if (aVar2 != null) {
                aVar2.mo1183a(typeface);
            }
            return typeface;
        } else if (!z || i != -1) {
            CallableC0653c cVar = new CallableC0653c(context, aVar, i2, str);
            if (z) {
                try {
                    return ((C0652c) f2920d.m8587a(cVar, i)).f2929a;
                } catch (InterruptedException e) {
                    return null;
                }
            } else {
                C0654d dVar = aVar2 == null ? null : new C0654d(aVar2, null);
                synchronized (f2918b) {
                    ArrayList<C0657g.AbstractC0658a<C0652c>> arrayList = f2919c.get(str);
                    if (arrayList != null) {
                        if (dVar != null) {
                            arrayList.add(dVar);
                        }
                        return null;
                    }
                    if (dVar != null) {
                        ArrayList<C0657g.AbstractC0658a<C0652c>> arrayList2 = new ArrayList<>();
                        arrayList2.add(dVar);
                        f2919c.put(str, arrayList2);
                    }
                    f2920d.m8586a(cVar, new C0655e(str));
                    return null;
                }
            }
        } else {
            C0652c a = m8602a(context, aVar, i2);
            if (aVar2 != null) {
                if (a.f2930b == 0) {
                    aVar2.m8638a(a.f2929a, (Handler) null);
                } else {
                    aVar2.m8639a(a.f2930b, (Handler) null);
                }
            }
            return a.f2929a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C0652c m8602a(Context context, C0648a aVar, int i) {
        ProviderInfo providerInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            Resources resources = context.getResources();
            String a = aVar.m8608a();
            ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(a, 0);
            if (resolveContentProvider == null) {
                throw new PackageManager.NameNotFoundException("No package found for authority: ".concat(String.valueOf(a)));
            } else if (resolveContentProvider.packageName.equals(aVar.m8607b())) {
                List<byte[]> a2 = m8597a(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
                Collections.sort(a2, f2921e);
                List<List<byte[]>> d = aVar.m8605d() != null ? aVar.m8605d() : C0633c.m8667a(resources, aVar.m8604e());
                int i2 = 0;
                while (true) {
                    if (i2 >= d.size()) {
                        providerInfo = null;
                        break;
                    }
                    ArrayList arrayList = new ArrayList(d.get(i2));
                    Collections.sort(arrayList, f2921e);
                    if (m8598a(a2, arrayList)) {
                        providerInfo = resolveContentProvider;
                        break;
                    }
                    i2++;
                }
                C0650a aVar2 = providerInfo == null ? new C0650a(1, null) : new C0650a(0, m8600a(context, aVar, providerInfo.authority));
                int i3 = -3;
                if (aVar2.m8596a() == 0) {
                    Typeface a3 = C0756c.m8265a(context, aVar2.m8595b(), i);
                    if (a3 != null) {
                        i3 = 0;
                    }
                    return new C0652c(a3, i3);
                }
                if (aVar2.m8596a() == 1) {
                    i3 = -2;
                }
                return new C0652c(null, i3);
            } else {
                throw new PackageManager.NameNotFoundException("Found content provider " + a + ", but package was not " + aVar.m8607b());
            }
        } catch (PackageManager.NameNotFoundException e) {
            return new C0652c(null, -1);
        }
    }

    /* renamed from: a */
    private static List<byte[]> m8597a(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    /* renamed from: a */
    public static Map<Uri, ByteBuffer> m8599a(Context context, C0651b[] bVarArr) {
        HashMap hashMap = new HashMap();
        for (C0651b bVar : bVarArr) {
            if (bVar.m8590e() == 0) {
                Uri a = bVar.m8594a();
                if (!hashMap.containsKey(a)) {
                    hashMap.put(a, C0771k.m8208a(context, a));
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: a */
    private static boolean m8598a(List<byte[]> list, List<byte[]> list2) {
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

    /* renamed from: a */
    private static C0651b[] m8600a(Context context, C0648a aVar, String str) {
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        Uri build = new Uri.Builder().scheme("content").authority(str).build();
        Uri build2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
        Cursor cursor2 = null;
        try {
            if (Build.VERSION.SDK_INT > 16) {
                cursor = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{aVar.m8606c()}, null, null);
            } else {
                cursor = context.getContentResolver().query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{aVar.m8606c()}, null);
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
                        arrayList3.add(new C0651b(columnIndex3 == -1 ? ContentUris.withAppendedId(build, cursor.getLong(columnIndex2)) : ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3)), columnIndex4 != -1 ? cursor.getInt(columnIndex4) : 0, columnIndex5 != -1 ? cursor.getInt(columnIndex5) : 400, columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1, i));
                    }
                    arrayList2 = arrayList3;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return (C0651b[]) arrayList2.toArray(new C0651b[0]);
        } catch (Throwable th) {
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }
}
