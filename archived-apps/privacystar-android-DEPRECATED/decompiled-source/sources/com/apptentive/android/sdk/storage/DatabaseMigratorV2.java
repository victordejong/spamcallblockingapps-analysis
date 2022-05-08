package com.apptentive.android.sdk.storage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.conversation.ConversationDispatchTask;
import com.apptentive.android.sdk.encryption.EncryptionKey;
import com.apptentive.android.sdk.model.ApptentiveMessage;
import com.apptentive.android.sdk.module.messagecenter.model.MessageFactory;
import com.apptentive.android.sdk.storage.ApptentiveDatabaseHelper;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/DatabaseMigratorV2.class */
class DatabaseMigratorV2 extends DatabaseMigrator {
    private static final String SQL_SELECT_MESSAGES_IN_ORDER = "SELECT * FROM message ORDER BY COALESCE(id, 'z') ASC";
    private static final String SQL_SELECT_LEGACY_PAYLOADS = "SELECT * FROM legacy_payload ORDER BY " + LegacyPayloadEntry.PAYLOAD_KEY_DB_ID;
    private static final String SQL_BACKUP_LEGACY_PAYLOAD_TABLE = String.format("ALTER TABLE %s RENAME TO %s;", "payload", "legacy_payload");
    private static final String SQL_DELETE_LEGACY_PAYLOAD_TABLE = String.format("DROP TABLE %s;", "legacy_payload");

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/DatabaseMigratorV2$LegacyPayloadEntry.class */
    private static final class LegacyPayloadEntry {
        static final String TABLE_NAME = "legacy_payload";
        static final ApptentiveDatabaseHelper.DatabaseColumn PAYLOAD_KEY_DB_ID = new ApptentiveDatabaseHelper.DatabaseColumn(0, "_id");
        static final ApptentiveDatabaseHelper.DatabaseColumn PAYLOAD_KEY_BASE_TYPE = new ApptentiveDatabaseHelper.DatabaseColumn(1, "base_type");
        static final ApptentiveDatabaseHelper.DatabaseColumn PAYLOAD_KEY_JSON = new ApptentiveDatabaseHelper.DatabaseColumn(2, "json");

        private LegacyPayloadEntry() {
        }
    }

    public DatabaseMigratorV2(EncryptionKey encryptionKey, File file) {
        super(encryptionKey, file);
    }

    private List<ApptentiveMessage> getAllMessages(SQLiteDatabase sQLiteDatabase) {
        Throwable th;
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        try {
            cursor = sQLiteDatabase.rawQuery(SQL_SELECT_MESSAGES_IN_ORDER, null);
            while (cursor.moveToNext()) {
                try {
                    String string = cursor.getString(6);
                    ApptentiveMessage fromJson = MessageFactory.fromJson(string);
                    boolean z = false;
                    if (fromJson == null) {
                        ApptentiveLog.m411e(ApptentiveLogTag.MESSAGES, "Error parsing Record json from database: %s", string);
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
                } catch (Throwable th2) {
                    th = th2;
                    ensureClosed(cursor);
                    throw th;
                }
            }
            ensureClosed(cursor);
            return arrayList;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    private void migrateMessages(SQLiteDatabase sQLiteDatabase) {
        try {
            final List<ApptentiveMessage> allMessages = getAllMessages(sQLiteDatabase);
            ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.storage.DatabaseMigratorV2.1
                @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
                protected boolean execute(Conversation conversation) {
                    conversation.getMessageManager().addMessages((ApptentiveMessage[]) allMessages.toArray(new ApptentiveMessage[allMessages.size()]));
                    return true;
                }
            }, "migrate messages");
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception while trying to migrate messages", new Object[0]);
        }
    }

    /* JADX WARN: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: TypeSearchVarInfo not found in map for var: r11v1 boolean
    	at jadx.core.dex.visitors.typeinference.TypeSearchState.getVarInfo(TypeSearchState.java:34)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.lambda$resolveIndependentVariables$1(TypeSearch.java:174)
    	at java.util.stream.MatchOps$1MatchSink.accept(MatchOps.java:90)
    	at java.util.ArrayList$ArrayListSpliterator.tryAdvance(ArrayList.java:1361)
    	at java.util.stream.ReferencePipeline$7$1.accept(ReferencePipeline.java:276)
    	at java.util.ArrayList$ArrayListSpliterator.tryAdvance(ArrayList.java:1361)
    	at java.util.stream.ReferencePipeline.forEachWithCancel(ReferencePipeline.java:126)
    	at java.util.stream.AbstractPipeline.copyIntoWithCancel(AbstractPipeline.java:499)
    	at java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:486)
    	at java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:472)
    	at java.util.stream.MatchOps$MatchOp.evaluateSequential(MatchOps.java:230)
    	at java.util.stream.MatchOps$MatchOp.evaluateSequential(MatchOps.java:196)
    	at java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)
    	at java.util.stream.ReferencePipeline.allMatch(ReferencePipeline.java:521)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.resolveIndependentVariables(TypeSearch.java:174)
    	at java.util.ArrayList.forEach(ArrayList.java:1259)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:63)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:156)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:107)
     */
    /* JADX WARN: Not initialized variable reg: 12, insn: 0x02d2: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r12 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:95:0x02d2 */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02e0  */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.apptentive.android.sdk.storage.DatabaseMigrator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onUpgrade(android.database.sqlite.SQLiteDatabase r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 743
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.storage.DatabaseMigratorV2.onUpgrade(android.database.sqlite.SQLiteDatabase, int, int):void");
    }
}
