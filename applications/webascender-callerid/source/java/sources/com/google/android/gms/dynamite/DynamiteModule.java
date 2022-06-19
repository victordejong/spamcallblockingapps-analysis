package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.common.util.C0967h;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.AbstractC0986b;
import com.google.android.gms.dynamic.d;
import dalvik.system.DelegateLastClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule.class */
public final class DynamiteModule {

    /* renamed from: b */
    private static Boolean f3626b;

    /* renamed from: c */
    private static AbstractC0995h f3627c;

    /* renamed from: d */
    private static AbstractC0996j f3628d;

    /* renamed from: e */
    private static String f3629e;

    /* renamed from: f */
    private static int f3630f = -1;

    /* renamed from: g */
    private static final ThreadLocal<C0993b> f3631g = new ThreadLocal<>();

    /* renamed from: h */
    private static final AbstractC0990a.AbstractC0992b f3632h = new b();

    /* renamed from: i */
    public static final AbstractC0990a f3633i = new a();

    /* renamed from: j */
    public static final AbstractC0990a f3634j = new c();

    /* renamed from: k */
    public static final AbstractC0990a f3635k = new d();

    /* renamed from: l */
    public static final AbstractC0990a f3636l = new e();

    /* renamed from: a */
    private final Context f3637a;

    @DynamiteApi
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader.class */
    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$LoadingException.class */
    public static class LoadingException extends Exception {
        private LoadingException(String str) {
            super(str);
        }

        /* synthetic */ LoadingException(String str, b bVar) {
            this(str);
        }

        private LoadingException(String str, Throwable th) {
            super(str, th);
        }

        /* synthetic */ LoadingException(String str, Throwable th, b bVar) {
            this(str, th);
        }
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$a.class */
    public interface AbstractC0990a {

        /* renamed from: com.google.android.gms.dynamite.DynamiteModule$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$a$a.class */
        public static final class C0991a {

            /* renamed from: a */
            public int f3638a = 0;

            /* renamed from: b */
            public int f3639b = 0;

            /* renamed from: c */
            public int f3640c = 0;
        }

        /* renamed from: com.google.android.gms.dynamite.DynamiteModule$a$b */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$a$b.class */
        public interface AbstractC0992b {
            /* renamed from: a */
            int m3055a(Context context, String str, boolean z) throws LoadingException;

            /* renamed from: b */
            int m3054b(Context context, String str);
        }

        /* renamed from: a */
        C0991a m3056a(Context context, String str, AbstractC0992b abstractC0992b) throws LoadingException;
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$b.class */
    public static final class C0993b {

        /* renamed from: a */
        public Cursor f3641a;

        private C0993b() {
        }

        /* synthetic */ C0993b(b bVar) {
            this();
        }
    }

    private DynamiteModule(Context context) {
        C0931r.m3308k(context);
        this.f3637a = context;
    }

