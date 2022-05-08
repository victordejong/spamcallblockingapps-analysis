package androidx.work.impl;

import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.room.migration.Migration;
import androidx.sqlite.p008db.SupportSQLiteDatabase;
import androidx.work.impl.utils.IdGenerator;
import androidx.work.impl.utils.PreferenceUtils;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkDatabaseMigrations.class */
public class WorkDatabaseMigrations {
    public static final String CREATE_INDEX_PERIOD_START_TIME = "CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec` (`period_start_time`)";
    public static final String CREATE_PREFERENCE = "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))";
    public static final String CREATE_RUN_IN_FOREGROUND = "ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0";
    public static final String CREATE_SYSTEM_ID_INFO = "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )";
    public static final String CREATE_WORK_PROGRESS = "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )";
    public static final String INSERT_PREFERENCE = "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)";
    public static final String MIGRATE_ALARM_INFO_TO_SYSTEM_ID_INFO = "INSERT INTO SystemIdInfo(work_spec_id, system_id) SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo";
    @NonNull
    public static Migration MIGRATION_1_2 = new Migration(1, 2) { // from class: androidx.work.impl.WorkDatabaseMigrations.1
        @Override // androidx.room.migration.Migration
        public void migrate(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL(WorkDatabaseMigrations.CREATE_SYSTEM_ID_INFO);
            supportSQLiteDatabase.execSQL(WorkDatabaseMigrations.MIGRATE_ALARM_INFO_TO_SYSTEM_ID_INFO);
            supportSQLiteDatabase.execSQL(WorkDatabaseMigrations.REMOVE_ALARM_INFO);
            supportSQLiteDatabase.execSQL("INSERT OR IGNORE INTO worktag(tag, work_spec_id) SELECT worker_class_name AS tag, id AS work_spec_id FROM workspec");
        }
    };
    @NonNull
    public static Migration MIGRATION_3_4 = new Migration(3, 4) { // from class: androidx.work.impl.WorkDatabaseMigrations.2
        @Override // androidx.room.migration.Migration
        public void migrate(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
            if (Build.VERSION.SDK_INT >= 23) {
                supportSQLiteDatabase.execSQL(WorkDatabaseMigrations.PERIODIC_WORK_SET_SCHEDULE_REQUESTED_AT);
            }
        }
    };
    @NonNull
    public static Migration MIGRATION_4_5 = new Migration(4, 5) { // from class: androidx.work.impl.WorkDatabaseMigrations.3
        @Override // androidx.room.migration.Migration
        public void migrate(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL(WorkDatabaseMigrations.WORKSPEC_ADD_TRIGGER_UPDATE_DELAY);
            supportSQLiteDatabase.execSQL(WorkDatabaseMigrations.WORKSPEC_ADD_TRIGGER_MAX_CONTENT_DELAY);
        }
    };
    @NonNull
    public static Migration MIGRATION_6_7 = new Migration(6, 7) { // from class: androidx.work.impl.WorkDatabaseMigrations.4
        @Override // androidx.room.migration.Migration
        public void migrate(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL(WorkDatabaseMigrations.CREATE_WORK_PROGRESS);
        }
    };
    @NonNull
    public static Migration MIGRATION_7_8 = new Migration(7, 8) { // from class: androidx.work.impl.WorkDatabaseMigrations.5
        @Override // androidx.room.migration.Migration
        public void migrate(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL(WorkDatabaseMigrations.CREATE_INDEX_PERIOD_START_TIME);
        }
    };
    @NonNull
    public static Migration MIGRATION_8_9 = new Migration(8, 9) { // from class: androidx.work.impl.WorkDatabaseMigrations.6
        @Override // androidx.room.migration.Migration
        public void migrate(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL(WorkDatabaseMigrations.CREATE_RUN_IN_FOREGROUND);
        }
    };
    public static final String PERIODIC_WORK_SET_SCHEDULE_REQUESTED_AT = "UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0";
    public static final String REMOVE_ALARM_INFO = "DROP TABLE IF EXISTS alarmInfo";
    public static final int VERSION_1 = 1;
    public static final int VERSION_10 = 10;
    public static final int VERSION_11 = 11;
    public static final int VERSION_2 = 2;
    public static final int VERSION_3 = 3;
    public static final int VERSION_4 = 4;
    public static final int VERSION_5 = 5;
    public static final int VERSION_6 = 6;
    public static final int VERSION_7 = 7;
    public static final int VERSION_8 = 8;
    public static final int VERSION_9 = 9;
    public static final String WORKSPEC_ADD_TRIGGER_MAX_CONTENT_DELAY = "ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1";
    public static final String WORKSPEC_ADD_TRIGGER_UPDATE_DELAY = "ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1";

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkDatabaseMigrations$RescheduleMigration.class */
    public static class RescheduleMigration extends Migration {
        public final Context mContext;

        public RescheduleMigration(@NonNull Context context, int i, int i2) {
            super(i, i2);
            this.mContext = context;
        }

        @Override // androidx.room.migration.Migration
        public void migrate(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
            if (this.endVersion >= 10) {
                supportSQLiteDatabase.execSQL(WorkDatabaseMigrations.INSERT_PREFERENCE, new Object[]{PreferenceUtils.KEY_RESCHEDULE_NEEDED, 1});
            } else {
                this.mContext.getSharedPreferences(PreferenceUtils.PREFERENCES_FILE_NAME, 0).edit().putBoolean(PreferenceUtils.KEY_RESCHEDULE_NEEDED, true).apply();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkDatabaseMigrations$WorkMigration9To10.class */
    public static class WorkMigration9To10 extends Migration {
        public final Context mContext;

        public WorkMigration9To10(@NonNull Context context) {
            super(9, 10);
            this.mContext = context;
        }

        @Override // androidx.room.migration.Migration
        public void migrate(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL(WorkDatabaseMigrations.CREATE_PREFERENCE);
            PreferenceUtils.migrateLegacyPreferences(this.mContext, supportSQLiteDatabase);
            IdGenerator.migrateLegacyIdGenerator(this.mContext, supportSQLiteDatabase);
        }
    }
}
