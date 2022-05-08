package com.privacystar.core.data.sqlite;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.privacystar.core.data.call.caller.PhoneEventType;
import com.privacystar.core.data.model.BlockHistory;
import com.privacystar.core.data.model.BlockList;
import com.privacystar.core.data.model.BlockingOption;
import com.privacystar.core.data.model.CallerId;
import com.privacystar.core.data.model.DeviceExclusion;
import com.privacystar.core.data.model.GroupBlock;
import com.privacystar.core.data.model.Message;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelper;
import com.privacystar.core.data.sqlite.p008db.block_history.BlockHistoryContract;
import com.privacystar.core.data.sqlite.p008db.block_history.BlockHistoryModel;
import com.privacystar.core.data.sqlite.p008db.block_list.BlockListContract;
import com.privacystar.core.data.sqlite.p008db.block_list.BlockListModel;
import com.privacystar.core.data.sqlite.p008db.blocking_options.BlockingOptionsContract;
import com.privacystar.core.data.sqlite.p008db.blocking_options.BlockingOptionsModel;
import com.privacystar.core.data.sqlite.p008db.caller_id.CallerIdContract;
import com.privacystar.core.data.sqlite.p008db.caller_id.CallerIdModel;
import com.privacystar.core.data.sqlite.p008db.exclusions.ExclusionsContract;
import com.privacystar.core.data.sqlite.p008db.exclusions.ExclusionsModel;
import com.privacystar.core.data.sqlite.p008db.messages.MessagesContract;
import com.privacystar.core.data.sqlite.p008db.messages.MessagesModel;
import com.privacystar.core.service.googleplay.util.Base64;
import com.privacystar.core.service.googleplay.util.Base64DecoderException;
import com.privacystar.core.service.network.handler.BlockListPutHandler;
import com.privacystar.core.util.CallerCategoryUtil;
import com.privacystar.core.util.Text;
import hugo.weaving.DebugLog;
import io.realm.ImportFlag;
import io.realm.Realm;
import java.util.Date;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/RealmConverter.class */
public class RealmConverter {
    public static final String BLOCKING_HISTORY_TABLE = "blockingHistory";
    public static final String BLOCKING_OPTIONS_TABLE = "blockingOptions";
    public static final String BLOCK_LIST_TABLE = "blockList";
    public static final String CALLER_ID_CACHE_TABLE = "callerIdCache";
    public static final String EXCLUSIONS_TABLE = "ccMaxExclusions";
    public static final String GROUP_BLOCKING_TABLE = "groupBlocking";
    public static final String SELECT_ALL = "SELECT * FROM %s";
    public static final String TIMBER_ERROR_NO_TABLE = "Could not convert SQLite table %s to Realm.";
    public static final String XTIFY_TABLE = "xtify";

