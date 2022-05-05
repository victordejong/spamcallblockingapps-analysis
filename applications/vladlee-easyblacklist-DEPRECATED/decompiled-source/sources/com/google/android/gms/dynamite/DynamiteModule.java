package com.google.android.gms.dynamite;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule.class */
public final class DynamiteModule {

    /* renamed from: a */
    private static Boolean f7048a;

    /* renamed from: b */
    private static zzi f7049b;

    /* renamed from: c */
    private static zzk f7050c;

    /* renamed from: d */
    private static String f7051d;

    /* renamed from: e */
    private static int f7052e = -1;

    /* renamed from: i */
    private final Context f7056i;

    /* renamed from: f */
    private static final ThreadLocal<C1698a> f7053f = new ThreadLocal<>();

    /* renamed from: g */
    private static final VersionPolicy.zza f7054g = new C1700a();
    public static final VersionPolicy PREFER_REMOTE = new C1701b();
    public static final VersionPolicy PREFER_LOCAL = new C1702c();
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION = new C1703d();
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING = new C1704e();
    public static final VersionPolicy PREFER_HIGHEST_OR_REMOTE_VERSION = new C1705f();

    /* renamed from: h */
    private static final VersionPolicy f7055h = new C1706g();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader.class */
    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$LoadingException.class */
    public static class LoadingException extends Exception {
        private LoadingException(String str) {
            super(str);
        }

        /* synthetic */ LoadingException(String str, byte b) {
            this(str);
        }

        private LoadingException(String str, Throwable th) {
            super(str, th);
        }

