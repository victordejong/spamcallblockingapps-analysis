package androidx.work.impl;

import android.arch.persistence.p000db.SupportSQLiteDatabase;
import android.arch.persistence.room.Database;
import android.arch.persistence.room.Room;
import android.arch.persistence.room.RoomDatabase;
import android.arch.persistence.room.TypeConverters;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import androidx.work.Data;
import androidx.work.impl.WorkDatabaseMigrations;
import androidx.work.impl.model.Dependency;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkName;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTag;
import androidx.work.impl.model.WorkTagDao;
import androidx.work.impl.model.WorkTypeConverters;
import java.util.concurrent.TimeUnit;
@Database(entities = {Dependency.class, WorkSpec.class, WorkTag.class, SystemIdInfo.class, WorkName.class}, version = 5)
@TypeConverters({Data.class, WorkTypeConverters.class})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkDatabase.class */
public abstract class WorkDatabase extends RoomDatabase {
    private static final String CLEANUP_SQL = "UPDATE workspec SET state=0, schedule_requested_at=-1 WHERE state=1";
    private static final String DB_NAME = "androidx.work.workdb";
    private static final String PRUNE_SQL_FORMAT_PREFIX = "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < ";
    private static final String PRUNE_SQL_FORMAT_SUFFIX = " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
    private static final long PRUNE_THRESHOLD_MILLIS = TimeUnit.DAYS.toMillis(7);

    public static WorkDatabase create(Context context, boolean z) {
        return (WorkDatabase) (z ? Room.inMemoryDatabaseBuilder(context, WorkDatabase.class).allowMainThreadQueries() : Room.databaseBuilder(context, WorkDatabase.class, DB_NAME)).addCallback(generateCleanupCallback()).addMigrations(WorkDatabaseMigrations.MIGRATION_1_2).addMigrations(new WorkDatabaseMigrations.WorkMigration(context, 2, 3)).addMigrations(WorkDatabaseMigrations.MIGRATION_3_4).addMigrations(WorkDatabaseMigrations.MIGRATION_4_5).fallbackToDestructiveMigration().build();
    }

    static RoomDatabase.Callback generateCleanupCallback() {
        return new RoomDatabase.Callback() { // from class: androidx.work.impl.WorkDatabase.1
            @Override // android.arch.persistence.room.RoomDatabase.Callback
            public void onOpen(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
                super.onOpen(supportSQLiteDatabase);
                supportSQLiteDatabase.beginTransaction();
                try {
                    supportSQLiteDatabase.execSQL(WorkDatabase.CLEANUP_SQL);
                    supportSQLiteDatabase.execSQL(WorkDatabase.getPruneSQL());
                    supportSQLiteDatabase.setTransactionSuccessful();
                } finally {
                    supportSQLiteDatabase.endTransaction();
                }
            }
        };
    }

    static long getPruneDate() {
        return System.currentTimeMillis() - PRUNE_THRESHOLD_MILLIS;
    }

    static String getPruneSQL() {
        return PRUNE_SQL_FORMAT_PREFIX + getPruneDate() + PRUNE_SQL_FORMAT_SUFFIX;
    }

    public abstract DependencyDao dependencyDao();

    public abstract SystemIdInfoDao systemIdInfoDao();

    public abstract WorkNameDao workNameDao();

    public abstract WorkSpecDao workSpecDao();

    public abstract WorkTagDao workTagDao();
}
