package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import javax.annotation.concurrent.GuardedBy;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule.class */
public final class DynamiteModule {
    @GuardedBy("DynamiteModule.class")
    private static Boolean zzid;
    @GuardedBy("DynamiteModule.class")
    private static zzi zzie;
    @GuardedBy("DynamiteModule.class")
    private static zzk zzif;
    @GuardedBy("DynamiteModule.class")
    private static String zzig;
    @GuardedBy("DynamiteModule.class")
    private static int zzih = -1;
    private final Context zzim;
    private static final ThreadLocal<zza> zzii = new ThreadLocal<>();
    private static final VersionPolicy.zza zzij = new com.google.android.gms.dynamite.zza();
    @KeepForSdk
    public static final VersionPolicy PREFER_REMOTE = new com.google.android.gms.dynamite.zzb();
    private static final VersionPolicy zzik = new zzc();
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION = new zzd();
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING = new zze();
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_REMOTE_VERSION = new zzf();
    private static final VersionPolicy zzil = new zzg();

    @DynamiteApi
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader.class */
    public static class DynamiteLoaderClassLoader {
        @GuardedBy("DynamiteLoaderClassLoader.class")
        public static ClassLoader sClassLoader;
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$LoadingException.class */
    public static class LoadingException extends Exception {
        private LoadingException(String str) {
            super(str);
        }

        /* synthetic */ LoadingException(String str, com.google.android.gms.dynamite.zza zzaVar) {
            this(str);
        }

        private LoadingException(String str, Throwable th) {
            super(str, th);
        }

