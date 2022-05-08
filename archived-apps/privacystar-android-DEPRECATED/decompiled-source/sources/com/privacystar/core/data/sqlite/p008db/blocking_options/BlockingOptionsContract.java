package com.privacystar.core.data.sqlite.p008db.blocking_options;

import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelperConstants;
import com.privacystar.core.data.sqlite.p008db.blocking_options.BlockingOptionsModel;
/* renamed from: com.privacystar.core.data.sqlite.db.blocking_options.BlockingOptionsContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/blocking_options/BlockingOptionsContract.class */
public class BlockingOptionsContract {

    /* renamed from: com.privacystar.core.data.sqlite.db.blocking_options.BlockingOptionsContract$BlockingOptionsEntry */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/blocking_options/BlockingOptionsContract$BlockingOptionsEntry.class */
    public static abstract class BlockingOptionsEntry implements BaseColumns {
        public static final String COLUMN_MESSAGE = "message";
        public static final String COLUMN_OFFLINE = "offline";
        public static final String COLUMN_OPTION_TYPE = "optionType";
        public static final String SQL_DROP_TABLE = "DROP TABLE IF EXISTS blockingOptions;";
        public static final String TABLE_NAME = "blockingOptions";
        public static final String COLUMN_CHECKED = "checked";
        public static final String SQL_CREATE_TABLE = "CREATE TABLE blockingOptions (_id INTEGER PRIMARY KEY AUTOINCREMENT,optionType" + DatabaseHelperConstants.VARCHAR(20) + DatabaseHelperConstants.CONSTRAINT + "optionType" + DatabaseHelperConstants.UNIQUE + ',' + COLUMN_CHECKED + DatabaseHelperConstants.SMALL_INT_TYPE + ",message" + DatabaseHelperConstants.VARCHAR(160) + ",offline" + DatabaseHelperConstants.SMALL_INT_TYPE + DatabaseHelperConstants.DEFAULT + " 1);";

        public static BlockingOptionsModel.BlockingOptions parseCursor(Cursor cursor) {
            BlockingOptionsModel.BlockingOptions blockingOptions = new BlockingOptionsModel.BlockingOptions();
            blockingOptions.optionType = cursor.getString(cursor.getColumnIndexOrThrow("optionType"));
            blockingOptions.checked = cursor.getInt(cursor.getColumnIndexOrThrow(COLUMN_CHECKED));
            blockingOptions.message = cursor.getString(cursor.getColumnIndexOrThrow("message"));
            blockingOptions.offline = cursor.getInt(cursor.getColumnIndexOrThrow("offline"));
            return blockingOptions;
        }

        public static ContentValues toContentValues(BlockingOptionsModel.BlockingOptions blockingOptions) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("optionType", blockingOptions.optionType);
            contentValues.put(COLUMN_CHECKED, Integer.valueOf(blockingOptions.checked));
            contentValues.put("message", blockingOptions.message);
            contentValues.put("offline", Integer.valueOf(blockingOptions.offline));
            return contentValues;
        }
    }
}