    private static void convertBlockListToRealm(Context context, Realm realm, SQLiteDatabase sQLiteDatabase) {
        Throwable th;
        Exception e;
        Cursor rawQuery;
        if (!SQLiteMigration.from().tableExists(context, "blockList")) {
            Timber.m25w(TIMBER_ERROR_NO_TABLE, "blockList");
            return;
        }
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                rawQuery = sQLiteDatabase.rawQuery(String.format(SELECT_ALL, "blockList"), null);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            convertBlockListToRealmImpl(realm, rawQuery);
            BlockListPutHandler.getInstance().generateAndEnqueueRequest(realm);
            if (rawQuery != null && !rawQuery.isClosed()) {
                rawQuery.close();
            }
        } catch (Exception e3) {
            e = e3;
            cursor = rawQuery;
            cursor2 = cursor;
            Timber.m23w(e, "Error reading table", new Object[0]);
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
        } catch (Throwable th3) {
            th = th3;
            cursor2 = rawQuery;
            if (cursor2 != null && !cursor2.isClosed()) {
                cursor2.close();
            }
            throw th;
        }
    }

    private static void convertBlockListToRealmImpl(Realm realm, final Cursor cursor) {
        Timber.m37d("Obtained cursor to table %s, converting to Realm.", "blockList");
        realm.executeTransaction(new Realm.Transaction(cursor) { // from class: com.privacystar.core.data.sqlite.RealmConverter$$Lambda$1
            private final Cursor arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = cursor;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                RealmConverter.lambda$convertBlockListToRealmImpl$1$RealmConverter(this.arg$1, realm2);
            }
        });
    }

    private static void convertBlockingHistoryToRealm(Context context, Realm realm, SQLiteDatabase sQLiteDatabase) {
        Throwable th;
        Exception e;
        Cursor rawQuery;
        if (!SQLiteMigration.from().tableExists(context, BLOCKING_HISTORY_TABLE)) {
            Timber.m25w(TIMBER_ERROR_NO_TABLE, BLOCKING_HISTORY_TABLE);
            return;
        }
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                rawQuery = sQLiteDatabase.rawQuery(String.format(SELECT_ALL, BLOCKING_HISTORY_TABLE), null);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            convertBlockingHistoryToRealmImpl(realm, rawQuery);
            if (rawQuery != null && !rawQuery.isClosed()) {
                rawQuery.close();
            }
        } catch (Exception e3) {
            e = e3;
            cursor = rawQuery;
            cursor2 = cursor;
            Timber.m23w(e, "Error reading table", new Object[0]);
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
        } catch (Throwable th3) {
            th = th3;
            cursor2 = rawQuery;
            if (cursor2 != null && !cursor2.isClosed()) {
                cursor2.close();
            }
            throw th;
        }
    }

    private static void convertBlockingHistoryToRealmImpl(Realm realm, final Cursor cursor) {
        Timber.m37d("Obtained cursor to table %s, converting to Realm.", BLOCKING_HISTORY_TABLE);
        realm.executeTransaction(new Realm.Transaction(cursor) { // from class: com.privacystar.core.data.sqlite.RealmConverter$$Lambda$0
            private final Cursor arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = cursor;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                RealmConverter.lambda$convertBlockingHistoryToRealmImpl$0$RealmConverter(this.arg$1, realm2);
            }
        });
    }

    private static void convertBlockingOptionsToRealm(Context context, Realm realm, SQLiteDatabase sQLiteDatabase) {
        Throwable th;
        Exception e;
        Cursor rawQuery;
        if (!SQLiteMigration.from().tableExists(context, "blockingOptions")) {
            Timber.m25w(TIMBER_ERROR_NO_TABLE, "blockingOptions");
            return;
        }
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                rawQuery = sQLiteDatabase.rawQuery(String.format(SELECT_ALL, "blockingOptions"), null);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            convertBlockingOptionsToRealmImpl(realm, rawQuery);
            if (rawQuery != null && !rawQuery.isClosed()) {
                rawQuery.close();
            }
        } catch (Exception e3) {
            e = e3;
            cursor = rawQuery;
            cursor2 = cursor;
            Timber.m23w(e, "Error reading table", new Object[0]);
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
        } catch (Throwable th3) {
            th = th3;
            cursor2 = rawQuery;
            if (cursor2 != null && !cursor2.isClosed()) {
                cursor2.close();
            }
            throw th;
        }
    }

    private static void convertBlockingOptionsToRealmImpl(Realm realm, final Cursor cursor) {
        Timber.m37d("Obtained cursor to table %s, converting to Realm.", "blockingOptions");
        realm.executeTransaction(new Realm.Transaction(cursor) { // from class: com.privacystar.core.data.sqlite.RealmConverter$$Lambda$2
            private final Cursor arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = cursor;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                RealmConverter.lambda$convertBlockingOptionsToRealmImpl$2$RealmConverter(this.arg$1, realm2);
            }
        });
    }

    private static void convertCallerIdCacheToRealm(Context context, Realm realm, SQLiteDatabase sQLiteDatabase) {
        Throwable th;
        Exception e;
        Cursor rawQuery;
        if (!SQLiteMigration.from().tableExists(context, "callerIdCache")) {
            Timber.m25w(TIMBER_ERROR_NO_TABLE, "callerIdCache");
            return;
        }
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                rawQuery = sQLiteDatabase.rawQuery(String.format(SELECT_ALL, "callerIdCache"), null);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            convertCallerIdCacheToRealmImpl(realm, rawQuery);
            if (rawQuery != null && !rawQuery.isClosed()) {
                rawQuery.close();
            }
        } catch (Exception e3) {
            e = e3;
            cursor = rawQuery;
            cursor2 = cursor;
            Timber.m23w(e, "Error reading table", new Object[0]);
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
        } catch (Throwable th3) {
            th = th3;
            cursor2 = rawQuery;
            if (cursor2 != null && !cursor2.isClosed()) {
                cursor2.close();
            }
            throw th;
        }
    }

    private static void convertCallerIdCacheToRealmImpl(Realm realm, final Cursor cursor) {
        Timber.m37d("Obtained cursor to table %s, converting to Realm.", "callerIdCache");
        realm.executeTransaction(new Realm.Transaction(cursor) { // from class: com.privacystar.core.data.sqlite.RealmConverter$$Lambda$6
            private final Cursor arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = cursor;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                RealmConverter.lambda$convertCallerIdCacheToRealmImpl$6$RealmConverter(this.arg$1, realm2);
            }
        });
    }

    private static void convertExclusionsToRealm(Context context, Realm realm, SQLiteDatabase sQLiteDatabase) {
        Throwable th;
        Exception e;
        Cursor rawQuery;
        if (!SQLiteMigration.from().tableExists(context, "ccMaxExclusions")) {
            Timber.m25w(TIMBER_ERROR_NO_TABLE, "ccMaxExclusions");
            return;
        }
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                rawQuery = sQLiteDatabase.rawQuery(String.format(SELECT_ALL, "ccMaxExclusions"), null);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            convertExclusionsToRealmImpl(realm, rawQuery);
            if (rawQuery != null && !rawQuery.isClosed()) {
                rawQuery.close();
            }
        } catch (Exception e3) {
            e = e3;
            cursor = rawQuery;
            cursor2 = cursor;
            Timber.m23w(e, "Error reading table", new Object[0]);
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
        } catch (Throwable th3) {
            th = th3;
            cursor2 = rawQuery;
            if (cursor2 != null && !cursor2.isClosed()) {
                cursor2.close();
            }
            throw th;
        }
    }

    private static void convertExclusionsToRealmImpl(Realm realm, final Cursor cursor) {
        Timber.m37d("Obtained cursor to table %s, converting to Realm.", "ccMaxExclusions");
        realm.executeTransaction(new Realm.Transaction(cursor) { // from class: com.privacystar.core.data.sqlite.RealmConverter$$Lambda$5
            private final Cursor arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = cursor;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                RealmConverter.lambda$convertExclusionsToRealmImpl$5$RealmConverter(this.arg$1, realm2);
            }
        });
    }

    private static void convertGroupBlockingToRealm(Context context, Realm realm, SQLiteDatabase sQLiteDatabase) {
        Throwable th;
        Exception e;
        Cursor rawQuery;
        if (!SQLiteMigration.from().tableExists(context, GROUP_BLOCKING_TABLE)) {
            Timber.m25w(TIMBER_ERROR_NO_TABLE, GROUP_BLOCKING_TABLE);
            return;
        }
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                rawQuery = sQLiteDatabase.rawQuery(String.format(SELECT_ALL, GROUP_BLOCKING_TABLE), null);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            convertGroupBlockingToRealmImpl(realm, rawQuery);
            if (rawQuery != null && !rawQuery.isClosed()) {
                rawQuery.close();
            }
        } catch (Exception e3) {
            e = e3;
            cursor = rawQuery;
            cursor2 = cursor;
            Timber.m23w(e, "Error reading table", new Object[0]);
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
        } catch (Throwable th3) {
            th = th3;
            cursor2 = rawQuery;
            if (cursor2 != null && !cursor2.isClosed()) {
                cursor2.close();
            }
            throw th;
        }
    }

    private static void convertGroupBlockingToRealmImpl(Realm realm, final Cursor cursor) {
        Timber.m37d("Obtained cursor to table %s, converting to Realm.", GROUP_BLOCKING_TABLE);
        realm.executeTransaction(new Realm.Transaction(cursor) { // from class: com.privacystar.core.data.sqlite.RealmConverter$$Lambda$4
            private final Cursor arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = cursor;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                RealmConverter.lambda$convertGroupBlockingToRealmImpl$4$RealmConverter(this.arg$1, realm2);
            }
        });
    }

    @DebugLog
    public static void convertSQLiteToRealm(Context context, Realm realm) {
        SQLiteDatabase database = SQLiteMigration.from().getDatabase(context);
        convertBlockingHistoryToRealm(context, realm, database);
        convertBlockListToRealm(context, realm, database);
        convertBlockingOptionsToRealm(context, realm, database);
        convertXtifyToRealm(context, realm, database);
        convertGroupBlockingToRealm(context, realm, database);
        convertExclusionsToRealm(context, realm, database);
        convertCallerIdCacheToRealm(context, realm, database);
    }

    private static void convertXtifyToRealm(Context context, Realm realm, SQLiteDatabase sQLiteDatabase) {
        Throwable th;
        Exception e;
        Cursor rawQuery;
        if (!SQLiteMigration.from().tableExists(context, XTIFY_TABLE)) {
            Timber.m25w(TIMBER_ERROR_NO_TABLE, XTIFY_TABLE);
            return;
        }
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                rawQuery = sQLiteDatabase.rawQuery(String.format(SELECT_ALL, XTIFY_TABLE), null);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            convertXtifyToRealmImpl(realm, rawQuery);
            if (rawQuery != null && !rawQuery.isClosed()) {
                rawQuery.close();
            }
        } catch (Exception e3) {
            e = e3;
            cursor = rawQuery;
            cursor2 = cursor;
            Timber.m23w(e, "Error reading table", new Object[0]);
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
        } catch (Throwable th3) {
            th = th3;
            cursor2 = rawQuery;
            if (cursor2 != null && !cursor2.isClosed()) {
                cursor2.close();
            }
            throw th;
        }
    }

    private static void convertXtifyToRealmImpl(Realm realm, final Cursor cursor) {
        Timber.m37d("Obtained cursor to table %s, converting to Realm.", XTIFY_TABLE);
        realm.executeTransaction(new Realm.Transaction(cursor) { // from class: com.privacystar.core.data.sqlite.RealmConverter$$Lambda$3
            private final Cursor arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = cursor;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                RealmConverter.convertXtifyToRealmImplTrans(realm2, this.arg$1);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void convertXtifyToRealmImplTrans(Realm realm, Cursor cursor) {
        if (cursor.moveToFirst()) {
            while (!cursor.isAfterLast()) {
                MessagesModel.Message parseCursor = MessagesContract.MessagesEntry.parseCursor(cursor);
                try {
                    Message message = new Message();
                    message.setBatchId(Integer.toString(-cursor.getInt(cursor.getColumnIndex("id"))));
                    message.setReceivedDate(new Date(parseCursor.receivedDts));
                    message.setMessageBody(Text.convertToHexString(new String(Base64.decode(parseCursor.message))));
                    message.setMessageTitle(new String(Base64.decode(parseCursor.messageTitle)));
                    message.setExpiration(new Date(DatabaseHelper.sqlDateStringToLong(parseCursor.expiredDate)));
                    message.setRead(!parseCursor.markUnread);
                    realm.copyToRealmOrUpdate((Realm) message, new ImportFlag[0]);
                } catch (Base64DecoderException e) {
                    Timber.m35d(e, "Error decoding legacy encoded String.", new Object[0]);
                }
                cursor.moveToNext();
            }
        }
        long count = realm.where(Message.class).count();
        Timber.m37d("Converted %d entr%s to Realm from %s.", Long.valueOf(count), count == 1 ? "y" : "ies", XTIFY_TABLE);
    }

    @DebugLog
    public static void generateTestData(Context context) {
        Timber.m37d("Generating test data for SQLite tables prior to conversion to Realm.", new Object[0]);
        SQLiteDatabase database = SQLiteMigration.from().getDatabase(context);
        generateTestDataBlockingHistory(database);
        generateTestDataBlockList(database);
        generateTestDataBlockingOptions(database);
        generateTestDataXtify(database);
        generateTestDataGroupBlocking(database);
        generateTestDataExclusions(database);
        generateTestDataCallerIdCache(database);
    }

    private static void generateTestDataBlockList(SQLiteDatabase sQLiteDatabase) {
        Timber.m37d("Executing SQL: %s", "INSERT INTO blockList (type, phone, name, calledTimestamp, callLogTimestamp) VALUES ('call', '5011234321', 'Bad Caller', current_timestamp, current_timestamp);");
        sQLiteDatabase.execSQL("INSERT INTO blockList (type, phone, name, calledTimestamp, callLogTimestamp) VALUES ('call', '5011234321', 'Bad Caller', current_timestamp, current_timestamp);");
    }

    private static void generateTestDataBlockingHistory(SQLiteDatabase sQLiteDatabase) {
        Timber.m37d("Executing SQL: %s", "INSERT INTO blockingHistory (type, phone, name, calledTimestamp) VALUES ('call', '5011231234', '', current_timestamp);");
        sQLiteDatabase.execSQL("INSERT INTO blockingHistory (type, phone, name, calledTimestamp) VALUES ('call', '5011231234', '', current_timestamp);");
    }

    private static void generateTestDataBlockingOptions(SQLiteDatabase sQLiteDatabase) {
        Timber.m37d("Executing SQL: %s", "INSERT INTO blockingOptions (optionType, checked, offline) VALUES ('test', 0, 0);");
        sQLiteDatabase.execSQL("INSERT INTO blockingOptions (optionType, checked, offline) VALUES ('test', 0, 0);");
    }

    private static void generateTestDataCallerIdCache(SQLiteDatabase sQLiteDatabase) {
        Timber.m37d("Executing SQL: %s", "INSERT INTO callerIdCache (phoneNumber, callerName, expires, bitValue, cityState) VALUES ('5011231234', 'Illegal Spoofer', current_timestamp, 1, 'New York, NY');");
        sQLiteDatabase.execSQL("INSERT INTO callerIdCache (phoneNumber, callerName, expires, bitValue, cityState) VALUES ('5011231234', 'Illegal Spoofer', current_timestamp, 1, 'New York, NY');");
    }

    private static void generateTestDataExclusions(SQLiteDatabase sQLiteDatabase) {
        Timber.m37d("Executing SQL: %s", "INSERT INTO ccMaxExclusions (make, model, os) VALUES ('samsung', '', '3.0');");
        sQLiteDatabase.execSQL("INSERT INTO ccMaxExclusions (make, model, os) VALUES ('samsung', '', '3.0');");
    }

    private static void generateTestDataGroupBlocking(SQLiteDatabase sQLiteDatabase) {
        Timber.m37d("Executing SQL: %s", "INSERT INTO groupBlocking (number, name) VALUES ('501*', 'Local AreaCode');");
        sQLiteDatabase.execSQL("INSERT INTO groupBlocking (number, name) VALUES ('501*', 'Local AreaCode');");
    }

    private static void generateTestDataXtify(SQLiteDatabase sQLiteDatabase) {
        Timber.m37d("Executing SQL: %s", "INSERT INTO xtify (message, messageTitle, expiredDate) VALUES ('This is the message body.', 'Message Title', current_timestamp);");
        sQLiteDatabase.execSQL("INSERT INTO xtify (message, messageTitle, expiredDate) VALUES ('This is the message body.', 'Message Title', current_timestamp);");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$convertBlockListToRealmImpl$1$RealmConverter(Cursor cursor, Realm realm) {
        if (cursor.moveToFirst()) {
            while (!cursor.isAfterLast()) {
                BlockListModel.BlockList parseCursor = BlockListContract.BlockListEntry.parseCursor(cursor);
                BlockList blockList = new BlockList();
                blockList.setNumber(parseCursor.phone);
                blockList.setAdded(new Date(parseCursor.calledTimestamp));
                blockList.setName(parseCursor.name);
                blockList.setBlockActive(parseCursor.unblocked != 1);
                blockList.setBlockOffline(parseCursor.offline == 1);
                blockList.setEventType(PhoneEventType.valueFrom(parseCursor.type));
                realm.copyToRealmOrUpdate((Realm) blockList, new ImportFlag[0]);
                cursor.moveToNext();
            }
        }
        long count = realm.where(BlockList.class).count();
        Timber.m37d("Converted %d entr%s to Realm from %s.", Long.valueOf(count), count == 1 ? "y" : "ies", "blockList");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$convertBlockingHistoryToRealmImpl$0$RealmConverter(Cursor cursor, Realm realm) {
        if (cursor.moveToFirst()) {
            while (!cursor.isAfterLast()) {
                BlockHistory blockHistory = (BlockHistory) realm.createObject(BlockHistory.class);
                BlockHistoryModel.BlockHistory parseCursor = BlockHistoryContract.BlockHistoryEntry.parseCursor(cursor);
                blockHistory.setCallerType(PhoneEventType.valueFrom(parseCursor.type));
                blockHistory.setNumber(parseCursor.phone);
                blockHistory.setName(parseCursor.name);
                blockHistory.setTime(new Date(parseCursor.calledTimestamp));
                blockHistory.setUploaded(new Date(parseCursor.uploaded));
                cursor.moveToNext();
            }
        }
        long count = realm.where(BlockHistory.class).count();
        Timber.m37d("Converted %d entr%s to Realm from %s.", Long.valueOf(count), count == 1 ? "y" : "ies", BLOCKING_HISTORY_TABLE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$convertBlockingOptionsToRealmImpl$2$RealmConverter(Cursor cursor, Realm realm) {
        if (cursor.moveToFirst()) {
            while (!cursor.isAfterLast()) {
                BlockingOptionsModel.BlockingOptions parseCursor = BlockingOptionsContract.BlockingOptionsEntry.parseCursor(cursor);
                BlockingOption blockingOption = (BlockingOption) realm.where(BlockingOption.class).equalTo("optionType", parseCursor.optionType).findFirst();
                BlockingOption blockingOption2 = blockingOption;
                if (blockingOption == null) {
                    blockingOption2 = (BlockingOption) realm.createObject(BlockingOption.class);
                }
                blockingOption2.setActive(parseCursor.checked == 1);
                blockingOption2.setMessage(parseCursor.message);
                blockingOption2.setOffline(parseCursor.offline == 1);
                blockingOption2.setOptionType(parseCursor.optionType);
                cursor.moveToNext();
            }
        }
        long count = realm.where(BlockingOption.class).count();
        Timber.m37d("Converted %d entr%s to Realm from %s.", Long.valueOf(count), count == 1 ? "y" : "ies", "blockingOptions");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$convertCallerIdCacheToRealmImpl$6$RealmConverter(Cursor cursor, Realm realm) {
        if (cursor.moveToFirst()) {
            while (!cursor.isAfterLast()) {
                CallerIdModel.CallerId parseCursor = CallerIdContract.CallerIdEntry.parseCursor(cursor);
                CallerId callerId = new CallerId();
                callerId.setNumber(parseCursor.phoneNumber);
                callerId.setName(parseCursor.callerName);
                callerId.setExpiration(new Date(parseCursor.expires));
                callerId.setCity(parseCursor.cityState);
                callerId.setCategoryId(Integer.valueOf(CallerCategoryUtil.categoryIdFromBitValue(parseCursor.bitValue)));
                realm.copyToRealmOrUpdate((Realm) callerId, new ImportFlag[0]);
                cursor.moveToNext();
            }
        }
        long count = realm.where(BlockHistory.class).count();
        Timber.m37d("Converted %d entr%s to Realm from %s.", Long.valueOf(count), count == 1 ? "y" : "ies", "callerIdCache");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$convertExclusionsToRealmImpl$5$RealmConverter(Cursor cursor, Realm realm) {
        if (cursor.moveToFirst()) {
            while (!cursor.isAfterLast()) {
                DeviceExclusion deviceExclusion = (DeviceExclusion) realm.createObject(DeviceExclusion.class);
                ExclusionsModel.Exclusions parseCursor = ExclusionsContract.ExclusionsEntry.parseCursor(cursor);
                deviceExclusion.setMake(parseCursor.make);
                deviceExclusion.setModel(parseCursor.model);
                deviceExclusion.setOs(parseCursor.f274os);
                cursor.moveToNext();
            }
        }
        long count = realm.where(DeviceExclusion.class).count();
        Timber.m37d("Converted %d entr%s to Realm from %s.", Long.valueOf(count), count == 1 ? "y" : "ies", "ccMaxExclusions");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$convertGroupBlockingToRealmImpl$4$RealmConverter(Cursor cursor, Realm realm) {
        if (cursor.moveToFirst()) {
            while (!cursor.isAfterLast()) {
                int columnIndex = cursor.getColumnIndex("number");
                int columnIndex2 = cursor.getColumnIndex("name");
                int columnIndex3 = cursor.getColumnIndex(BlockListContract.BlockListEntry.COLUMN_UNBLOCKED);
                int columnIndex4 = cursor.getColumnIndex("offline");
                GroupBlock groupBlock = new GroupBlock();
                groupBlock.setNumber(cursor.getString(columnIndex));
                groupBlock.setName(cursor.getString(columnIndex2));
                groupBlock.setBlockActive(cursor.getInt(columnIndex3) != 1);
                groupBlock.setBlockOffline(cursor.getInt(columnIndex4) == 1);
                realm.copyToRealmOrUpdate((Realm) groupBlock, new ImportFlag[0]);
                cursor.moveToNext();
            }
        }
        long count = realm.where(GroupBlock.class).count();
        Timber.m37d("Converted %d entr%s to Realm from %s.", Long.valueOf(count), count == 1 ? "y" : "ies", GROUP_BLOCKING_TABLE);
    }
}
