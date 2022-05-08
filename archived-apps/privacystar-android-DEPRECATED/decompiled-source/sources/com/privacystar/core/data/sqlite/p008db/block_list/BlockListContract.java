package com.privacystar.core.data.sqlite.p008db.block_list;

import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelper;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelperConstants;
import com.privacystar.core.data.sqlite.p008db.block_list.BlockListModel;
/* renamed from: com.privacystar.core.data.sqlite.db.block_list.BlockListContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/block_list/BlockListContract.class */
public class BlockListContract {

    /* renamed from: com.privacystar.core.data.sqlite.db.block_list.BlockListContract$BlockListEntry */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/block_list/BlockListContract$BlockListEntry.class */
    public static abstract class BlockListEntry implements BaseColumns {
        public static final String COLUMN_CALLED_TIMESTAMP = "calledTimestamp";
        public static final String COLUMN_CDM_NAME_ID = "cdmNameId";
        public static final String COLUMN_NAME = "name";
        public static final String COLUMN_OFFLINE = "offline";
        public static final String COLUMN_PHONE = "phone";
        public static final String COLUMN_TYPE = "type";
        public static final String SQL_DROP_TABLE = "DROP TABLE IF EXISTS blockList;";
        public static final String TABLE_NAME = "blockList";
        public static final String COLUMN_TRANSACTION_KEY = "transactionKey";
        public static final String COLUMN_UNBLOCKED = "unblocked";
        public static final String COLUMN_NAMED_BLOCK_FLG = "namedBlockFlg";
        public static final String COLUMN_CDM_NAME_TYPE = "cdmNameType";
        public static final String COLUMN_CALL_LOG_TIMESTAMP = "callLogTimestamp";
        public static final String SQL_CREATE_TABLE = "CREATE TABLE blockList (_id INTEGER PRIMARY KEY AUTOINCREMENT,type" + DatabaseHelperConstants.VARCHAR(10) + ",phone" + DatabaseHelperConstants.VARCHAR(20) + ",name" + DatabaseHelperConstants.VARCHAR(100) + ",calledTimestamp" + DatabaseHelperConstants.INT_TYPE + ',' + COLUMN_TRANSACTION_KEY + DatabaseHelperConstants.VARCHAR(36) + ',' + COLUMN_UNBLOCKED + DatabaseHelperConstants.SMALL_INT_TYPE + DatabaseHelperConstants.DEFAULT + " 0,offline" + DatabaseHelperConstants.SMALL_INT_TYPE + DatabaseHelperConstants.DEFAULT + "1,cdmNameId" + DatabaseHelperConstants.INT_TYPE + ',' + COLUMN_NAMED_BLOCK_FLG + DatabaseHelperConstants.INT_TYPE + ',' + COLUMN_CDM_NAME_TYPE + DatabaseHelperConstants.INT_TYPE + ',' + COLUMN_CALL_LOG_TIMESTAMP + DatabaseHelperConstants.INT_TYPE + ");";

        public static BlockListModel.BlockList parseCursor(Cursor cursor) {
            BlockListModel.BlockList blockList = new BlockListModel.BlockList();
            blockList.type = cursor.getString(cursor.getColumnIndexOrThrow("type"));
            blockList.phone = cursor.getString(cursor.getColumnIndexOrThrow("phone"));
            blockList.name = cursor.getString(cursor.getColumnIndexOrThrow("name"));
            blockList.calledTimestamp = DatabaseHelper.sqlDateStringToLong(cursor.getString(cursor.getColumnIndexOrThrow("calledTimestamp")));
            blockList.transactionKey = cursor.getString(cursor.getColumnIndexOrThrow(COLUMN_TRANSACTION_KEY));
            blockList.unblocked = cursor.getInt(cursor.getColumnIndexOrThrow(COLUMN_UNBLOCKED));
            blockList.offline = cursor.getInt(cursor.getColumnIndexOrThrow("offline"));
            blockList.cdmNameId = cursor.getInt(cursor.getColumnIndexOrThrow("cdmNameId"));
            blockList.namedBlockFlg = cursor.getInt(cursor.getColumnIndexOrThrow(COLUMN_NAMED_BLOCK_FLG));
            blockList.cdmNameType = cursor.getInt(cursor.getColumnIndexOrThrow(COLUMN_CDM_NAME_TYPE));
            blockList.callLogTimestamp = DatabaseHelper.sqlDateStringToLong(cursor.getString(cursor.getColumnIndexOrThrow(COLUMN_CALL_LOG_TIMESTAMP)));
            return blockList;
        }

        public static ContentValues toContentValues(BlockListModel.BlockList blockList) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("type", blockList.type);
            contentValues.put("phone", blockList.phone);
            contentValues.put("name", blockList.name);
            contentValues.put("calledTimestamp", Long.valueOf(blockList.calledTimestamp));
            contentValues.put(COLUMN_TRANSACTION_KEY, blockList.transactionKey);
            contentValues.put(COLUMN_UNBLOCKED, Integer.valueOf(blockList.unblocked));
            contentValues.put("offline", Integer.valueOf(blockList.offline));
            contentValues.put("cdmNameId", Integer.valueOf(blockList.cdmNameId));
            contentValues.put(COLUMN_NAMED_BLOCK_FLG, Integer.valueOf(blockList.namedBlockFlg));
            contentValues.put(COLUMN_CDM_NAME_TYPE, Integer.valueOf(blockList.cdmNameType));
            contentValues.put(COLUMN_CALL_LOG_TIMESTAMP, Long.valueOf(blockList.callLogTimestamp));
            return contentValues;
        }
    }
}
