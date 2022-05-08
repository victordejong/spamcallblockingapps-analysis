package com.apptentive.android.sdk.storage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.Encryption;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.conversation.ConversationDispatchTask;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.model.ApptentiveMessage;
import com.apptentive.android.sdk.module.messagecenter.MessageManager;
import com.apptentive.android.sdk.module.messagecenter.model.MessageFactory;
import com.apptentive.android.sdk.storage.ApptentiveDatabaseHelper;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/DatabaseMigratorV2.class */
class DatabaseMigratorV2 extends DatabaseMigrator {
    private static final String SQL_SELECT_LEGACY_PAYLOADS = "SELECT * FROM legacy_payload ORDER BY " + LegacyPayloadEntry.PAYLOAD_KEY_DB_ID;
    private static final String SQL_BACKUP_LEGACY_PAYLOAD_TABLE = String.format("ALTER TABLE %s RENAME TO %s;", "payload", "legacy_payload");
    private static final String SQL_DELETE_LEGACY_PAYLOAD_TABLE = String.format("DROP TABLE %s;", "legacy_payload");

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/DatabaseMigratorV2$LegacyPayloadEntry.class */
    private static final class LegacyPayloadEntry {
        static final ApptentiveDatabaseHelper.DatabaseColumn PAYLOAD_KEY_DB_ID = new ApptentiveDatabaseHelper.DatabaseColumn(0, "_id");
        static final ApptentiveDatabaseHelper.DatabaseColumn PAYLOAD_KEY_JSON = new ApptentiveDatabaseHelper.DatabaseColumn(2, "json");

        private LegacyPayloadEntry() {
        }
    }

    public DatabaseMigratorV2(Encryption encryption, File file) {
        super(encryption, file);
    }

    private List<ApptentiveMessage> getAllMessages(SQLiteDatabase sQLiteDatabase) {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            cursor = sQLiteDatabase.rawQuery("SELECT * FROM message ORDER BY COALESCE(id, 'z') ASC", null);
            while (true) {
                cursor = cursor;
                if (!cursor.moveToNext()) {
                    return arrayList;
                }
                String string = cursor.getString(6);
                ApptentiveMessage fromJson = MessageFactory.fromJson(string);
                boolean z = false;
                if (fromJson == null) {
                    ApptentiveLog.m15644e(ApptentiveLogTag.MESSAGES, "Error parsing Record json from database: %s", string);
                } else {
                    fromJson.setId(cursor.getString(1));
                    fromJson.setCreatedAt(Double.valueOf(cursor.getDouble(2)));
                    fromJson.setNonce(cursor.getString(3));
                    fromJson.setState(ApptentiveMessage.State.parse(cursor.getString(4)));
                    if (cursor.getInt(5) == 1) {
                        z = true;
                    }
                    fromJson.setRead(z);
                    arrayList.add(fromJson);
                }
            }
        } finally {
            ensureClosed(cursor);
        }
    }

    private void migrateMessages(SQLiteDatabase sQLiteDatabase) {
        try {
            final List<ApptentiveMessage> allMessages = getAllMessages(sQLiteDatabase);
            ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask(this) { // from class: com.apptentive.android.sdk.storage.DatabaseMigratorV2.1
                @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
                protected boolean execute(Conversation conversation) {
                    MessageManager messageManager = conversation.getMessageManager();
                    List list = allMessages;
                    messageManager.addMessages((ApptentiveMessage[]) list.toArray(new ApptentiveMessage[list.size()]));
                    return true;
                }
            }, "migrate messages");
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception while trying to migrate messages", new Object[0]);
            ErrorMetrics.logException(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:133:0x035e  */
    @Override // com.apptentive.android.sdk.storage.DatabaseMigrator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onUpgrade(android.database.sqlite.SQLiteDatabase r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 869
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.storage.DatabaseMigratorV2.onUpgrade(android.database.sqlite.SQLiteDatabase, int, int):void");
    }
}