    /* renamed from: a */
    public static int m3070a(Context context, String str) {
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 61);
            sb.append("com.google.android.gms.dynamite.descriptors.");
            sb.append(str);
            sb.append(".ModuleDescriptor");
            Class<?> loadClass = classLoader.loadClass(sb.toString());
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (declaredField.get(null).equals(str)) {
                return declaredField2.getInt(null);
            }
            String valueOf = String.valueOf(declaredField.get(null));
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 51 + String.valueOf(str).length());
            sb2.append("Module descriptor id '");
            sb2.append(valueOf);
            sb2.append("' didn't match expected id '");
            sb2.append(str);
            sb2.append("'");
            Log.e("DynamiteModule", sb2.toString());
            return 0;
        } catch (ClassNotFoundException e) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 45);
            sb3.append("Local module descriptor class for ");
            sb3.append(str);
            sb3.append(" not found.");
            Log.w("DynamiteModule", sb3.toString());
            return 0;
        } catch (Exception e2) {
            String valueOf2 = String.valueOf(e2.getMessage());
            Log.e("DynamiteModule", valueOf2.length() != 0 ? "Failed to load module descriptor class: ".concat(valueOf2) : new String("Failed to load module descriptor class: "));
            return 0;
        }
    }

    /* renamed from: c */
    public static int m3068c(Context context, String str) {
        return m3065f(context, str, false);
    }

    /* renamed from: e */
    public static DynamiteModule m3066e(Context context, AbstractC0990a abstractC0990a, String str) throws LoadingException {
        ThreadLocal<C0993b> threadLocal = f3631g;
        C0993b c0993b = threadLocal.get();
        C0993b c0993b2 = new C0993b(null);
        threadLocal.set(c0993b2);
        try {
            AbstractC0990a.C0991a m3056a = abstractC0990a.m3056a(context, str, f3632h);
            int i = m3056a.f3638a;
            int i2 = m3056a.f3639b;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 68 + String.valueOf(str).length());
            sb.append("Considering local module ");
            sb.append(str);
            sb.append(":");
            sb.append(i);
            sb.append(" and remote module ");
            sb.append(str);
            sb.append(":");
            sb.append(i2);
            Log.i("DynamiteModule", sb.toString());
            int i3 = m3056a.f3640c;
            if (i3 == 0 || ((i3 == -1 && m3056a.f3638a == 0) || (i3 == 1 && m3056a.f3639b == 0))) {
                int i4 = m3056a.f3638a;
                int i5 = m3056a.f3639b;
                StringBuilder sb2 = new StringBuilder(91);
                sb2.append("No acceptable module found. Local version is ");
                sb2.append(i4);
                sb2.append(" and remote version is ");
                sb2.append(i5);
                sb2.append(".");
                throw new LoadingException(sb2.toString(), (b) null);
            } else if (i3 == -1) {
                DynamiteModule m3064g = m3064g(context, str);
                Cursor cursor = c0993b2.f3641a;
                if (cursor != null) {
                    cursor.close();
                }
                threadLocal.set(c0993b);
                return m3064g;
            } else if (i3 != 1) {
                int i6 = m3056a.f3640c;
                StringBuilder sb3 = new StringBuilder(47);
                sb3.append("VersionPolicy returned invalid code:");
                sb3.append(i6);
                throw new LoadingException(sb3.toString(), (b) null);
            } else {
                try {
                    DynamiteModule m3063h = m3063h(context, str, m3056a.f3639b);
                    Cursor cursor2 = c0993b2.f3641a;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    threadLocal.set(c0993b);
                    return m3063h;
                } catch (LoadingException e) {
                    String valueOf = String.valueOf(e.getMessage());
                    Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to load remote module: ".concat(valueOf) : new String("Failed to load remote module: "));
                    int i7 = m3056a.f3638a;
                    if (i7 == 0 || abstractC0990a.m3056a(context, str, new c(i7, 0)).f3640c != -1) {
                        throw new LoadingException("Remote load failed. No local fallback found.", e, null);
                    }
                    DynamiteModule m3064g2 = m3064g(context, str);
                    Cursor cursor3 = c0993b2.f3641a;
                    if (cursor3 != null) {
                        cursor3.close();
                    }
                    f3631g.set(c0993b);
                    return m3064g2;
                }
            }
        } catch (Throwable th) {
            Cursor cursor4 = c0993b2.f3641a;
            if (cursor4 != null) {
                cursor4.close();
            }
            f3631g.set(c0993b);
            throw th;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x01b1 -> B:17:0x0052). Please submit an issue!!! */
    /* renamed from: f */
    public static int m3065f(Context context, String str, boolean z) {
        Field declaredField;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = f3626b;
                Boolean bool2 = bool;
                if (bool == null) {
                    try {
                        declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
                        String valueOf = String.valueOf(e);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 30);
                        sb.append("Failed to load module via V2: ");
                        sb.append(valueOf);
                        Log.w("DynamiteModule", sb.toString());
                        bool2 = Boolean.FALSE;
                    }
                    synchronized (declaredField.getDeclaringClass()) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader != null) {
                            if (classLoader == ClassLoader.getSystemClassLoader()) {
                                bool2 = Boolean.FALSE;
                            } else {
                                try {
                                    m3060k(classLoader);
                                } catch (LoadingException e2) {
                                }
                                bool2 = Boolean.TRUE;
                            }
                        } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool2 = Boolean.FALSE;
                        } else {
                            try {
                                int m3057n = m3057n(context, str, z);
                                String str2 = f3629e;
                                if (str2 != null && !str2.isEmpty()) {
                                    ClassLoader delegateLastClassLoader = Build.VERSION.SDK_INT >= 29 ? new DelegateLastClassLoader(f3629e, ClassLoader.getSystemClassLoader()) : new C0994f(f3629e, ClassLoader.getSystemClassLoader());
                                    m3060k(delegateLastClassLoader);
                                    declaredField.set(null, delegateLastClassLoader);
                                    f3626b = Boolean.TRUE;
                                    return m3057n;
                                }
                                return m3057n;
                            } catch (LoadingException e3) {
                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                                bool2 = Boolean.FALSE;
                            }
                        }
                        f3626b = bool2;
                    }
                }
                if (!bool2.booleanValue()) {
                    return m3059l(context, str, z);
                }
                try {
                    return m3057n(context, str, z);
                } catch (LoadingException e4) {
                    String valueOf2 = String.valueOf(e4.getMessage());
                    Log.w("DynamiteModule", valueOf2.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf2) : new String("Failed to retrieve remote module version: "));
                    return 0;
                }
            }
        } catch (Throwable th) {
            C0967h.m3161a(context, th);
            throw th;
        }
    }

    /* renamed from: g */
    private static DynamiteModule m3064g(Context context, String str) {
        String valueOf = String.valueOf(str);
        Log.i("DynamiteModule", valueOf.length() != 0 ? "Selected local version of ".concat(valueOf) : new String("Selected local version of "));
        return new DynamiteModule(context.getApplicationContext());
    }

    /* renamed from: h */
    private static DynamiteModule m3063h(Context context, String str, int i) throws LoadingException {
        Boolean bool;
        AbstractC0986b abstractC0986b;
        try {
            synchronized (DynamiteModule.class) {
                bool = f3626b;
            }
            if (bool == null) {
                throw new LoadingException("Failed to determine which loading route to use.", (b) null);
            }
            if (bool.booleanValue()) {
                return m3058m(context, str, i);
            }
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
            sb.append("Selected remote version of ");
            sb.append(str);
            sb.append(", version >= ");
            sb.append(i);
            Log.i("DynamiteModule", sb.toString());
            AbstractC0995h m3062i = m3062i(context);
            if (m3062i == null) {
                throw new LoadingException("Failed to create IDynamiteLoader.", (b) null);
            }
            if (m3062i.m3050a() >= 2) {
                abstractC0986b = m3062i.m3051L1(d.F(context), str, i);
            } else {
                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                abstractC0986b = m3062i.m3053A0(d.F(context), str, i);
            }
            if (d.B(abstractC0986b) == null) {
                throw new LoadingException("Failed to load remote module.", (b) null);
            }
            return new DynamiteModule((Context) d.B(abstractC0986b));
        } catch (RemoteException e) {
            throw new LoadingException("Failed to load remote module.", e, null);
        } catch (LoadingException e2) {
            throw e2;
        } catch (Throwable th) {
            C0967h.m3161a(context, th);
            throw new LoadingException("Failed to load remote module.", th, null);
        }
    }

    /* renamed from: i */
    private static AbstractC0995h m3062i(Context context) {
        AbstractC0995h abstractC0995h;
        synchronized (DynamiteModule.class) {
            try {
                AbstractC0995h abstractC0995h2 = f3627c;
                if (abstractC0995h2 != null) {
                    return abstractC0995h2;
                }
                try {
                    IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                    if (iBinder == null) {
                        abstractC0995h = null;
                    } else {
                        g queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                        abstractC0995h = queryLocalInterface instanceof AbstractC0995h ? (AbstractC0995h) queryLocalInterface : new g(iBinder);
                    }
                    if (abstractC0995h != null) {
                        f3627c = abstractC0995h;
                        return abstractC0995h;
                    }
                } catch (Exception e) {
                    String valueOf = String.valueOf(e.getMessage());
                    Log.e("DynamiteModule", valueOf.length() != 0 ? "Failed to load IDynamiteLoader from GmsCore: ".concat(valueOf) : new String("Failed to load IDynamiteLoader from GmsCore: "));
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: j */
    private static Boolean m3061j() {
        boolean z;
        synchronized (DynamiteModule.class) {
            try {
                z = f3630f >= 2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: k */
    private static void m3060k(ClassLoader classLoader) throws LoadingException {
        AbstractC0996j abstractC0996j;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                abstractC0996j = null;
            } else {
                i queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                abstractC0996j = queryLocalInterface instanceof AbstractC0996j ? (AbstractC0996j) queryLocalInterface : new i(iBinder);
            }
            f3628d = abstractC0996j;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new LoadingException("Failed to instantiate dynamite loader", e, null);
        }
    }

    /* renamed from: l */
    private static int m3059l(Context context, String str, boolean z) {
        AbstractC0995h m3062i = m3062i(context);
        if (m3062i == null) {
            return 0;
        }
        try {
            if (m3062i.m3050a() >= 2) {
                return m3062i.m3049i1(d.F(context), str, z);
            }
            Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
            return m3062i.m3052F1(d.F(context), str, z);
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf) : new String("Failed to retrieve remote module version: "));
            return 0;
        }
    }

    /* renamed from: m */
    private static DynamiteModule m3058m(Context context, String str, int i) throws LoadingException, RemoteException {
        AbstractC0996j abstractC0996j;
        AbstractC0986b abstractC0986b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
        sb.append("Selected remote version of ");
        sb.append(str);
        sb.append(", version >= ");
        sb.append(i);
        Log.i("DynamiteModule", sb.toString());
        synchronized (DynamiteModule.class) {
            try {
                abstractC0996j = f3628d;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (abstractC0996j != null) {
            C0993b c0993b = f3631g.get();
            if (c0993b == null || c0993b.f3641a == null) {
                throw new LoadingException("No result cursor", (b) null);
            }
            Context applicationContext = context.getApplicationContext();
            Cursor cursor = c0993b.f3641a;
            d.F((Object) null);
            if (m3061j().booleanValue()) {
                Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                abstractC0986b = abstractC0996j.m3047f0(d.F(applicationContext), str, i, d.F(cursor));
            } else {
                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                abstractC0986b = abstractC0996j.m3048e0(d.F(applicationContext), str, i, d.F(cursor));
            }
            Context context2 = (Context) d.B(abstractC0986b);
            if (context2 == null) {
                throw new LoadingException("Failed to get module context", (b) null);
            }
            return new DynamiteModule(context2);
        }
        throw new LoadingException("DynamiteLoaderV2 was not cached.", (b) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x012b  */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m3057n(android.content.Context r7, java.lang.String r8, boolean r9) throws com.google.android.gms.dynamite.DynamiteModule.LoadingException {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.m3057n(android.content.Context, java.lang.String, boolean):int");
    }

    /* renamed from: b */
    public final Context m3069b() {
        return this.f3637a;
    }

    /* renamed from: d */
    public final IBinder m3067d(String str) throws LoadingException {
        try {
            return (IBinder) this.f3637a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            String valueOf = String.valueOf(str);
            throw new LoadingException(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e, null);
        }
    }
}
