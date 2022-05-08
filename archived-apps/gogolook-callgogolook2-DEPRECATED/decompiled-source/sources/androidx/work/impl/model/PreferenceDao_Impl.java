package androidx.work.impl.model;

import android.database.Cursor;
import androidx.lifecycle.LiveData;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.DBUtil;
import androidx.sqlite.p008db.SupportSQLiteStatement;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/PreferenceDao_Impl.class */
public final class PreferenceDao_Impl implements PreferenceDao {
    public final RoomDatabase __db;
    public final EntityInsertionAdapter<Preference> __insertionAdapterOfPreference;

    public PreferenceDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
        this.__insertionAdapterOfPreference = new EntityInsertionAdapter<Preference>(roomDatabase) { // from class: androidx.work.impl.model.PreferenceDao_Impl.1
            public void bind(SupportSQLiteStatement supportSQLiteStatement, Preference preference) {
                String str = preference.mKey;
                if (str == null) {
                    supportSQLiteStatement.bindNull(1);
                } else {
                    supportSQLiteStatement.bindString(1, str);
                }
                Long l = preference.mValue;
                if (l == null) {
                    supportSQLiteStatement.bindNull(2);
                } else {
                    supportSQLiteStatement.bindLong(2, l.longValue());
                }
            }

            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
            }
        };
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public Long getLongValue(String str) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT long_value FROM Preference where `key`=?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        Long l = null;
        try {
            if (query.moveToFirst()) {
                l = query.isNull(0) ? null : Long.valueOf(query.getLong(0));
            }
            return l;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public LiveData<Long> getObservableLongValue(String str) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT long_value FROM Preference where `key`=?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"Preference"}, false, new Callable<Long>() { // from class: androidx.work.impl.model.PreferenceDao_Impl.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                Cursor query = DBUtil.query(PreferenceDao_Impl.this.__db, acquire, false, null);
                Long l = null;
                try {
                    if (query.moveToFirst()) {
                        l = query.isNull(0) ? null : Long.valueOf(query.getLong(0));
                    }
                    return l;
                } finally {
                    query.close();
                }
            }

            public void finalize() {
                acquire.release();
            }
        });
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public void insertPreference(Preference preference) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfPreference.insert((EntityInsertionAdapter<Preference>) preference);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }
}
