package androidx.work.impl.model;

import android.arch.lifecycle.ComputableLiveData;
import android.arch.lifecycle.LiveData;
import android.arch.persistence.p000db.SupportSQLiteStatement;
import android.arch.persistence.room.EntityInsertionAdapter;
import android.arch.persistence.room.InvalidationTracker;
import android.arch.persistence.room.RoomDatabase;
import android.arch.persistence.room.RoomSQLiteQuery;
import android.arch.persistence.room.SharedSQLiteStatement;
import android.arch.persistence.room.util.StringUtil;
import android.database.Cursor;
import android.support.annotation.NonNull;
import android.support.p001v4.util.ArrayMap;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkSpecDao_Impl.class */
public class WorkSpecDao_Impl implements WorkSpecDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter __insertionAdapterOfWorkSpec;
    private final SharedSQLiteStatement __preparedStmtOfDelete;
    private final SharedSQLiteStatement __preparedStmtOfIncrementWorkSpecRunAttemptCount;
    private final SharedSQLiteStatement __preparedStmtOfMarkWorkSpecScheduled;

    /* renamed from: __preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast */
    private final SharedSQLiteStatement f51xd91a9514;
    private final SharedSQLiteStatement __preparedStmtOfResetScheduledState;
    private final SharedSQLiteStatement __preparedStmtOfResetWorkSpecRunAttemptCount;
    private final SharedSQLiteStatement __preparedStmtOfSetOutput;
    private final SharedSQLiteStatement __preparedStmtOfSetPeriodStartTime;

    public WorkSpecDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
        this.__insertionAdapterOfWorkSpec = new EntityInsertionAdapter<WorkSpec>(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.1
            public void bind(SupportSQLiteStatement supportSQLiteStatement, WorkSpec workSpec) {
                if (workSpec.f48id == null) {
                    supportSQLiteStatement.bindNull(1);
                } else {
                    supportSQLiteStatement.bindString(1, workSpec.f48id);
                }
                supportSQLiteStatement.bindLong(2, WorkTypeConverters.stateToInt(workSpec.state));
                if (workSpec.workerClassName == null) {
                    supportSQLiteStatement.bindNull(3);
                } else {
                    supportSQLiteStatement.bindString(3, workSpec.workerClassName);
                }
                if (workSpec.inputMergerClassName == null) {
                    supportSQLiteStatement.bindNull(4);
                } else {
                    supportSQLiteStatement.bindString(4, workSpec.inputMergerClassName);
                }
                byte[] byteArray = Data.toByteArray(workSpec.input);
                if (byteArray == null) {
                    supportSQLiteStatement.bindNull(5);
                } else {
                    supportSQLiteStatement.bindBlob(5, byteArray);
                }
                byte[] byteArray2 = Data.toByteArray(workSpec.output);
                if (byteArray2 == null) {
                    supportSQLiteStatement.bindNull(6);
                } else {
                    supportSQLiteStatement.bindBlob(6, byteArray2);
                }
                supportSQLiteStatement.bindLong(7, workSpec.initialDelay);
                supportSQLiteStatement.bindLong(8, workSpec.intervalDuration);
                supportSQLiteStatement.bindLong(9, workSpec.flexDuration);
                supportSQLiteStatement.bindLong(10, workSpec.runAttemptCount);
                supportSQLiteStatement.bindLong(11, WorkTypeConverters.backoffPolicyToInt(workSpec.backoffPolicy));
                supportSQLiteStatement.bindLong(12, workSpec.backoffDelayDuration);
                supportSQLiteStatement.bindLong(13, workSpec.periodStartTime);
                supportSQLiteStatement.bindLong(14, workSpec.minimumRetentionDuration);
                supportSQLiteStatement.bindLong(15, workSpec.scheduleRequestedAt);
                Constraints constraints = workSpec.constraints;
                if (constraints != null) {
                    supportSQLiteStatement.bindLong(16, WorkTypeConverters.networkTypeToInt(constraints.getRequiredNetworkType()));
                    supportSQLiteStatement.bindLong(17, constraints.requiresCharging() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(18, constraints.requiresDeviceIdle() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(19, constraints.requiresBatteryNotLow() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(20, constraints.requiresStorageNotLow() ? 1L : 0L);
                    supportSQLiteStatement.bindLong(21, constraints.getTriggerContentUpdateDelay());
                    supportSQLiteStatement.bindLong(22, constraints.getTriggerMaxContentDelay());
                    byte[] contentUriTriggersToByteArray = WorkTypeConverters.contentUriTriggersToByteArray(constraints.getContentUriTriggers());
                    if (contentUriTriggersToByteArray == null) {
                        supportSQLiteStatement.bindNull(23);
                    } else {
                        supportSQLiteStatement.bindBlob(23, contentUriTriggersToByteArray);
                    }
                } else {
                    supportSQLiteStatement.bindNull(16);
                    supportSQLiteStatement.bindNull(17);
                    supportSQLiteStatement.bindNull(18);
                    supportSQLiteStatement.bindNull(19);
                    supportSQLiteStatement.bindNull(20);
                    supportSQLiteStatement.bindNull(21);
                    supportSQLiteStatement.bindNull(22);
                    supportSQLiteStatement.bindNull(23);
                }
            }

            @Override // android.arch.persistence.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR IGNORE INTO `WorkSpec`(`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }
        };
        this.__preparedStmtOfDelete = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.2
            @Override // android.arch.persistence.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM workspec WHERE id=?";
            }
        };
        this.__preparedStmtOfSetOutput = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.3
            @Override // android.arch.persistence.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET output=? WHERE id=?";
            }
        };
        this.__preparedStmtOfSetPeriodStartTime = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.4
            @Override // android.arch.persistence.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET period_start_time=? WHERE id=?";
            }
        };
        this.__preparedStmtOfIncrementWorkSpecRunAttemptCount = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.5
            @Override // android.arch.persistence.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
            }
        };
        this.__preparedStmtOfResetWorkSpecRunAttemptCount = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.6
            @Override // android.arch.persistence.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
            }
        };
        this.__preparedStmtOfMarkWorkSpecScheduled = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.7
            @Override // android.arch.persistence.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
            }
        };
        this.__preparedStmtOfResetScheduledState = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.8
            @Override // android.arch.persistence.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
            }
        };
        this.f51xd91a9514 = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.9
            @Override // android.arch.persistence.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void __fetchRelationshipWorkTagAsjavaLangString(ArrayMap<String, ArrayList<String>> arrayMap) {
        ArrayList<String> arrayList;
        int i;
        Set<String> keySet = arrayMap.keySet();
        if (!keySet.isEmpty()) {
            if (arrayMap.size() > 999) {
                ArrayMap<String, ArrayList<String>> arrayMap2 = new ArrayMap<>(999);
                int size = arrayMap.size();
                int i2 = 0;
                loop0: while (true) {
                    i = 0;
                    while (i2 < size) {
                        arrayMap2.put(arrayMap.keyAt(i2), arrayMap.valueAt(i2));
                        i2++;
                        int i3 = i + 1;
                        i2 = i2;
                        i = i3;
                        if (i3 == 999) {
                            break;
                        }
                    }
                    __fetchRelationshipWorkTagAsjavaLangString(arrayMap2);
                    arrayMap2 = new ArrayMap<>(999);
                }
                if (i > 0) {
                    __fetchRelationshipWorkTagAsjavaLangString(arrayMap2);
                    return;
                }
                return;
            }
            StringBuilder newStringBuilder = StringUtil.newStringBuilder();
            newStringBuilder.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
            int size2 = keySet.size();
            StringUtil.appendPlaceholders(newStringBuilder, size2);
            newStringBuilder.append(")");
            RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size2 + 0);
            int i4 = 1;
            for (String str : keySet) {
                if (str == null) {
                    acquire.bindNull(i4);
                } else {
                    acquire.bindString(i4, str);
                }
                i4++;
            }
            Cursor query = this.__db.query(acquire);
            try {
                int columnIndex = query.getColumnIndex("work_spec_id");
                if (columnIndex != -1) {
                    while (query.moveToNext()) {
                        if (!query.isNull(columnIndex) && (arrayList = arrayMap.get(query.getString(columnIndex))) != null) {
                            arrayList.add(query.getString(0));
                        }
                    }
                }
            } finally {
                query.close();
            }
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void delete(String str) {
        SupportSQLiteStatement acquire = this.__preparedStmtOfDelete.acquire();
        this.__db.beginTransaction();
        try {
            if (str == null) {
                acquire.bindNull(1);
            } else {
                acquire.bindString(1, str);
            }
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfDelete.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getAllUnfinishedWork() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)", 0);
        Cursor query = this.__db.query(acquire);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.getString(0));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getAllWorkSpecIds() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec", 0);
        Cursor query = this.__db.query(acquire);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.getString(0));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getEligibleWorkForScheduling(int i) {
        Throwable th;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))", 1);
        acquire.bindLong(1, i);
        Cursor query = this.__db.query(acquire);
        try {
            int columnIndexOrThrow = query.getColumnIndexOrThrow("id");
            int columnIndexOrThrow2 = query.getColumnIndexOrThrow("state");
            int columnIndexOrThrow3 = query.getColumnIndexOrThrow("worker_class_name");
            int columnIndexOrThrow4 = query.getColumnIndexOrThrow("input_merger_class_name");
            int columnIndexOrThrow5 = query.getColumnIndexOrThrow("input");
            int columnIndexOrThrow6 = query.getColumnIndexOrThrow("output");
            int columnIndexOrThrow7 = query.getColumnIndexOrThrow("initial_delay");
            int columnIndexOrThrow8 = query.getColumnIndexOrThrow("interval_duration");
            int columnIndexOrThrow9 = query.getColumnIndexOrThrow("flex_duration");
            int columnIndexOrThrow10 = query.getColumnIndexOrThrow("run_attempt_count");
            int columnIndexOrThrow11 = query.getColumnIndexOrThrow("backoff_policy");
            int columnIndexOrThrow12 = query.getColumnIndexOrThrow("backoff_delay_duration");
            int columnIndexOrThrow13 = query.getColumnIndexOrThrow("period_start_time");
            try {
                int columnIndexOrThrow14 = query.getColumnIndexOrThrow("minimum_retention_duration");
                int columnIndexOrThrow15 = query.getColumnIndexOrThrow("schedule_requested_at");
                int columnIndexOrThrow16 = query.getColumnIndexOrThrow("required_network_type");
                int columnIndexOrThrow17 = query.getColumnIndexOrThrow("requires_charging");
                int columnIndexOrThrow18 = query.getColumnIndexOrThrow("requires_device_idle");
                int columnIndexOrThrow19 = query.getColumnIndexOrThrow("requires_battery_not_low");
                int columnIndexOrThrow20 = query.getColumnIndexOrThrow("requires_storage_not_low");
                int columnIndexOrThrow21 = query.getColumnIndexOrThrow("trigger_content_update_delay");
                int columnIndexOrThrow22 = query.getColumnIndexOrThrow("trigger_max_content_delay");
                int columnIndexOrThrow23 = query.getColumnIndexOrThrow("content_uri_triggers");
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    try {
                        String string = query.getString(columnIndexOrThrow);
                        String string2 = query.getString(columnIndexOrThrow3);
                        Constraints constraints = new Constraints();
                        constraints.setRequiredNetworkType(WorkTypeConverters.intToNetworkType(query.getInt(columnIndexOrThrow16)));
                        constraints.setRequiresCharging(query.getInt(columnIndexOrThrow17) != 0);
                        constraints.setRequiresDeviceIdle(query.getInt(columnIndexOrThrow18) != 0);
                        constraints.setRequiresBatteryNotLow(query.getInt(columnIndexOrThrow19) != 0);
                        constraints.setRequiresStorageNotLow(query.getInt(columnIndexOrThrow20) != 0);
                        constraints.setTriggerContentUpdateDelay(query.getLong(columnIndexOrThrow21));
                        constraints.setTriggerMaxContentDelay(query.getLong(columnIndexOrThrow22));
                        constraints.setContentUriTriggers(WorkTypeConverters.byteArrayToContentUriTriggers(query.getBlob(columnIndexOrThrow23)));
                        WorkSpec workSpec = new WorkSpec(string, string2);
                        workSpec.state = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                        workSpec.inputMergerClassName = query.getString(columnIndexOrThrow4);
                        workSpec.input = Data.fromByteArray(query.getBlob(columnIndexOrThrow5));
                        workSpec.output = Data.fromByteArray(query.getBlob(columnIndexOrThrow6));
                        workSpec.initialDelay = query.getLong(columnIndexOrThrow7);
                        workSpec.intervalDuration = query.getLong(columnIndexOrThrow8);
                        workSpec.flexDuration = query.getLong(columnIndexOrThrow9);
                        workSpec.runAttemptCount = query.getInt(columnIndexOrThrow10);
                        workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                        workSpec.backoffDelayDuration = query.getLong(columnIndexOrThrow12);
                        workSpec.periodStartTime = query.getLong(columnIndexOrThrow13);
                        workSpec.minimumRetentionDuration = query.getLong(columnIndexOrThrow14);
                        workSpec.scheduleRequestedAt = query.getLong(columnIndexOrThrow15);
                        workSpec.constraints = constraints;
                        arrayList.add(workSpec);
                    } catch (Throwable th2) {
                        th = th2;
                        query.close();
                        acquire.release();
                        throw th;
                    }
                }
                query.close();
                acquire.release();
                return arrayList;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getEnqueuedWork() {
        Throwable th;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=0", 0);
        Cursor query = this.__db.query(acquire);
        try {
            int columnIndexOrThrow = query.getColumnIndexOrThrow("id");
            int columnIndexOrThrow2 = query.getColumnIndexOrThrow("state");
            int columnIndexOrThrow3 = query.getColumnIndexOrThrow("worker_class_name");
            int columnIndexOrThrow4 = query.getColumnIndexOrThrow("input_merger_class_name");
            int columnIndexOrThrow5 = query.getColumnIndexOrThrow("input");
            int columnIndexOrThrow6 = query.getColumnIndexOrThrow("output");
            int columnIndexOrThrow7 = query.getColumnIndexOrThrow("initial_delay");
            int columnIndexOrThrow8 = query.getColumnIndexOrThrow("interval_duration");
            int columnIndexOrThrow9 = query.getColumnIndexOrThrow("flex_duration");
            int columnIndexOrThrow10 = query.getColumnIndexOrThrow("run_attempt_count");
            int columnIndexOrThrow11 = query.getColumnIndexOrThrow("backoff_policy");
            int columnIndexOrThrow12 = query.getColumnIndexOrThrow("backoff_delay_duration");
            int columnIndexOrThrow13 = query.getColumnIndexOrThrow("period_start_time");
            try {
                int columnIndexOrThrow14 = query.getColumnIndexOrThrow("minimum_retention_duration");
                int columnIndexOrThrow15 = query.getColumnIndexOrThrow("schedule_requested_at");
                int columnIndexOrThrow16 = query.getColumnIndexOrThrow("required_network_type");
                int columnIndexOrThrow17 = query.getColumnIndexOrThrow("requires_charging");
                int columnIndexOrThrow18 = query.getColumnIndexOrThrow("requires_device_idle");
                int columnIndexOrThrow19 = query.getColumnIndexOrThrow("requires_battery_not_low");
                int columnIndexOrThrow20 = query.getColumnIndexOrThrow("requires_storage_not_low");
                int columnIndexOrThrow21 = query.getColumnIndexOrThrow("trigger_content_update_delay");
                int columnIndexOrThrow22 = query.getColumnIndexOrThrow("trigger_max_content_delay");
                int columnIndexOrThrow23 = query.getColumnIndexOrThrow("content_uri_triggers");
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    try {
                        String string = query.getString(columnIndexOrThrow);
                        String string2 = query.getString(columnIndexOrThrow3);
                        Constraints constraints = new Constraints();
                        constraints.setRequiredNetworkType(WorkTypeConverters.intToNetworkType(query.getInt(columnIndexOrThrow16)));
                        constraints.setRequiresCharging(query.getInt(columnIndexOrThrow17) != 0);
                        constraints.setRequiresDeviceIdle(query.getInt(columnIndexOrThrow18) != 0);
                        constraints.setRequiresBatteryNotLow(query.getInt(columnIndexOrThrow19) != 0);
                        constraints.setRequiresStorageNotLow(query.getInt(columnIndexOrThrow20) != 0);
                        constraints.setTriggerContentUpdateDelay(query.getLong(columnIndexOrThrow21));
                        constraints.setTriggerMaxContentDelay(query.getLong(columnIndexOrThrow22));
                        constraints.setContentUriTriggers(WorkTypeConverters.byteArrayToContentUriTriggers(query.getBlob(columnIndexOrThrow23)));
                        WorkSpec workSpec = new WorkSpec(string, string2);
                        workSpec.state = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                        workSpec.inputMergerClassName = query.getString(columnIndexOrThrow4);
                        workSpec.input = Data.fromByteArray(query.getBlob(columnIndexOrThrow5));
                        workSpec.output = Data.fromByteArray(query.getBlob(columnIndexOrThrow6));
                        workSpec.initialDelay = query.getLong(columnIndexOrThrow7);
                        workSpec.intervalDuration = query.getLong(columnIndexOrThrow8);
                        workSpec.flexDuration = query.getLong(columnIndexOrThrow9);
                        workSpec.runAttemptCount = query.getInt(columnIndexOrThrow10);
                        workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                        workSpec.backoffDelayDuration = query.getLong(columnIndexOrThrow12);
                        workSpec.periodStartTime = query.getLong(columnIndexOrThrow13);
                        workSpec.minimumRetentionDuration = query.getLong(columnIndexOrThrow14);
                        workSpec.scheduleRequestedAt = query.getLong(columnIndexOrThrow15);
                        workSpec.constraints = constraints;
                        arrayList.add(workSpec);
                    } catch (Throwable th2) {
                        th = th2;
                        query.close();
                        acquire.release();
                        throw th;
                    }
                }
                query.close();
                acquire.release();
                return arrayList;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<Data> getInputsFromPrerequisites(String str) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        Cursor query = this.__db.query(acquire);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(Data.fromByteArray(query.getBlob(0)));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getScheduledWork() {
        Throwable th;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        Cursor query = this.__db.query(acquire);
        try {
            int columnIndexOrThrow = query.getColumnIndexOrThrow("id");
            int columnIndexOrThrow2 = query.getColumnIndexOrThrow("state");
            int columnIndexOrThrow3 = query.getColumnIndexOrThrow("worker_class_name");
            int columnIndexOrThrow4 = query.getColumnIndexOrThrow("input_merger_class_name");
            int columnIndexOrThrow5 = query.getColumnIndexOrThrow("input");
            int columnIndexOrThrow6 = query.getColumnIndexOrThrow("output");
            int columnIndexOrThrow7 = query.getColumnIndexOrThrow("initial_delay");
            int columnIndexOrThrow8 = query.getColumnIndexOrThrow("interval_duration");
            int columnIndexOrThrow9 = query.getColumnIndexOrThrow("flex_duration");
            int columnIndexOrThrow10 = query.getColumnIndexOrThrow("run_attempt_count");
            int columnIndexOrThrow11 = query.getColumnIndexOrThrow("backoff_policy");
            int columnIndexOrThrow12 = query.getColumnIndexOrThrow("backoff_delay_duration");
            int columnIndexOrThrow13 = query.getColumnIndexOrThrow("period_start_time");
            try {
                int columnIndexOrThrow14 = query.getColumnIndexOrThrow("minimum_retention_duration");
                int columnIndexOrThrow15 = query.getColumnIndexOrThrow("schedule_requested_at");
                int columnIndexOrThrow16 = query.getColumnIndexOrThrow("required_network_type");
                int columnIndexOrThrow17 = query.getColumnIndexOrThrow("requires_charging");
                int columnIndexOrThrow18 = query.getColumnIndexOrThrow("requires_device_idle");
                int columnIndexOrThrow19 = query.getColumnIndexOrThrow("requires_battery_not_low");
                int columnIndexOrThrow20 = query.getColumnIndexOrThrow("requires_storage_not_low");
                int columnIndexOrThrow21 = query.getColumnIndexOrThrow("trigger_content_update_delay");
                int columnIndexOrThrow22 = query.getColumnIndexOrThrow("trigger_max_content_delay");
                int columnIndexOrThrow23 = query.getColumnIndexOrThrow("content_uri_triggers");
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    try {
                        String string = query.getString(columnIndexOrThrow);
                        String string2 = query.getString(columnIndexOrThrow3);
                        Constraints constraints = new Constraints();
                        constraints.setRequiredNetworkType(WorkTypeConverters.intToNetworkType(query.getInt(columnIndexOrThrow16)));
                        constraints.setRequiresCharging(query.getInt(columnIndexOrThrow17) != 0);
                        constraints.setRequiresDeviceIdle(query.getInt(columnIndexOrThrow18) != 0);
                        constraints.setRequiresBatteryNotLow(query.getInt(columnIndexOrThrow19) != 0);
                        constraints.setRequiresStorageNotLow(query.getInt(columnIndexOrThrow20) != 0);
                        constraints.setTriggerContentUpdateDelay(query.getLong(columnIndexOrThrow21));
                        constraints.setTriggerMaxContentDelay(query.getLong(columnIndexOrThrow22));
                        constraints.setContentUriTriggers(WorkTypeConverters.byteArrayToContentUriTriggers(query.getBlob(columnIndexOrThrow23)));
                        WorkSpec workSpec = new WorkSpec(string, string2);
                        workSpec.state = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                        workSpec.inputMergerClassName = query.getString(columnIndexOrThrow4);
                        workSpec.input = Data.fromByteArray(query.getBlob(columnIndexOrThrow5));
                        workSpec.output = Data.fromByteArray(query.getBlob(columnIndexOrThrow6));
                        workSpec.initialDelay = query.getLong(columnIndexOrThrow7);
                        workSpec.intervalDuration = query.getLong(columnIndexOrThrow8);
                        workSpec.flexDuration = query.getLong(columnIndexOrThrow9);
                        workSpec.runAttemptCount = query.getInt(columnIndexOrThrow10);
                        workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                        workSpec.backoffDelayDuration = query.getLong(columnIndexOrThrow12);
                        workSpec.periodStartTime = query.getLong(columnIndexOrThrow13);
                        workSpec.minimumRetentionDuration = query.getLong(columnIndexOrThrow14);
                        workSpec.scheduleRequestedAt = query.getLong(columnIndexOrThrow15);
                        workSpec.constraints = constraints;
                        arrayList.add(workSpec);
                    } catch (Throwable th2) {
                        th = th2;
                        query.close();
                        acquire.release();
                        throw th;
                    }
                }
                query.close();
                acquire.release();
                return arrayList;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkInfo.State getState(String str) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT state FROM workspec WHERE id=?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        Cursor query = this.__db.query(acquire);
        try {
            return query.moveToFirst() ? WorkTypeConverters.intToState(query.getInt(0)) : null;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getUnfinishedWorkWithName(String str) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        Cursor query = this.__db.query(acquire);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.getString(0));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getUnfinishedWorkWithTag(String str) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        Cursor query = this.__db.query(acquire);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.getString(0));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec getWorkSpec(String str) {
        Throwable th;
        WorkSpec workSpec;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE id=?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        Cursor query = this.__db.query(acquire);
        try {
            int columnIndexOrThrow = query.getColumnIndexOrThrow("id");
            int columnIndexOrThrow2 = query.getColumnIndexOrThrow("state");
            int columnIndexOrThrow3 = query.getColumnIndexOrThrow("worker_class_name");
            int columnIndexOrThrow4 = query.getColumnIndexOrThrow("input_merger_class_name");
            int columnIndexOrThrow5 = query.getColumnIndexOrThrow("input");
            int columnIndexOrThrow6 = query.getColumnIndexOrThrow("output");
            int columnIndexOrThrow7 = query.getColumnIndexOrThrow("initial_delay");
            int columnIndexOrThrow8 = query.getColumnIndexOrThrow("interval_duration");
            int columnIndexOrThrow9 = query.getColumnIndexOrThrow("flex_duration");
            int columnIndexOrThrow10 = query.getColumnIndexOrThrow("run_attempt_count");
            int columnIndexOrThrow11 = query.getColumnIndexOrThrow("backoff_policy");
            int columnIndexOrThrow12 = query.getColumnIndexOrThrow("backoff_delay_duration");
            int columnIndexOrThrow13 = query.getColumnIndexOrThrow("period_start_time");
            try {
                int columnIndexOrThrow14 = query.getColumnIndexOrThrow("minimum_retention_duration");
                int columnIndexOrThrow15 = query.getColumnIndexOrThrow("schedule_requested_at");
                int columnIndexOrThrow16 = query.getColumnIndexOrThrow("required_network_type");
                int columnIndexOrThrow17 = query.getColumnIndexOrThrow("requires_charging");
                int columnIndexOrThrow18 = query.getColumnIndexOrThrow("requires_device_idle");
                int columnIndexOrThrow19 = query.getColumnIndexOrThrow("requires_battery_not_low");
                int columnIndexOrThrow20 = query.getColumnIndexOrThrow("requires_storage_not_low");
                int columnIndexOrThrow21 = query.getColumnIndexOrThrow("trigger_content_update_delay");
                int columnIndexOrThrow22 = query.getColumnIndexOrThrow("trigger_max_content_delay");
                int columnIndexOrThrow23 = query.getColumnIndexOrThrow("content_uri_triggers");
                if (query.moveToFirst()) {
                    try {
                        String string = query.getString(columnIndexOrThrow);
                        String string2 = query.getString(columnIndexOrThrow3);
                        Constraints constraints = new Constraints();
                        constraints.setRequiredNetworkType(WorkTypeConverters.intToNetworkType(query.getInt(columnIndexOrThrow16)));
                        boolean z = false;
                        constraints.setRequiresCharging(query.getInt(columnIndexOrThrow17) != 0);
                        constraints.setRequiresDeviceIdle(query.getInt(columnIndexOrThrow18) != 0);
                        constraints.setRequiresBatteryNotLow(query.getInt(columnIndexOrThrow19) != 0);
                        if (query.getInt(columnIndexOrThrow20) != 0) {
                            z = true;
                        }
                        constraints.setRequiresStorageNotLow(z);
                        constraints.setTriggerContentUpdateDelay(query.getLong(columnIndexOrThrow21));
                        constraints.setTriggerMaxContentDelay(query.getLong(columnIndexOrThrow22));
                        constraints.setContentUriTriggers(WorkTypeConverters.byteArrayToContentUriTriggers(query.getBlob(columnIndexOrThrow23)));
                        workSpec = new WorkSpec(string, string2);
                        workSpec.state = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                        workSpec.inputMergerClassName = query.getString(columnIndexOrThrow4);
                        workSpec.input = Data.fromByteArray(query.getBlob(columnIndexOrThrow5));
                        workSpec.output = Data.fromByteArray(query.getBlob(columnIndexOrThrow6));
                        workSpec.initialDelay = query.getLong(columnIndexOrThrow7);
                        workSpec.intervalDuration = query.getLong(columnIndexOrThrow8);
                        workSpec.flexDuration = query.getLong(columnIndexOrThrow9);
                        workSpec.runAttemptCount = query.getInt(columnIndexOrThrow10);
                        workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                        workSpec.backoffDelayDuration = query.getLong(columnIndexOrThrow12);
                        workSpec.periodStartTime = query.getLong(columnIndexOrThrow13);
                        workSpec.minimumRetentionDuration = query.getLong(columnIndexOrThrow14);
                        workSpec.scheduleRequestedAt = query.getLong(columnIndexOrThrow15);
                        workSpec.constraints = constraints;
                    } catch (Throwable th2) {
                        th = th2;
                        query.close();
                        acquire.release();
                        throw th;
                    }
                } else {
                    workSpec = null;
                }
                query.close();
                acquire.release();
                return workSpec;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.IdAndState> getWorkSpecIdAndStatesForName(String str) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        Cursor query = this.__db.query(acquire);
        try {
            int columnIndexOrThrow = query.getColumnIndexOrThrow("id");
            int columnIndexOrThrow2 = query.getColumnIndexOrThrow("state");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                WorkSpec.IdAndState idAndState = new WorkSpec.IdAndState();
                idAndState.f49id = query.getString(columnIndexOrThrow);
                idAndState.state = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                arrayList.add(idAndState);
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec[] getWorkSpecs(List<String> list) {
        Throwable th;
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT * FROM workspec WHERE id IN (");
        int size = list.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size + 0);
        int i = 1;
        for (String str : list) {
            if (str == null) {
                acquire.bindNull(i);
            } else {
                acquire.bindString(i, str);
            }
            i++;
        }
        Cursor query = this.__db.query(acquire);
        try {
            int columnIndexOrThrow = query.getColumnIndexOrThrow("id");
            int columnIndexOrThrow2 = query.getColumnIndexOrThrow("state");
            int columnIndexOrThrow3 = query.getColumnIndexOrThrow("worker_class_name");
            int columnIndexOrThrow4 = query.getColumnIndexOrThrow("input_merger_class_name");
            int columnIndexOrThrow5 = query.getColumnIndexOrThrow("input");
            int columnIndexOrThrow6 = query.getColumnIndexOrThrow("output");
            int columnIndexOrThrow7 = query.getColumnIndexOrThrow("initial_delay");
            int columnIndexOrThrow8 = query.getColumnIndexOrThrow("interval_duration");
            int columnIndexOrThrow9 = query.getColumnIndexOrThrow("flex_duration");
            int columnIndexOrThrow10 = query.getColumnIndexOrThrow("run_attempt_count");
            int columnIndexOrThrow11 = query.getColumnIndexOrThrow("backoff_policy");
            int columnIndexOrThrow12 = query.getColumnIndexOrThrow("backoff_delay_duration");
            int columnIndexOrThrow13 = query.getColumnIndexOrThrow("period_start_time");
            try {
                int columnIndexOrThrow14 = query.getColumnIndexOrThrow("minimum_retention_duration");
                int columnIndexOrThrow15 = query.getColumnIndexOrThrow("schedule_requested_at");
                int columnIndexOrThrow16 = query.getColumnIndexOrThrow("required_network_type");
                int columnIndexOrThrow17 = query.getColumnIndexOrThrow("requires_charging");
                int columnIndexOrThrow18 = query.getColumnIndexOrThrow("requires_device_idle");
                int columnIndexOrThrow19 = query.getColumnIndexOrThrow("requires_battery_not_low");
                int columnIndexOrThrow20 = query.getColumnIndexOrThrow("requires_storage_not_low");
                int columnIndexOrThrow21 = query.getColumnIndexOrThrow("trigger_content_update_delay");
                int columnIndexOrThrow22 = query.getColumnIndexOrThrow("trigger_max_content_delay");
                int columnIndexOrThrow23 = query.getColumnIndexOrThrow("content_uri_triggers");
                WorkSpec[] workSpecArr = new WorkSpec[query.getCount()];
                int i2 = 0;
                while (query.moveToNext()) {
                    try {
                        String string = query.getString(columnIndexOrThrow);
                        String string2 = query.getString(columnIndexOrThrow3);
                        Constraints constraints = new Constraints();
                        constraints.setRequiredNetworkType(WorkTypeConverters.intToNetworkType(query.getInt(columnIndexOrThrow16)));
                        constraints.setRequiresCharging(query.getInt(columnIndexOrThrow17) != 0);
                        constraints.setRequiresDeviceIdle(query.getInt(columnIndexOrThrow18) != 0);
                        constraints.setRequiresBatteryNotLow(query.getInt(columnIndexOrThrow19) != 0);
                        constraints.setRequiresStorageNotLow(query.getInt(columnIndexOrThrow20) != 0);
                        constraints.setTriggerContentUpdateDelay(query.getLong(columnIndexOrThrow21));
                        constraints.setTriggerMaxContentDelay(query.getLong(columnIndexOrThrow22));
                        constraints.setContentUriTriggers(WorkTypeConverters.byteArrayToContentUriTriggers(query.getBlob(columnIndexOrThrow23)));
                        WorkSpec workSpec = new WorkSpec(string, string2);
                        workSpec.state = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                        workSpec.inputMergerClassName = query.getString(columnIndexOrThrow4);
                        workSpec.input = Data.fromByteArray(query.getBlob(columnIndexOrThrow5));
                        workSpec.output = Data.fromByteArray(query.getBlob(columnIndexOrThrow6));
                        workSpec.initialDelay = query.getLong(columnIndexOrThrow7);
                        workSpec.intervalDuration = query.getLong(columnIndexOrThrow8);
                        workSpec.flexDuration = query.getLong(columnIndexOrThrow9);
                        workSpec.runAttemptCount = query.getInt(columnIndexOrThrow10);
                        workSpec.backoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                        workSpec.backoffDelayDuration = query.getLong(columnIndexOrThrow12);
                        workSpec.periodStartTime = query.getLong(columnIndexOrThrow13);
                        workSpec.minimumRetentionDuration = query.getLong(columnIndexOrThrow14);
                        workSpec.scheduleRequestedAt = query.getLong(columnIndexOrThrow15);
                        workSpec.constraints = constraints;
                        workSpecArr[i2] = workSpec;
                        i2++;
                    } catch (Throwable th2) {
                        th = th2;
                        query.close();
                        acquire.release();
                        throw th;
                    }
                }
                query.close();
                acquire.release();
                return workSpecArr;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec.WorkInfoPojo getWorkStatusPojoForId(String str) {
        WorkSpec.WorkInfoPojo workInfoPojo;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output FROM workspec WHERE id=?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.beginTransaction();
        try {
            Cursor query = this.__db.query(acquire);
            ArrayMap<String, ArrayList<String>> arrayMap = new ArrayMap<>();
            int columnIndexOrThrow = query.getColumnIndexOrThrow("id");
            int columnIndexOrThrow2 = query.getColumnIndexOrThrow("state");
            int columnIndexOrThrow3 = query.getColumnIndexOrThrow("output");
            if (query.moveToFirst()) {
                WorkSpec.WorkInfoPojo workInfoPojo2 = new WorkSpec.WorkInfoPojo();
                workInfoPojo2.f50id = query.getString(columnIndexOrThrow);
                workInfoPojo2.state = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                workInfoPojo2.output = Data.fromByteArray(query.getBlob(columnIndexOrThrow3));
                workInfoPojo = workInfoPojo2;
                if (!query.isNull(columnIndexOrThrow)) {
                    String string = query.getString(columnIndexOrThrow);
                    ArrayList<String> arrayList = arrayMap.get(string);
                    ArrayList<String> arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList<>();
                        arrayMap.put(string, arrayList2);
                    }
                    workInfoPojo2.tags = arrayList2;
                    workInfoPojo = workInfoPojo2;
                }
            } else {
                workInfoPojo = null;
            }
            __fetchRelationshipWorkTagAsjavaLangString(arrayMap);
            this.__db.setTransactionSuccessful();
            query.close();
            acquire.release();
            return workInfoPojo;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForIds(List<String> list) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT id, state, output FROM workspec WHERE id IN (");
        int size = list.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size + 0);
        int i = 1;
        for (String str : list) {
            if (str == null) {
                acquire.bindNull(i);
            } else {
                acquire.bindString(i, str);
            }
            i++;
        }
        this.__db.beginTransaction();
        try {
            Cursor query = this.__db.query(acquire);
            ArrayMap<String, ArrayList<String>> arrayMap = new ArrayMap<>();
            int columnIndexOrThrow = query.getColumnIndexOrThrow("id");
            int columnIndexOrThrow2 = query.getColumnIndexOrThrow("state");
            int columnIndexOrThrow3 = query.getColumnIndexOrThrow("output");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                workInfoPojo.f50id = query.getString(columnIndexOrThrow);
                workInfoPojo.state = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                workInfoPojo.output = Data.fromByteArray(query.getBlob(columnIndexOrThrow3));
                if (!query.isNull(columnIndexOrThrow)) {
                    String string = query.getString(columnIndexOrThrow);
                    ArrayList<String> arrayList2 = arrayMap.get(string);
                    ArrayList<String> arrayList3 = arrayList2;
                    if (arrayList2 == null) {
                        arrayList3 = new ArrayList<>();
                        arrayMap.put(string, arrayList3);
                    }
                    workInfoPojo.tags = arrayList3;
                }
                arrayList.add(workInfoPojo);
            }
            __fetchRelationshipWorkTagAsjavaLangString(arrayMap);
            this.__db.setTransactionSuccessful();
            query.close();
            acquire.release();
            return arrayList;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForName(String str) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.beginTransaction();
        try {
            Cursor query = this.__db.query(acquire);
            ArrayMap<String, ArrayList<String>> arrayMap = new ArrayMap<>();
            int columnIndexOrThrow = query.getColumnIndexOrThrow("id");
            int columnIndexOrThrow2 = query.getColumnIndexOrThrow("state");
            int columnIndexOrThrow3 = query.getColumnIndexOrThrow("output");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                workInfoPojo.f50id = query.getString(columnIndexOrThrow);
                workInfoPojo.state = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                workInfoPojo.output = Data.fromByteArray(query.getBlob(columnIndexOrThrow3));
                if (!query.isNull(columnIndexOrThrow)) {
                    String string = query.getString(columnIndexOrThrow);
                    ArrayList<String> arrayList2 = arrayMap.get(string);
                    ArrayList<String> arrayList3 = arrayList2;
                    if (arrayList2 == null) {
                        arrayList3 = new ArrayList<>();
                        arrayMap.put(string, arrayList3);
                    }
                    workInfoPojo.tags = arrayList3;
                }
                arrayList.add(workInfoPojo);
            }
            __fetchRelationshipWorkTagAsjavaLangString(arrayMap);
            this.__db.setTransactionSuccessful();
            query.close();
            acquire.release();
            return arrayList;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForTag(String str) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.beginTransaction();
        try {
            Cursor query = this.__db.query(acquire);
            ArrayMap<String, ArrayList<String>> arrayMap = new ArrayMap<>();
            int columnIndexOrThrow = query.getColumnIndexOrThrow("id");
            int columnIndexOrThrow2 = query.getColumnIndexOrThrow("state");
            int columnIndexOrThrow3 = query.getColumnIndexOrThrow("output");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                workInfoPojo.f50id = query.getString(columnIndexOrThrow);
                workInfoPojo.state = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                workInfoPojo.output = Data.fromByteArray(query.getBlob(columnIndexOrThrow3));
                if (!query.isNull(columnIndexOrThrow)) {
                    String string = query.getString(columnIndexOrThrow);
                    ArrayList<String> arrayList2 = arrayMap.get(string);
                    ArrayList<String> arrayList3 = arrayList2;
                    if (arrayList2 == null) {
                        arrayList3 = new ArrayList<>();
                        arrayMap.put(string, arrayList3);
                    }
                    workInfoPojo.tags = arrayList3;
                }
                arrayList.add(workInfoPojo);
            }
            __fetchRelationshipWorkTagAsjavaLangString(arrayMap);
            this.__db.setTransactionSuccessful();
            query.close();
            acquire.release();
            return arrayList;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForIds(List<String> list) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT id, state, output FROM workspec WHERE id IN (");
        int size = list.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size + 0);
        int i = 1;
        for (String str : list) {
            if (str == null) {
                acquire.bindNull(i);
            } else {
                acquire.bindString(i, str);
            }
            i++;
        }
        return new ComputableLiveData<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.10
            private InvalidationTracker.Observer _observer;

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.arch.lifecycle.ComputableLiveData
            public List<WorkSpec.WorkInfoPojo> compute() {
                if (this._observer == null) {
                    this._observer = new InvalidationTracker.Observer("WorkTag", "workspec") { // from class: androidx.work.impl.model.WorkSpecDao_Impl.10.1
                        @Override // android.arch.persistence.room.InvalidationTracker.Observer
                        public void onInvalidated(@NonNull Set<String> set) {
                            invalidate();
                        }
                    };
                    WorkSpecDao_Impl.this.__db.getInvalidationTracker().addWeakObserver(this._observer);
                }
                WorkSpecDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor query = WorkSpecDao_Impl.this.__db.query(acquire);
                    ArrayMap arrayMap = new ArrayMap();
                    int columnIndexOrThrow = query.getColumnIndexOrThrow("id");
                    int columnIndexOrThrow2 = query.getColumnIndexOrThrow("state");
                    int columnIndexOrThrow3 = query.getColumnIndexOrThrow("output");
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                        workInfoPojo.f50id = query.getString(columnIndexOrThrow);
                        workInfoPojo.state = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                        workInfoPojo.output = Data.fromByteArray(query.getBlob(columnIndexOrThrow3));
                        if (!query.isNull(columnIndexOrThrow)) {
                            String string = query.getString(columnIndexOrThrow);
                            ArrayList arrayList2 = (ArrayList) arrayMap.get(string);
                            ArrayList arrayList3 = arrayList2;
                            if (arrayList2 == null) {
                                arrayList3 = new ArrayList();
                                arrayMap.put(string, arrayList3);
                            }
                            workInfoPojo.tags = arrayList3;
                        }
                        arrayList.add(workInfoPojo);
                    }
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(arrayMap);
                    WorkSpecDao_Impl.this.__db.setTransactionSuccessful();
                    query.close();
                    return arrayList;
                } finally {
                    WorkSpecDao_Impl.this.__db.endTransaction();
                }
            }

            protected void finalize() {
                acquire.release();
            }
        }.getLiveData();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForName(String str) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        return new ComputableLiveData<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.12
            private InvalidationTracker.Observer _observer;

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.arch.lifecycle.ComputableLiveData
            public List<WorkSpec.WorkInfoPojo> compute() {
                if (this._observer == null) {
                    this._observer = new InvalidationTracker.Observer("WorkTag", "workspec", "workname") { // from class: androidx.work.impl.model.WorkSpecDao_Impl.12.1
                        @Override // android.arch.persistence.room.InvalidationTracker.Observer
                        public void onInvalidated(@NonNull Set<String> set) {
                            invalidate();
                        }
                    };
                    WorkSpecDao_Impl.this.__db.getInvalidationTracker().addWeakObserver(this._observer);
                }
                WorkSpecDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor query = WorkSpecDao_Impl.this.__db.query(acquire);
                    ArrayMap arrayMap = new ArrayMap();
                    int columnIndexOrThrow = query.getColumnIndexOrThrow("id");
                    int columnIndexOrThrow2 = query.getColumnIndexOrThrow("state");
                    int columnIndexOrThrow3 = query.getColumnIndexOrThrow("output");
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                        workInfoPojo.f50id = query.getString(columnIndexOrThrow);
                        workInfoPojo.state = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                        workInfoPojo.output = Data.fromByteArray(query.getBlob(columnIndexOrThrow3));
                        if (!query.isNull(columnIndexOrThrow)) {
                            String string = query.getString(columnIndexOrThrow);
                            ArrayList arrayList2 = (ArrayList) arrayMap.get(string);
                            ArrayList arrayList3 = arrayList2;
                            if (arrayList2 == null) {
                                arrayList3 = new ArrayList();
                                arrayMap.put(string, arrayList3);
                            }
                            workInfoPojo.tags = arrayList3;
                        }
                        arrayList.add(workInfoPojo);
                    }
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(arrayMap);
                    WorkSpecDao_Impl.this.__db.setTransactionSuccessful();
                    query.close();
                    return arrayList;
                } finally {
                    WorkSpecDao_Impl.this.__db.endTransaction();
                }
            }

            protected void finalize() {
                acquire.release();
            }
        }.getLiveData();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForTag(String str) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        return new ComputableLiveData<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.11
            private InvalidationTracker.Observer _observer;

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.arch.lifecycle.ComputableLiveData
            public List<WorkSpec.WorkInfoPojo> compute() {
                if (this._observer == null) {
                    this._observer = new InvalidationTracker.Observer("WorkTag", "workspec", "worktag") { // from class: androidx.work.impl.model.WorkSpecDao_Impl.11.1
                        @Override // android.arch.persistence.room.InvalidationTracker.Observer
                        public void onInvalidated(@NonNull Set<String> set) {
                            invalidate();
                        }
                    };
                    WorkSpecDao_Impl.this.__db.getInvalidationTracker().addWeakObserver(this._observer);
                }
                WorkSpecDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor query = WorkSpecDao_Impl.this.__db.query(acquire);
                    ArrayMap arrayMap = new ArrayMap();
                    int columnIndexOrThrow = query.getColumnIndexOrThrow("id");
                    int columnIndexOrThrow2 = query.getColumnIndexOrThrow("state");
                    int columnIndexOrThrow3 = query.getColumnIndexOrThrow("output");
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                        workInfoPojo.f50id = query.getString(columnIndexOrThrow);
                        workInfoPojo.state = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                        workInfoPojo.output = Data.fromByteArray(query.getBlob(columnIndexOrThrow3));
                        if (!query.isNull(columnIndexOrThrow)) {
                            String string = query.getString(columnIndexOrThrow);
                            ArrayList arrayList2 = (ArrayList) arrayMap.get(string);
                            ArrayList arrayList3 = arrayList2;
                            if (arrayList2 == null) {
                                arrayList3 = new ArrayList();
                                arrayMap.put(string, arrayList3);
                            }
                            workInfoPojo.tags = arrayList3;
                        }
                        arrayList.add(workInfoPojo);
                    }
                    WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(arrayMap);
                    WorkSpecDao_Impl.this.__db.setTransactionSuccessful();
                    query.close();
                    return arrayList;
                } finally {
                    WorkSpecDao_Impl.this.__db.endTransaction();
                }
            }

            protected void finalize() {
                acquire.release();
            }
        }.getLiveData();
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int incrementWorkSpecRunAttemptCount(String str) {
        SupportSQLiteStatement acquire = this.__preparedStmtOfIncrementWorkSpecRunAttemptCount.acquire();
        this.__db.beginTransaction();
        try {
            if (str == null) {
                acquire.bindNull(1);
            } else {
                acquire.bindString(1, str);
            }
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfIncrementWorkSpecRunAttemptCount.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void insertWorkSpec(WorkSpec workSpec) {
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfWorkSpec.insert((EntityInsertionAdapter) workSpec);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int markWorkSpecScheduled(String str, long j) {
        SupportSQLiteStatement acquire = this.__preparedStmtOfMarkWorkSpecScheduled.acquire();
        this.__db.beginTransaction();
        try {
            acquire.bindLong(1, j);
            if (str == null) {
                acquire.bindNull(2);
            } else {
                acquire.bindString(2, str);
            }
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfMarkWorkSpecScheduled.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast() {
        SupportSQLiteStatement acquire = this.f51xd91a9514.acquire();
        this.__db.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.f51xd91a9514.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetScheduledState() {
        SupportSQLiteStatement acquire = this.__preparedStmtOfResetScheduledState.acquire();
        this.__db.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfResetScheduledState.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetWorkSpecRunAttemptCount(String str) {
        SupportSQLiteStatement acquire = this.__preparedStmtOfResetWorkSpecRunAttemptCount.acquire();
        this.__db.beginTransaction();
        try {
            if (str == null) {
                acquire.bindNull(1);
            } else {
                acquire.bindString(1, str);
            }
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfResetWorkSpecRunAttemptCount.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setOutput(String str, Data data) {
        SupportSQLiteStatement acquire = this.__preparedStmtOfSetOutput.acquire();
        this.__db.beginTransaction();
        try {
            byte[] byteArray = Data.toByteArray(data);
            if (byteArray == null) {
                acquire.bindNull(1);
            } else {
                acquire.bindBlob(1, byteArray);
            }
            if (str == null) {
                acquire.bindNull(2);
            } else {
                acquire.bindString(2, str);
            }
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfSetOutput.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setPeriodStartTime(String str, long j) {
        SupportSQLiteStatement acquire = this.__preparedStmtOfSetPeriodStartTime.acquire();
        this.__db.beginTransaction();
        try {
            acquire.bindLong(1, j);
            if (str == null) {
                acquire.bindNull(2);
            } else {
                acquire.bindString(2, str);
            }
            acquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfSetPeriodStartTime.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int setState(WorkInfo.State state, String... strArr) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("UPDATE workspec SET state=");
        newStringBuilder.append("?");
        newStringBuilder.append(" WHERE id IN (");
        StringUtil.appendPlaceholders(newStringBuilder, strArr.length);
        newStringBuilder.append(")");
        SupportSQLiteStatement compileStatement = this.__db.compileStatement(newStringBuilder.toString());
        compileStatement.bindLong(1, WorkTypeConverters.stateToInt(state));
        int i = 2;
        for (String str : strArr) {
            if (str == null) {
                compileStatement.bindNull(i);
            } else {
                compileStatement.bindString(i, str);
            }
            i++;
        }
        this.__db.beginTransaction();
        try {
            int executeUpdateDelete = compileStatement.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.__db.endTransaction();
        }
    }
}
