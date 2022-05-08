package kotlinx.coroutines.internal;

import com.facebook.stetho.common.Utf8Charset;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\bÀ\u0002\u0018��B\t\b\u0002¢\u0006\u0004\b'\u0010(J(\u0010\u0006\u001a\u0004\u0018\u00010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0004H\u0082\b¢\u0006\u0004\b\u0006\u0010\u0007J3\u0010\r\u001a\u00028��\"\u0004\b��\u0010\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u0001H\u0002¢\u0006\u0004\b\r\u0010\u000eJ1\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028��0\u000f\"\u0004\b��\u0010\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u00012\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00020\u000fH��¢\u0006\u0004\b\u0012\u0010\u0013J1\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028��0\u000f\"\u0004\b��\u0010\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u00012\u0006\u0010\u000b\u001a\u00020\nH��¢\u0006\u0004\b\u0015\u0010\u0011J\u001d\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u001d\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ.\u0010#\u001a\u00028��\"\u0004\b��\u0010\u001f*\u00020 2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00028��0!H\u0082\b¢\u0006\u0004\b#\u0010$R\u0016\u0010%\u001a\u00020\u00048\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006)"}, d2 = {"Lkotlinx/coroutines/internal/FastServiceLoader;", "Ljava/lang/Class;", "Lkotlinx/coroutines/internal/MainDispatcherFactory;", "baseClass", "", "serviceClass", "createInstanceOf", "(Ljava/lang/Class;Ljava/lang/String;)Lkotlinx/coroutines/internal/MainDispatcherFactory;", "S", "name", "Ljava/lang/ClassLoader;", "loader", "service", "getProviderInstance", "(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;", "", "load", "(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/List;", "loadMainDispatcherFactory$kotlinx_coroutines_core", "()Ljava/util/List;", "loadMainDispatcherFactory", "loadProviders$kotlinx_coroutines_core", "loadProviders", "Ljava/net/URL;", "url", "parse", "(Ljava/net/URL;)Ljava/util/List;", "Ljava/io/BufferedReader;", "r", "parseFile", "(Ljava/io/BufferedReader;)Ljava/util/List;", "R", "Ljava/util/jar/JarFile;", "Lkotlin/Function1;", "block", "use", "(Ljava/util/jar/JarFile;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "PREFIX", "Ljava/lang/String;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/FastServiceLoader.class */
public final class FastServiceLoader {

    /* renamed from: a */
    public static final FastServiceLoader f23907a = new FastServiceLoader();

    private FastServiceLoader() {
    }

