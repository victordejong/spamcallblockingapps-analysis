package com.privacystar.core.data.sqlite.p008db.block_history;

import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelper;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelperConstants;
import com.privacystar.core.data.sqlite.p008db.block_history.BlockHistoryModel;
/* renamed from: com.privacystar.core.data.sqlite.db.block_history.BlockHistoryContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/block_history/BlockHistoryContract.class */
public class BlockHistoryContract {

    /* renamed from: com.privacystar.core.data.sqlite.db.block_history.BlockHistoryContract$BlockHistoryEntry */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/block_history/BlockHistoryContract$BlockHistoryEntry.class */
    public static abstract class BlockHistoryEntry implements BaseColumns {
        public static final String COLUMN_CALLED_TIMESTAMP = "calledTimestamp";
        public static final String COLUMN_NAME = "name";
        public static final String COLUMN_PHONE = "phone";
        public static final String COLUMN_TYPE = "type";
        public static final String COLUMN_UPLOADED = "uploaded";
        public static final String SQL_CREATE_TABLE = "CREATE TABLE blockHistory (_id INTEGER PRIMARY KEY AUTOINCREMENT,type" + DatabaseHelperConstants.VARCHAR(10) + ",phone" + DatabaseHelperConstants.VARCHAR(20) + ",name" + DatabaseHelperConstants.VARCHAR(100) + ",calledTimestamp" + DatabaseHelperConstants.DATETIME_TYPE + ",uploaded" + DatabaseHelperConstants.DATETIME_TYPE + ");";
        public static final String SQL_DROP_TABLE = "DROP TABLE IF EXISTS blockHistory;";
        public static final String TABLE_NAME = "blockHistory";

        public static BlockHistoryModel.BlockHistory parseCursor(Cursor cursor) {
            BlockHistoryModel.BlockHistory blockHistory = new BlockHistoryModel.BlockHistory();
            blockHistory.type = cursor.getString(cursor.getColumnIndexOrThrow("type"));
            blockHistory.phone = cursor.getString(cursor.getColumnIndexOrThrow("phone"));
            blockHistory.name = cursor.getString(cursor.getColumnIndexOrThrow("name"));
            blockHistory.calledTimestamp = DatabaseHelper.sqlDateStringToLong(cursor.getString(cursor.getColumnIndexOrThrow("calledTimestamp")));
            blockHistory.uploaded = DatabaseHelper.sqlDateStringToLong(cursor.getString(cursor.getColumnIndexOrThrow("uploaded")));
            return blockHistory;
        }

        public static ContentValues toContentValues(BlockHistoryModel.BlockHistory blockHistory) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("type", blockHistory.type);
            contentValues.put("phone", blockHistory.phone);
            contentValues.put("name", blockHistory.name);
            contentValues.put("calledTimestamp", Long.valueOf(blockHistory.calledTimestamp));
            contentValues.put("uploaded", Long.valueOf(blockHistory.uploaded));
            return contentValues;
        }
    }
}