        /* synthetic */ LoadingException(String str, Throwable th, com.google.android.gms.dynamite.zza zzaVar) {
            this(str, th);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$VersionPolicy.class */
    public interface VersionPolicy {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza.class */
        public interface zza {
            int getLocalVersion(Context context, String str);

            int zza(Context context, String str, boolean z) throws LoadingException;
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb.class */
        public static final class zzb {
            public int zziq = 0;
            public int zzir = 0;
            public int zzis = 0;
        }

        zzb zza(Context context, String str, zza zzaVar) throws LoadingException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$zza.class */
    public static final class zza {
        public Cursor zzin;

        private zza() {
        }

        /* synthetic */ zza(com.google.android.gms.dynamite.zza zzaVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/DynamiteModule$zzb.class */
    public static final class zzb implements VersionPolicy.zza {
        private final int zzio;
        private final int zzip = 0;

        public zzb(int i, int i2) {
            this.zzio = i;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy.zza
        public final int getLocalVersion(Context context, String str) {
            return this.zzio;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy.zza
        public final int zza(Context context, String str, boolean z) {
            return 0;
        }
    }

    private DynamiteModule(Context context) {
        this.zzim = (Context) Preconditions.checkNotNull(context);
    }

    @KeepForSdk
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

    @KeepForSdk
    public static int getRemoteVersion(Context context, String str) {
        return zza(context, str, false);
    }

    @KeepForSdk
    public static DynamiteModule load(Context context, VersionPolicy versionPolicy, String str) throws LoadingException {
        zza zzaVar = zzii.get();
        zza zzaVar2 = new zza(null);
        zzii.set(zzaVar2);
        try {
            VersionPolicy.zzb zza2 = versionPolicy.zza(context, str, zzij);
            int i = zza2.zziq;
            int i2 = zza2.zzir;
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
            if (!(zza2.zzis == 0 || ((zza2.zzis == -1 && zza2.zziq == 0) || (zza2.zzis == 1 && zza2.zzir == 0)))) {
                if (zza2.zzis == -1) {
                    DynamiteModule zze = zze(context, str);
                    if (zzaVar2.zzin != null) {
                        zzaVar2.zzin.close();
                    }
                    zzii.set(zzaVar);
                    return zze;
                } else if (zza2.zzis == 1) {
                    try {
                        DynamiteModule zza3 = zza(context, str, zza2.zzir);
                        if (zzaVar2.zzin != null) {
                            zzaVar2.zzin.close();
                        }
                        zzii.set(zzaVar);
                        return zza3;
                    } catch (LoadingException e) {
                        String valueOf = String.valueOf(e.getMessage());
                        Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to load remote module: ".concat(valueOf) : new String("Failed to load remote module: "));
                        if (zza2.zziq == 0 || versionPolicy.zza(context, str, new zzb(zza2.zziq, 0)).zzis != -1) {
                            throw new LoadingException("Remote load failed. No local fallback found.", e, null);
                        }
                        DynamiteModule zze2 = zze(context, str);
                        if (zzaVar2.zzin != null) {
                            zzaVar2.zzin.close();
                        }
                        zzii.set(zzaVar);
                        return zze2;
                    }
                } else {
                    int i3 = zza2.zzis;
                    StringBuilder sb2 = new StringBuilder(47);
                    sb2.append("VersionPolicy returned invalid code:");
                    sb2.append(i3);
                    throw new LoadingException(sb2.toString(), (com.google.android.gms.dynamite.zza) null);
                }
            }
            int i4 = zza2.zziq;
            int i5 = zza2.zzir;
            StringBuilder sb3 = new StringBuilder(91);
            sb3.append("No acceptable module found. Local version is ");
            sb3.append(i4);
            sb3.append(" and remote version is ");
            sb3.append(i5);
            sb3.append(".");
            throw new LoadingException(sb3.toString(), (com.google.android.gms.dynamite.zza) null);
        } catch (Throwable th) {
            if (zzaVar2.zzin != null) {
                zzaVar2.zzin.close();
            }
            zzii.set(zzaVar);
            throw th;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:74:0x0186 -> B:17:0x004e). Please submit an issue!!! */
    public static int zza(Context context, String str, boolean z) {
        Class<?> loadClass;
        Field declaredField;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = zzid;
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
                            if (classLoader == ClassLoader.getSystemClassLoader()) {
                                bool2 = Boolean.FALSE;
                            } else {
                                try {
                                    zza(classLoader);
                                } catch (LoadingException e2) {
                                }
                                bool2 = Boolean.TRUE;
                            }
                        } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool2 = Boolean.FALSE;
                        } else {
                            try {
                                int zzc = zzc(context, str, z);
                                if (zzig != null && !zzig.isEmpty()) {
                                    zzh zzhVar = new zzh(zzig, ClassLoader.getSystemClassLoader());
                                    zza(zzhVar);
                                    declaredField.set(null, zzhVar);
                                    zzid = Boolean.TRUE;
                                    return zzc;
                                }
                                return zzc;
                            } catch (LoadingException e3) {
                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                                bool2 = Boolean.FALSE;
                            }
                        }
                        zzid = bool2;
                    }
                }
                if (!bool2.booleanValue()) {
                    return zzb(context, str, z);
                }
                try {
                    return zzc(context, str, z);
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

    private static Context zza(Context context, String str, int i, Cursor cursor, zzk zzkVar) {
        IObjectWrapper iObjectWrapper;
        try {
            ObjectWrapper.wrap(null);
            if (zzai().booleanValue()) {
                Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                iObjectWrapper = zzkVar.zzb(ObjectWrapper.wrap(context), str, i, ObjectWrapper.wrap(cursor));
            } else {
                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                iObjectWrapper = zzkVar.zza(ObjectWrapper.wrap(context), str, i, ObjectWrapper.wrap(cursor));
            }
            return (Context) ObjectWrapper.unwrap(iObjectWrapper);
        } catch (Exception e) {
            String valueOf = String.valueOf(e.toString());
            Log.e("DynamiteModule", valueOf.length() != 0 ? "Failed to load DynamiteLoader: ".concat(valueOf) : new String("Failed to load DynamiteLoader: "));
            return null;
        }
    }

    private static DynamiteModule zza(Context context, String str, int i) throws LoadingException {
        Boolean bool;
        try {
            synchronized (DynamiteModule.class) {
                bool = zzid;
            }
            if (bool != null) {
                return bool.booleanValue() ? zzc(context, str, i) : zzb(context, str, i);
            }
            throw new LoadingException("Failed to determine which loading route to use.", (com.google.android.gms.dynamite.zza) null);
        } catch (Throwable th) {
            CrashUtils.addDynamiteErrorToDropBox(context, th);
            throw th;
        }
    }

    @GuardedBy("DynamiteModule.class")
    private static void zza(ClassLoader classLoader) throws LoadingException {
        zzk zzkVar;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                zzkVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                zzkVar = queryLocalInterface instanceof zzk ? (zzk) queryLocalInterface : new zzl(iBinder);
            }
            zzif = zzkVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new LoadingException("Failed to instantiate dynamite loader", e, null);
        }
    }

    private static Boolean zzai() {
        boolean z;
        synchronized (DynamiteModule.class) {
            try {
                z = zzih >= 2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return Boolean.valueOf(z);
    }

    private static int zzb(Context context, String str, boolean z) {
        zzi zzj = zzj(context);
        if (zzj == null) {
            return 0;
        }
        try {
            if (zzj.zzaj() >= 2) {
                return zzj.zzb(ObjectWrapper.wrap(context), str, z);
            }
            Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
            return zzj.zza(ObjectWrapper.wrap(context), str, z);
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf) : new String("Failed to retrieve remote module version: "));
            return 0;
        }
    }

    private static DynamiteModule zzb(Context context, String str, int i) throws LoadingException {
        IObjectWrapper iObjectWrapper;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
        sb.append("Selected remote version of ");
        sb.append(str);
        sb.append(", version >= ");
        sb.append(i);
        Log.i("DynamiteModule", sb.toString());
        zzi zzj = zzj(context);
        if (zzj == null) {
            throw new LoadingException("Failed to create IDynamiteLoader.", (com.google.android.gms.dynamite.zza) null);
        }
        try {
            if (zzj.zzaj() >= 2) {
                iObjectWrapper = zzj.zzb(ObjectWrapper.wrap(context), str, i);
            } else {
                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                iObjectWrapper = zzj.zza(ObjectWrapper.wrap(context), str, i);
            }
            if (ObjectWrapper.unwrap(iObjectWrapper) != null) {
                return new DynamiteModule((Context) ObjectWrapper.unwrap(iObjectWrapper));
            }
            throw new LoadingException("Failed to load remote module.", (com.google.android.gms.dynamite.zza) null);
        } catch (RemoteException e) {
            throw new LoadingException("Failed to load remote module.", e, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0133  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int zzc(android.content.Context r7, java.lang.String r8, boolean r9) throws com.google.android.gms.dynamite.DynamiteModule.LoadingException {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.zzc(android.content.Context, java.lang.String, boolean):int");
    }

    private static DynamiteModule zzc(Context context, String str, int i) throws LoadingException {
        zzk zzkVar;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
        sb.append("Selected remote version of ");
        sb.append(str);
        sb.append(", version >= ");
        sb.append(i);
        Log.i("DynamiteModule", sb.toString());
        synchronized (DynamiteModule.class) {
            try {
                zzkVar = zzif;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zzkVar == null) {
            throw new LoadingException("DynamiteLoaderV2 was not cached.", (com.google.android.gms.dynamite.zza) null);
        }
        zza zzaVar = zzii.get();
        if (zzaVar == null || zzaVar.zzin == null) {
            throw new LoadingException("No result cursor", (com.google.android.gms.dynamite.zza) null);
        }
        Context zza2 = zza(context.getApplicationContext(), str, i, zzaVar.zzin, zzkVar);
        if (zza2 != null) {
            return new DynamiteModule(zza2);
        }
        throw new LoadingException("Failed to get module context", (com.google.android.gms.dynamite.zza) null);
    }

    private static DynamiteModule zze(Context context, String str) {
        String valueOf = String.valueOf(str);
        Log.i("DynamiteModule", valueOf.length() != 0 ? "Selected local version of ".concat(valueOf) : new String("Selected local version of "));
        return new DynamiteModule(context.getApplicationContext());
    }

    private static zzi zzj(Context context) {
        zzi zziVar;
        synchronized (DynamiteModule.class) {
            try {
                if (zzie != null) {
                    return zzie;
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
                            zzie = zziVar;
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

    @KeepForSdk
    public final Context getModuleContext() {
        return this.zzim;
    }

    @KeepForSdk
    public final IBinder instantiate(String str) throws LoadingException {
        try {
            return (IBinder) this.zzim.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            String valueOf = String.valueOf(str);
            throw new LoadingException(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e, null);
        }
    }
}
