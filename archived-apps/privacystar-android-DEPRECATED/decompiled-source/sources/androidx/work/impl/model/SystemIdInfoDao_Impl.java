package androidx.work.impl.model;

import android.arch.persistence.p000db.SupportSQLiteStatement;
import android.arch.persistence.room.EntityInsertionAdapter;
import android.arch.persistence.room.RoomDatabase;
import android.arch.persistence.room.RoomSQLiteQuery;
import android.arch.persistence.room.SharedSQLiteStatement;
import android.database.Cursor;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/SystemIdInfoDao_Impl.class */
public class SystemIdInfoDao_Impl implements SystemIdInfoDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter __insertionAdapterOfSystemIdInfo;
    private final SharedSQLiteStatement __preparedStmtOfRemoveSystemIdInfo;

    public SystemIdInfoDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
        this.__insertionAdapterOfSystemIdInfo = new EntityInsertionAdapter<SystemIdInfo>(roomDatabase) { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl.1
            public void bind(SupportSQLiteStatement supportSQLiteStatement, SystemIdInfo systemIdInfo) {
                if (systemIdInfo.workSpecId == null) {
                    supportSQLiteStatement.bindNull(1);
                } else {
                    supportSQLiteStatement.bindString(1, systemIdInfo.workSpecId);
                }
                supportSQLiteStatement.bindLong(2, systemIdInfo.systemId);
            }

            @Override // android.arch.persistence.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `SystemIdInfo`(`work_spec_id`,`system_id`) VALUES (?,?)";
            }
        };
        this.__preparedStmtOfRemoveSystemIdInfo = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl.2
            @Override // android.arch.persistence.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM SystemIdInfo where work_spec_id=?";
            }
        };
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public SystemIdInfo getSystemIdInfo(String str) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM SystemIdInfo WHERE work_spec_id=?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        Cursor query = this.__db.query(acquire);
        try {
            return query.moveToFirst() ? new SystemIdInfo(query.getString(query.getColumnIndexOrThrow("work_spec_id")), query.getInt(query.getColumnIndexOrThrow("system_id"))) : null;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void insertSystemIdInfo(SystemIdInfo systemIdInfo) {
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfSystemIdInfo.insert((EntityInsertionAdapter) systemIdInfo);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void removeSystemIdInfo(String str) {
        SupportSQLiteStatement acquire = this.__preparedStmtOfRemoveSystemIdInfo.acquire();
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
            this.__preparedStmtOfRemoveSystemIdInfo.release(acquire);
        }
    }
}