        /* synthetic */ LoadingException(String str, Throwable th, byte b) {
            this(str, th);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$VersionPolicy.class */
    public interface VersionPolicy {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza.class */
        public interface zza {
            int getLocalVersion(Context context, String str);

            int zza(Context context, String str, boolean z);
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb.class */
        public static final class zzb {
            public int zzir = 0;
            public int zzis = 0;
            public int zzit = 0;
        }

        zzb zza(Context context, String str, zza zzaVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$a.class */
    public static final class C1698a {

        /* renamed from: a */
        public Cursor f7057a;

        private C1698a() {
        }

        /* synthetic */ C1698a(byte b) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$b.class */
    public static final class C1699b implements VersionPolicy.zza {

        /* renamed from: a */
        private final int f7058a;

        /* renamed from: b */
        private final int f7059b = 0;

        public C1699b(int i) {
            this.f7058a = i;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy.zza
        public final int getLocalVersion(Context context, String str) {
            return this.f7058a;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy.zza
        public final int zza(Context context, String str, boolean z) {
            return 0;
        }
    }

    private DynamiteModule(Context context) {
        this.f7056i = (Context) Preconditions.checkNotNull(context);
    }

    /* renamed from: a */
    private static int m5535a(Context context, String str, boolean z) {
        zzi a = m5538a(context);
        if (a == null) {
            return 0;
        }
        try {
            if (a.zzak() >= 2) {
                return a.zzb(ObjectWrapper.wrap(context), str, z);
            }
            Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
            return a.zza(ObjectWrapper.wrap(context), str, z);
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf) : new String("Failed to retrieve remote module version: "));
            return 0;
        }
    }

    /* renamed from: a */
    private static DynamiteModule m5537a(Context context, String str) {
        String valueOf = String.valueOf(str);
        Log.i("DynamiteModule", valueOf.length() != 0 ? "Selected local version of ".concat(valueOf) : new String("Selected local version of "));
        return new DynamiteModule(context.getApplicationContext());
    }

    /* renamed from: a */
    private static DynamiteModule m5536a(Context context, String str, int i) {
        Boolean bool;
        IObjectWrapper iObjectWrapper;
        try {
            synchronized (DynamiteModule.class) {
                try {
                    bool = f7048a;
                } finally {
                }
            }
            if (bool == null) {
                throw new LoadingException("Failed to determine which loading route to use.", (byte) 0);
            } else if (bool.booleanValue()) {
                return m5533b(context, str, i);
            } else {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
                sb.append("Selected remote version of ");
                sb.append(str);
                sb.append(", version >= ");
                sb.append(i);
                Log.i("DynamiteModule", sb.toString());
                zzi a = m5538a(context);
                if (a != null) {
                    if (a.zzak() >= 2) {
                        iObjectWrapper = a.zzb(ObjectWrapper.wrap(context), str, i);
                    } else {
                        Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                        iObjectWrapper = a.zza(ObjectWrapper.wrap(context), str, i);
                    }
                    if (ObjectWrapper.unwrap(iObjectWrapper) != null) {
                        return new DynamiteModule((Context) ObjectWrapper.unwrap(iObjectWrapper));
                    }
                    throw new LoadingException("Failed to load remote module.", (byte) 0);
                }
                throw new LoadingException("Failed to create IDynamiteLoader.", (byte) 0);
            }
        } catch (RemoteException e) {
            throw new LoadingException("Failed to load remote module.", e, (byte) 0);
        } catch (LoadingException e2) {
            throw e2;
        } catch (Throwable th) {
            CrashUtils.addDynamiteErrorToDropBox(context, th);
            throw new LoadingException("Failed to load remote module.", th, (byte) 0);
        }
    }

    /* renamed from: a */
    private static zzi m5538a(Context context) {
        zzi zziVar;
        synchronized (DynamiteModule.class) {
            try {
                if (f7049b != null) {
                    return f7049b;
                } else if (GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context) != 0) {
                    return null;
                } else {
                    try {
                        IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                        if (iBinder == null) {
                            zziVar = null;
                        } else {
                            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                            zziVar = queryLocalInterface instanceof zzi ? (zzi) queryLocalInterface : new zzj(iBinder);
                        }
                        if (zziVar != null) {
                            f7049b = zziVar;
                            return zziVar;
                        }
                    } catch (Exception e) {
                        String valueOf = String.valueOf(e.getMessage());
                        Log.e("DynamiteModule", valueOf.length() != 0 ? "Failed to load IDynamiteLoader from GmsCore: ".concat(valueOf) : new String("Failed to load IDynamiteLoader from GmsCore: "));
                    }
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    private static Boolean m5539a() {
        boolean z;
        synchronized (DynamiteModule.class) {
            try {
                z = f7052e >= 2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: a */
    private static void m5534a(ClassLoader classLoader) {
        zzk zzkVar;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                zzkVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                zzkVar = queryLocalInterface instanceof zzk ? (zzk) queryLocalInterface : new zzl(iBinder);
            }
            f7050c = zzkVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new LoadingException("Failed to instantiate dynamite loader", e, (byte) 0);
        }
    }

    /* renamed from: b */
    private static int m5532b(Context context, String str, boolean z) {
        Throwable th;
        Exception e;
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                ContentResolver contentResolver = context.getContentResolver();
                String str2 = z ? "api_force_staging" : "api";
                StringBuilder sb = new StringBuilder(str2.length() + 42 + String.valueOf(str).length());
                sb.append("content://com.google.android.gms.chimera/");
                sb.append(str2);
                sb.append("/");
                sb.append(str);
                cursor = contentResolver.query(Uri.parse(sb.toString()), null, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            int i = cursor.getInt(0);
                            Cursor cursor3 = cursor;
                            if (i > 0) {
                                synchronized (DynamiteModule.class) {
                                    try {
                                        f7051d = cursor.getString(2);
                                        int columnIndex = cursor.getColumnIndex("loaderVersion");
                                        if (columnIndex >= 0) {
                                            f7052e = cursor.getInt(columnIndex);
                                        }
                                    } catch (Throwable th2) {
                                        throw th2;
                                    }
                                }
                                C1698a aVar = f7053f.get();
                                cursor3 = cursor;
                                if (aVar != null) {
                                    cursor3 = cursor;
                                    if (aVar.f7057a == null) {
                                        aVar.f7057a = cursor;
                                        cursor3 = null;
                                    }
                                }
                            }
                            if (cursor3 != null) {
                                cursor3.close();
                            }
                            return i;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        if (e instanceof LoadingException) {
                            throw e;
                        }
                        throw new LoadingException("V2 version check failed", e, (byte) 0);
                    } catch (Throwable th3) {
                        th = th3;
                        cursor2 = cursor;
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        throw th;
                    }
                }
                Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                throw new LoadingException("Failed to connect to dynamite module ContentResolver.", (byte) 0);
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* renamed from: b */
    private static DynamiteModule m5533b(Context context, String str, int i) {
        zzk zzkVar;
        IObjectWrapper iObjectWrapper;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
        sb.append("Selected remote version of ");
        sb.append(str);
        sb.append(", version >= ");
        sb.append(i);
        Log.i("DynamiteModule", sb.toString());
        synchronized (DynamiteModule.class) {
            try {
                zzkVar = f7050c;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zzkVar != null) {
            C1698a aVar = f7053f.get();
            if (aVar == null || aVar.f7057a == null) {
                throw new LoadingException("No result cursor", (byte) 0);
            }
            Context applicationContext = context.getApplicationContext();
            Cursor cursor = aVar.f7057a;
            ObjectWrapper.wrap(null);
            if (m5539a().booleanValue()) {
                Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                iObjectWrapper = zzkVar.zzb(ObjectWrapper.wrap(applicationContext), str, i, ObjectWrapper.wrap(cursor));
            } else {
                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                iObjectWrapper = zzkVar.zza(ObjectWrapper.wrap(applicationContext), str, i, ObjectWrapper.wrap(cursor));
            }
            Context context2 = (Context) ObjectWrapper.unwrap(iObjectWrapper);
            if (context2 != null) {
                return new DynamiteModule(context2);
            }
            throw new LoadingException("Failed to get module context", (byte) 0);
        }
        throw new LoadingException("DynamiteLoaderV2 was not cached.", (byte) 0);
    }

    public static int getLocalVersion(Context context, String str) {
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

    public static int getRemoteVersion(Context context, String str) {
        return zza(context, str, false);
    }

    /* JADX WARN: Finally extract failed */
    public static DynamiteModule load(Context context, VersionPolicy versionPolicy, String str) {
        DynamiteModule dynamiteModule;
        DynamiteModule a;
        C1698a aVar = f7053f.get();
        C1698a aVar2 = new C1698a((byte) 0);
        f7053f.set(aVar2);
        try {
            VersionPolicy.zzb zza = versionPolicy.zza(context, str, f7054g);
            int i = zza.zzir;
            int i2 = zza.zzis;
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
            if (zza.zzit == 0 || ((zza.zzit == -1 && zza.zzir == 0) || (zza.zzit == 1 && zza.zzis == 0))) {
                int i3 = zza.zzir;
                int i4 = zza.zzis;
                StringBuilder sb2 = new StringBuilder(91);
                sb2.append("No acceptable module found. Local version is ");
                sb2.append(i3);
                sb2.append(" and remote version is ");
                sb2.append(i4);
                sb2.append(".");
                throw new LoadingException(sb2.toString(), (byte) 0);
            } else if (zza.zzit == -1) {
                DynamiteModule a2 = m5537a(context, str);
                dynamiteModule = a2;
                if (aVar2.f7057a != null) {
                    dynamiteModule = a2;
                    aVar2.f7057a.close();
                }
                f7053f.set(aVar);
                return dynamiteModule;
            } else if (zza.zzit == 1) {
                try {
                    a = m5536a(context, str, zza.zzis);
                    dynamiteModule = a;
                } catch (LoadingException e) {
                    String valueOf = String.valueOf(e.getMessage());
                    Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to load remote module: ".concat(valueOf) : new String("Failed to load remote module: "));
                    if (zza.zzir == 0 || versionPolicy.zza(context, str, new C1699b(zza.zzir)).zzit != -1) {
                        throw new LoadingException("Remote load failed. No local fallback found.", e, (byte) 0);
                    }
                    DynamiteModule a3 = m5537a(context, str);
                    dynamiteModule = a3;
                    if (aVar2.f7057a != null) {
                        dynamiteModule = a3;
                    }
                }
                if (aVar2.f7057a != null) {
                    dynamiteModule = a;
                    aVar2.f7057a.close();
                }
                f7053f.set(aVar);
                return dynamiteModule;
            } else {
                int i5 = zza.zzit;
                StringBuilder sb3 = new StringBuilder(47);
                sb3.append("VersionPolicy returned invalid code:");
                sb3.append(i5);
                throw new LoadingException(sb3.toString(), (byte) 0);
            }
        } catch (Throwable th) {
            if (aVar2.f7057a != null) {
                aVar2.f7057a.close();
            }
            f7053f.set(aVar);
            throw th;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:75:0x017e -> B:18:0x004e). Please submit an issue!!! */
    public static int zza(Context context, String str, boolean z) {
        Class<?> loadClass;
        Field declaredField;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = f7048a;
                Boolean bool2 = bool;
                if (bool == null) {
                    try {
                        loadClass = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName());
                        declaredField = loadClass.getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
                        String valueOf = String.valueOf(e);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 30);
                        sb.append("Failed to load module via V2: ");
                        sb.append(valueOf);
                        Log.w("DynamiteModule", sb.toString());
                        bool2 = Boolean.FALSE;
                    }
                    synchronized (loadClass) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader != null) {
                            if (classLoader != ClassLoader.getSystemClassLoader()) {
                                try {
                                    m5534a(classLoader);
                                } catch (LoadingException e2) {
                                }
                                bool2 = Boolean.TRUE;
                                f7048a = bool2;
                            }
                        } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                        } else {
                            try {
                                int b = m5532b(context, str, z);
                                if (f7051d != null && !f7051d.isEmpty()) {
                                    C1707h hVar = new C1707h(f7051d, ClassLoader.getSystemClassLoader());
                                    m5534a(hVar);
                                    declaredField.set(null, hVar);
                                    f7048a = Boolean.TRUE;
                                    return b;
                                }
                                return b;
                            } catch (LoadingException e3) {
                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                            }
                        }
                        bool2 = Boolean.FALSE;
                        f7048a = bool2;
                    }
                }
                if (!bool2.booleanValue()) {
                    return m5535a(context, str, z);
                }
                try {
                    return m5532b(context, str, z);
                } catch (LoadingException e4) {
                    String valueOf2 = String.valueOf(e4.getMessage());
                    Log.w("DynamiteModule", valueOf2.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf2) : new String("Failed to retrieve remote module version: "));
                    return 0;
                }
            }
        } catch (Throwable th) {
            CrashUtils.addDynamiteErrorToDropBox(context, th);
            throw th;
        }
    }

    public final Context getModuleContext() {
        return this.f7056i;
    }

    public final IBinder instantiate(String str) {
        try {
            return (IBinder) this.f7056i.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            String valueOf = String.valueOf(str);
            throw new LoadingException(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e, (byte) 0);
        }
    }
}
