package com.google.firebase.appindexing;

import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.appindexing.internal.zzh;
import java.lang.ref.WeakReference;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/FirebaseAppIndex.class */
public abstract class FirebaseAppIndex {
    public static final String ACTION_UPDATE_INDEX = "com.google.firebase.appindexing.UPDATE_INDEX";
    public static final String APP_INDEXING_API_TAG = "FirebaseAppIndex";
    public static final String EXTRA_UPDATE_INDEX_REASON = "com.google.firebase.appindexing.extra.REASON";
    public static final int EXTRA_UPDATE_INDEX_REASON_REBUILD = 1;
    public static final int EXTRA_UPDATE_INDEX_REASON_REFRESH = 2;
    @GuardedBy("FirebaseAppIndex.class")
    private static WeakReference<FirebaseAppIndex> zzcc;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [com.google.firebase.appindexing.FirebaseAppIndex] */
    public static FirebaseAppIndex getInstance() {
        zzh zzhVar;
        synchronized (FirebaseAppIndex.class) {
            try {
                zzh zzhVar2 = zzcc == null ? null : zzcc.get();
                zzhVar = zzhVar2;
                if (zzhVar2 == null) {
                    zzhVar = new zzh(FirebaseApp.getInstance().getApplicationContext());
                    zzcc = new WeakReference<>(zzhVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzhVar;
    }

    public abstract Task<Void> remove(String... strArr);

    public abstract Task<Void> removeAll();

    public abstract Task<Void> update(Indexable... indexableArr);
}