    /* renamed from: a */
    private final <S> S m554a(String str, ClassLoader classLoader, Class<S> cls) {
        Class<?> cls2 = Class.forName(str, false, classLoader);
        if (cls.isAssignableFrom(cls2)) {
            return cls.cast(cls2.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        }
        throw new IllegalArgumentException(("Expected service of class " + cls + ", but found " + cls2).toString());
    }

    /* renamed from: b */
    private final <S> List<S> m553b(Class<S> cls, ClassLoader classLoader) {
        List<S> list;
        try {
            list = m551d(cls, classLoader);
        } catch (Throwable th) {
            list = CollectionsKt___CollectionsKt.m2133U(ServiceLoader.load(cls, classLoader));
        }
        return list;
    }

    /* renamed from: e */
    private final List<String> m550e(URL url) {
        boolean C;
        BufferedReader bufferedReader;
        String y0;
        String D0;
        String y02;
        String url2 = url.toString();
        C = StringsKt__StringsJVMKt.m1491C(url2, "jar", false, 2, null);
        if (C) {
            y0 = StringsKt__StringsKt.m1423y0(url2, "jar:file:", null, 2, null);
            D0 = StringsKt__StringsKt.m1472D0(y0, '!', null, 2, null);
            y02 = StringsKt__StringsKt.m1423y0(url2, "!/", null, 2, null);
            JarFile jarFile = new JarFile(D0, false);
            try {
                List<String> f = f23907a.m549f(new BufferedReader(new InputStreamReader(jarFile.getInputStream(new ZipEntry(y02)), Utf8Charset.NAME)));
                th = null;
                jarFile.close();
                return f;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        jarFile.close();
                        throw th2;
                    } catch (Throwable th3) {
                        ExceptionsKt__ExceptionsKt.m2491a(th, th3);
                        throw th;
                    }
                }
            }
        } else {
            try {
                th = null;
                return f23907a.m549f(new BufferedReader(new InputStreamReader(url.openStream())));
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
    }

    /* renamed from: f */
    private final List<String> m549f(BufferedReader bufferedReader) {
        List<String> U;
        String E0;
        CharSequence F0;
        boolean z;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                E0 = StringsKt__StringsKt.m1470E0(readLine, "#", null, 2, null);
                if (E0 != null) {
                    F0 = StringsKt__StringsKt.m1468F0(E0);
                    String obj = F0.toString();
                    boolean z2 = false;
                    int i = 0;
                    while (true) {
                        if (i >= obj.length()) {
                            z = true;
                            break;
                        }
                        char charAt = obj.charAt(i);
                        if (!(charAt == '.' || Character.isJavaIdentifierPart(charAt))) {
                            z = false;
                            break;
                        }
                        i++;
                    }
                    if (z) {
                        if (obj.length() > 0) {
                            z2 = true;
                        }
                        if (z2) {
                            linkedHashSet.add(obj);
                        }
                    } else {
                        throw new IllegalArgumentException(("Illegal service provider class name: " + obj).toString());
                    }
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
                }
            } else {
                U = CollectionsKt___CollectionsKt.m2133U(linkedHashSet);
                return U;
            }
        }
    }

    @NotNull
    /* renamed from: c */
    public final List<MainDispatcherFactory> m552c() {
        List<MainDispatcherFactory> list;
        MainDispatcherFactory mainDispatcherFactory;
        if (!FastServiceLoaderKt.m548a()) {
            return m553b(MainDispatcherFactory.class, MainDispatcherFactory.class.getClassLoader());
        }
        try {
            ArrayList arrayList = new ArrayList(2);
            MainDispatcherFactory mainDispatcherFactory2 = null;
            try {
                mainDispatcherFactory = (MainDispatcherFactory) MainDispatcherFactory.class.cast(Class.forName("kotlinx.coroutines.android.AndroidDispatcherFactory", true, MainDispatcherFactory.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } catch (ClassNotFoundException e) {
                mainDispatcherFactory = null;
            }
            if (mainDispatcherFactory != null) {
                arrayList.add(mainDispatcherFactory);
            }
            try {
                mainDispatcherFactory2 = (MainDispatcherFactory) MainDispatcherFactory.class.cast(Class.forName("kotlinx.coroutines.test.internal.TestMainDispatcherFactory", true, MainDispatcherFactory.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } catch (ClassNotFoundException e2) {
            }
            list = arrayList;
            if (mainDispatcherFactory2 != null) {
                arrayList.add(mainDispatcherFactory2);
                list = arrayList;
            }
        } catch (Throwable th) {
            list = m553b(MainDispatcherFactory.class, MainDispatcherFactory.class.getClassLoader());
        }
        return list;
    }

    @NotNull
    /* renamed from: d */
    public final <S> List<S> m551d(@NotNull Class<S> cls, @NotNull ClassLoader classLoader) {
        Set<String> X;
        int p;
        ArrayList<URL> list = Collections.list(classLoader.getResources("META-INF/services/" + cls.getName()));
        Intrinsics.m1831d(list, "java.util.Collections.list(this)");
        ArrayList arrayList = new ArrayList();
        for (URL url : list) {
            CollectionsKt__MutableCollectionsKt.m2159u(arrayList, f23907a.m550e(url));
        }
        X = CollectionsKt___CollectionsKt.m2130X(arrayList);
        if (!X.isEmpty()) {
            p = CollectionsKt__IterablesKt.m2164p(X, 10);
            ArrayList arrayList2 = new ArrayList(p);
            for (String str : X) {
                arrayList2.add(f23907a.m554a(str, classLoader, cls));
            }
            return arrayList2;
        }
        throw new IllegalArgumentException("No providers were loaded with FastServiceLoader".toString());
    }
}
