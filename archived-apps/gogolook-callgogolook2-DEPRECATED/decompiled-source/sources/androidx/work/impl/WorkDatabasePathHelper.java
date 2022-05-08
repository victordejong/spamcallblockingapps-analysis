package androidx.work.impl;

import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.work.Logger;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkDatabasePathHelper.class */
public class WorkDatabasePathHelper {
    public static final String WORK_DATABASE_NAME = "androidx.work.workdb";
    public static final String TAG = Logger.tagWithPrefix("WrkDbPathHelper");
    public static final String[] DATABASE_EXTRA_FILES = {"-journal", "-shm", "-wal"};

    @NonNull
    @VisibleForTesting
    public static File getDatabasePath(@NonNull Context context) {
        return Build.VERSION.SDK_INT < 23 ? getDefaultDatabasePath(context) : getNoBackupPath(context, WORK_DATABASE_NAME);
    }

    @NonNull
    @VisibleForTesting
    public static File getDefaultDatabasePath(@NonNull Context context) {
        return context.getDatabasePath(WORK_DATABASE_NAME);
    }

    @RequiresApi(23)
    public static File getNoBackupPath(@NonNull Context context, @NonNull String str) {
        return new File(context.getNoBackupFilesDir(), str);
    }

    @NonNull
    public static String getWorkDatabaseName() {
        return WORK_DATABASE_NAME;
    }

    public static void migrateDatabase(@NonNull Context context) {
        File defaultDatabasePath = getDefaultDatabasePath(context);
        if (Build.VERSION.SDK_INT >= 23 && defaultDatabasePath.exists()) {
            Logger.get().debug(TAG, "Migrating WorkDatabase to the no-backup directory", new Throwable[0]);
            Map<File, File> migrationPaths = migrationPaths(context);
            for (File file : migrationPaths.keySet()) {
                File file2 = migrationPaths.get(file);
                if (file.exists() && file2 != null) {
                    if (file2.exists()) {
                        Logger.get().warning(TAG, String.format("Over-writing contents of %s", file2), new Throwable[0]);
                    }
                    Logger.get().debug(TAG, file.renameTo(file2) ? String.format("Migrated %s to %s", file, file2) : String.format("Renaming %s to %s failed", file, file2), new Throwable[0]);
                }
            }
        }
    }

    @NonNull
    @VisibleForTesting
    public static Map<File, File> migrationPaths(@NonNull Context context) {
        File defaultDatabasePath;
        File databasePath;
        String[] strArr;
        HashMap hashMap = new HashMap();
        if (Build.VERSION.SDK_INT >= 23) {
            hashMap.put(getDefaultDatabasePath(context), getDatabasePath(context));
            for (String str : DATABASE_EXTRA_FILES) {
                hashMap.put(new File(defaultDatabasePath.getPath() + str), new File(databasePath.getPath() + str));
            }
        }
        return hashMap;
    }
}
