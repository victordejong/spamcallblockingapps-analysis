package com.google.firebase;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.UiThread;
import android.support.annotation.VisibleForTesting;
import android.support.p001v4.content.ContextCompat;
import android.support.p001v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.annotations.PublicApi;
import com.google.firebase.auth.GetTokenResult;
import com.google.firebase.components.Component;
import com.google.firebase.components.zzf;
import com.google.firebase.events.Event;
import com.google.firebase.events.Publisher;
import com.google.firebase.internal.InternalTokenProvider;
import com.google.firebase.internal.InternalTokenResult;
import com.privacystar.core.data.model.RequestQueueFields;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.concurrent.GuardedBy;
@PublicApi
/* loaded from: classes-dex2jar.jar:com/google/firebase/FirebaseApp.class */
public class FirebaseApp {
    private final Context zzi;
    private final String zzj;
    private final FirebaseOptions zzk;
    private final zzf zzl;
    private final SharedPreferences zzm;
    private final Publisher zzn;
    private InternalTokenProvider zzu;
    private static final List<String> zzb = Arrays.asList("com.google.firebase.auth.FirebaseAuth", "com.google.firebase.iid.FirebaseInstanceId");
    private static final List<String> zzc = Collections.singletonList("com.google.firebase.crash.FirebaseCrash");
    private static final List<String> zzd = Arrays.asList("com.google.android.gms.measurement.AppMeasurement");
    private static final List<String> zze = Arrays.asList(new String[0]);
    private static final Set<String> zzf = Collections.emptySet();
    private static final Object zzg = new Object();
    private static final Executor zzh = new zzb((byte) 0);
    @GuardedBy("LOCK")
    static final Map<String, FirebaseApp> zza = new ArrayMap();
    private final AtomicBoolean zzo = new AtomicBoolean(false);
    private final AtomicBoolean zzp = new AtomicBoolean();
    private final List<IdTokenListener> zzr = new CopyOnWriteArrayList();
    private final List<BackgroundStateChangeListener> zzs = new CopyOnWriteArrayList();
    private final List<FirebaseAppLifecycleListener> zzt = new CopyOnWriteArrayList();
    private IdTokenListenersCountChangedListener zzv = new com.google.firebase.internal.zza();
    private final AtomicBoolean zzq = new AtomicBoolean(zzb());

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/firebase/FirebaseApp$BackgroundStateChangeListener.class */
    public interface BackgroundStateChangeListener {
        @KeepForSdk
        void onBackgroundStateChanged(boolean z);
    }

    @KeepForSdk
    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/firebase/FirebaseApp$IdTokenListener.class */
    public interface IdTokenListener {
        @KeepForSdk
        void onIdTokenChanged(@NonNull InternalTokenResult internalTokenResult);
    }

    @KeepForSdk
    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/firebase/FirebaseApp$IdTokenListenersCountChangedListener.class */
    public interface IdTokenListenersCountChangedListener {
        @KeepForSdk
        void onListenerCountChanged(int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(14)
    /* loaded from: classes-dex2jar.jar:com/google/firebase/FirebaseApp$zza.class */
    public static final class zza implements BackgroundDetector.BackgroundStateChangeListener {
        private static AtomicReference<zza> zza = new AtomicReference<>();

        private zza() {
        }

        static /* synthetic */ void zza(Context context) {
            if (PlatformVersion.isAtLeastIceCreamSandwich() && (context.getApplicationContext() instanceof Application)) {
                Application application = (Application) context.getApplicationContext();
                if (zza.get() == null) {
                    zza zzaVar = new zza();
                    if (zza.compareAndSet(null, zzaVar)) {
                        BackgroundDetector.initialize(application);
                        BackgroundDetector.getInstance().addListener(zzaVar);
                    }
                }
            }
        }

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public final void onBackgroundStateChanged(boolean z) {
            synchronized (FirebaseApp.zzg) {
                Iterator it = new ArrayList(FirebaseApp.zza.values()).iterator();
                while (it.hasNext()) {
                    FirebaseApp firebaseApp = (FirebaseApp) it.next();
                    if (firebaseApp.zzo.get()) {
                        firebaseApp.zza(z);
                    }
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/FirebaseApp$zzb.class */
    static final class zzb implements Executor {
        private static final Handler zza = new Handler(Looper.getMainLooper());

        private zzb() {
        }

        /* synthetic */ zzb(byte b) {
            this();
        }

        @Override // java.util.concurrent.Executor
        public final void execute(@NonNull Runnable runnable) {
            zza.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(24)
    /* loaded from: classes-dex2jar.jar:com/google/firebase/FirebaseApp$zzc.class */
    public static final class zzc extends BroadcastReceiver {
        private static AtomicReference<zzc> zza = new AtomicReference<>();
        private final Context zzb;

        private zzc(Context context) {
            this.zzb = context;
        }

        static /* synthetic */ void zza(Context context) {
            if (zza.get() == null) {
                zzc zzcVar = new zzc(context);
                if (zza.compareAndSet(null, zzcVar)) {
                    context.registerReceiver(zzcVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            synchronized (FirebaseApp.zzg) {
                for (FirebaseApp firebaseApp : FirebaseApp.zza.values()) {
                    firebaseApp.zze();
                }
            }
            this.zzb.unregisterReceiver(this);
        }
    }

    private FirebaseApp(Context context, String str, FirebaseOptions firebaseOptions) {
        this.zzi = (Context) Preconditions.checkNotNull(context);
        this.zzj = Preconditions.checkNotEmpty(str);
        this.zzk = (FirebaseOptions) Preconditions.checkNotNull(firebaseOptions);
        this.zzm = context.getSharedPreferences("com.google.firebase.common.prefs", 0);
        this.zzl = new zzf(zzh, Component.C12681.zza(context).zza(), Component.m323of(context, Context.class, new Class[0]), Component.m323of(this, FirebaseApp.class, new Class[0]), Component.m323of(firebaseOptions, FirebaseOptions.class, new Class[0]));
        this.zzn = (Publisher) this.zzl.get(Publisher.class);
    }

    @PublicApi
    public static List<FirebaseApp> getApps(Context context) {
        ArrayList arrayList;
        synchronized (zzg) {
            arrayList = new ArrayList(zza.values());
        }
        return arrayList;
    }

    @Nullable
    @PublicApi
    public static FirebaseApp getInstance() {
        FirebaseApp firebaseApp;
        synchronized (zzg) {
            firebaseApp = zza.get("[DEFAULT]");
            if (firebaseApp == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + ProcessUtils.getMyProcessName() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return firebaseApp;
    }

    @PublicApi
    public static FirebaseApp getInstance(@NonNull String str) {
        FirebaseApp firebaseApp;
        List<String> zzd2;
        String str2;
        synchronized (zzg) {
            firebaseApp = zza.get(str.trim());
            if (firebaseApp == null) {
                if (zzd().isEmpty()) {
                    str2 = "";
                } else {
                    str2 = "Available app names: " + TextUtils.join(", ", zzd2);
                }
                throw new IllegalStateException(String.format("FirebaseApp with name %s doesn't exist. %s", str, str2));
            }
        }
        return firebaseApp;
    }

    @KeepForSdk
    public static String getPersistenceKey(String str, FirebaseOptions firebaseOptions) {
        return Base64Utils.encodeUrlSafeNoPadding(str.getBytes(Charset.defaultCharset())) + "+" + Base64Utils.encodeUrlSafeNoPadding(firebaseOptions.getApplicationId().getBytes(Charset.defaultCharset()));
    }

    @Nullable
    @PublicApi
    public static FirebaseApp initializeApp(Context context) {
        synchronized (zzg) {
            if (zza.containsKey("[DEFAULT]")) {
                return getInstance();
            }
            FirebaseOptions fromResource = FirebaseOptions.fromResource(context);
            if (fromResource == null) {
                Log.d("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                return null;
            }
            return initializeApp(context, fromResource);
        }
    }

    @PublicApi
    public static FirebaseApp initializeApp(Context context, FirebaseOptions firebaseOptions) {
        return initializeApp(context, firebaseOptions, "[DEFAULT]");
    }

    @PublicApi
    public static FirebaseApp initializeApp(Context context, FirebaseOptions firebaseOptions, String str) {
        FirebaseApp firebaseApp;
        zza.zza(context);
        String trim = str.trim();
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (zzg) {
            boolean containsKey = zza.containsKey(trim);
            Preconditions.checkState(!containsKey, "FirebaseApp name " + trim + " already exists!");
            Preconditions.checkNotNull(context, "Application context cannot be null.");
            firebaseApp = new FirebaseApp(context, trim, firebaseOptions);
            zza.put(trim, firebaseApp);
        }
        firebaseApp.zze();
        return firebaseApp;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> void zza(Class<T> cls, T t, Iterable<String> iterable, boolean z) {
        for (String str : iterable) {
            if (z) {
                try {
                } catch (ClassNotFoundException e) {
                    if (zzf.contains(str)) {
                        throw new IllegalStateException(str + " is missing, but is required. Check if it has been removed by Proguard.");
                    }
                    Log.d("FirebaseApp", str + " is not linked. Skipping initialization.");
                } catch (IllegalAccessException e2) {
                    Log.wtf("FirebaseApp", "Failed to initialize " + str, e2);
                } catch (NoSuchMethodException e3) {
                    throw new IllegalStateException(str + "#getInstance has been removed by Proguard. Add keep rule to prevent it.");
                } catch (InvocationTargetException e4) {
                    Log.wtf("FirebaseApp", "Firebase API initialization failure.", e4);
                }
                if (zze.contains(str)) {
                }
            }
            Method method = Class.forName(str).getMethod("getInstance", cls);
            int modifiers = method.getModifiers();
            if (Modifier.isPublic(modifiers) && Modifier.isStatic(modifiers)) {
                method.invoke(null, t);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(boolean z) {
        Log.d("FirebaseApp", "Notifying background state change listeners.");
        for (BackgroundStateChangeListener backgroundStateChangeListener : this.zzs) {
            backgroundStateChangeListener.onBackgroundStateChanged(z);
        }
    }

    private boolean zzb() {
        ApplicationInfo applicationInfo;
        if (this.zzm.contains("firebase_data_collection_default_enabled")) {
            return this.zzm.getBoolean("firebase_data_collection_default_enabled", true);
        }
        try {
            PackageManager packageManager = this.zzi.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(this.zzi.getPackageName(), 128)) == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey("firebase_data_collection_default_enabled")) {
                return true;
            }
            return applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
        } catch (PackageManager.NameNotFoundException e) {
            return true;
        }
    }

    private void zzc() {
        Preconditions.checkState(!this.zzp.get(), "FirebaseApp was deleted");
    }

    private static List<String> zzd() {
        ArrayList arrayList = new ArrayList();
        synchronized (zzg) {
            for (FirebaseApp firebaseApp : zza.values()) {
                arrayList.add(firebaseApp.getName());
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zze() {
        boolean isDeviceProtectedStorage = ContextCompat.isDeviceProtectedStorage(this.zzi);
        if (isDeviceProtectedStorage) {
            zzc.zza(this.zzi);
        } else {
            this.zzl.zza(isDefaultApp());
        }
        zza(FirebaseApp.class, this, zzb, isDeviceProtectedStorage);
        if (isDefaultApp()) {
            zza(FirebaseApp.class, this, zzc, isDeviceProtectedStorage);
            zza(Context.class, this.zzi, zzd, isDeviceProtectedStorage);
        }
    }

    @KeepForSdk
    public void addBackgroundStateChangeListener(BackgroundStateChangeListener backgroundStateChangeListener) {
        zzc();
        if (this.zzo.get() && BackgroundDetector.getInstance().isInBackground()) {
            backgroundStateChangeListener.onBackgroundStateChanged(true);
        }
        this.zzs.add(backgroundStateChangeListener);
    }

    @KeepForSdk
    @Deprecated
    public void addIdTokenListener(@NonNull IdTokenListener idTokenListener) {
        zzc();
        Preconditions.checkNotNull(idTokenListener);
        this.zzr.add(idTokenListener);
        this.zzv.onListenerCountChanged(this.zzr.size());
    }

    @KeepForSdk
    public void addLifecycleEventListener(@NonNull FirebaseAppLifecycleListener firebaseAppLifecycleListener) {
        zzc();
        Preconditions.checkNotNull(firebaseAppLifecycleListener);
        this.zzt.add(firebaseAppLifecycleListener);
    }

    @PublicApi
    public void delete() {
        if (this.zzp.compareAndSet(false, true)) {
            synchronized (zzg) {
                zza.remove(this.zzj);
            }
            Iterator<FirebaseAppLifecycleListener> it = this.zzt.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FirebaseApp)) {
            return false;
        }
        return this.zzj.equals(((FirebaseApp) obj).getName());
    }

    @KeepForSdk
    public <T> T get(Class<T> cls) {
        zzc();
        return (T) this.zzl.get(cls);
    }

    @NonNull
    @PublicApi
    public Context getApplicationContext() {
        zzc();
        return this.zzi;
    }

    @KeepForSdk
    @Deprecated
    public List<IdTokenListener> getListeners() {
        zzc();
        return this.zzr;
    }

    @NonNull
    @PublicApi
    public String getName() {
        zzc();
        return this.zzj;
    }

    @NonNull
    @PublicApi
    public FirebaseOptions getOptions() {
        zzc();
        return this.zzk;
    }

    @KeepForSdk
    public String getPersistenceKey() {
        return Base64Utils.encodeUrlSafeNoPadding(getName().getBytes(Charset.defaultCharset())) + "+" + Base64Utils.encodeUrlSafeNoPadding(getOptions().getApplicationId().getBytes(Charset.defaultCharset()));
    }

    @KeepForSdk
    @Deprecated
    public Task<GetTokenResult> getToken(boolean z) {
        zzc();
        return this.zzu == null ? Tasks.forException(new FirebaseApiNotAvailableException("firebase-auth is not linked, please fall back to unauthenticated mode.")) : this.zzu.getAccessToken(z);
    }

    @KeepForSdk
    @Deprecated
    @Nullable
    public String getUid() throws FirebaseApiNotAvailableException {
        zzc();
        if (this.zzu != null) {
            return this.zzu.getUid();
        }
        throw new FirebaseApiNotAvailableException("firebase-auth is not linked, please fall back to unauthenticated mode.");
    }

    public int hashCode() {
        return this.zzj.hashCode();
    }

    @KeepForSdk
    public boolean isDataCollectionDefaultEnabled() {
        zzc();
        return this.zzq.get();
    }

    @VisibleForTesting
    @KeepForSdk
    public boolean isDefaultApp() {
        return "[DEFAULT]".equals(getName());
    }

    @UiThread
    @KeepForSdk
    @Deprecated
    public void notifyIdTokenListeners(@NonNull InternalTokenResult internalTokenResult) {
        Log.d("FirebaseApp", "Notifying auth state listeners.");
        int i = 0;
        for (IdTokenListener idTokenListener : this.zzr) {
            idTokenListener.onIdTokenChanged(internalTokenResult);
            i++;
        }
        Log.d("FirebaseApp", String.format("Notified %d auth state listeners.", Integer.valueOf(i)));
    }

    @KeepForSdk
    public void removeBackgroundStateChangeListener(BackgroundStateChangeListener backgroundStateChangeListener) {
        zzc();
        this.zzs.remove(backgroundStateChangeListener);
    }

    @KeepForSdk
    @Deprecated
    public void removeIdTokenListener(@NonNull IdTokenListener idTokenListener) {
        zzc();
        Preconditions.checkNotNull(idTokenListener);
        this.zzr.remove(idTokenListener);
        this.zzv.onListenerCountChanged(this.zzr.size());
    }

    @KeepForSdk
    public void removeLifecycleEventListener(@NonNull FirebaseAppLifecycleListener firebaseAppLifecycleListener) {
        zzc();
        Preconditions.checkNotNull(firebaseAppLifecycleListener);
        this.zzt.remove(firebaseAppLifecycleListener);
    }

    @PublicApi
    public void setAutomaticResourceManagementEnabled(boolean z) {
        zzc();
        if (this.zzo.compareAndSet(!z, z)) {
            boolean isInBackground = BackgroundDetector.getInstance().isInBackground();
            if (z && isInBackground) {
                zza(true);
            } else if (!z && isInBackground) {
                zza(false);
            }
        }
    }

    @KeepForSdk
    public void setDataCollectionDefaultEnabled(boolean z) {
        zzc();
        if (this.zzq.compareAndSet(!z, z)) {
            this.zzm.edit().putBoolean("firebase_data_collection_default_enabled", z).commit();
            this.zzn.publish(new Event<>(DataCollectionDefaultChange.class, new DataCollectionDefaultChange(z)));
        }
    }

    @KeepForSdk
    @Deprecated
    public void setIdTokenListenersCountChangedListener(@NonNull IdTokenListenersCountChangedListener idTokenListenersCountChangedListener) {
        this.zzv = (IdTokenListenersCountChangedListener) Preconditions.checkNotNull(idTokenListenersCountChangedListener);
        this.zzv.onListenerCountChanged(this.zzr.size());
    }

    @KeepForSdk
    @Deprecated
    public void setTokenProvider(@NonNull InternalTokenProvider internalTokenProvider) {
        this.zzu = (InternalTokenProvider) Preconditions.checkNotNull(internalTokenProvider);
    }

    public String toString() {
        return Objects.toStringHelper(this).add("name", this.zzj).add(RequestQueueFields.OPTIONS, this.zzk).toString();
    }
}
