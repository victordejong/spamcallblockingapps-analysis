package p459j.p460a.p474c0.p475c;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import p459j.p460a.p474c0.p475c.p478y.C11608e;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
/* renamed from: j.a.c0.c.j */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/j.class */
public class C11532j extends SQLiteOpenHelper {

    /* renamed from: e */
    public static final String[] f25762e = {"name"};

    /* renamed from: f */
    public static final String[] f25763f = {"CREATE TABLE conversations(_id INTEGER PRIMARY KEY AUTOINCREMENT, sms_thread_id INT DEFAULT(0), name TEXT, latest_message_id INT, snippet_text TEXT, subject_text TEXT, preview_uri TEXT, preview_content_type TEXT, show_draft INT DEFAULT(0), draft_snippet_text TEXT, draft_subject_text TEXT, draft_preview_uri TEXT, draft_preview_content_type TEXT, archive_status INT DEFAULT(0), sort_timestamp INT DEFAULT(0), last_read_timestamp INT DEFAULT(0), icon TEXT, participant_contact_id INT DEFAULT ( -1), participant_lookup_key TEXT, participant_normalized_destination TEXT, current_self_id TEXT, participant_count INT DEFAULT(0), notification_enabled INT DEFAULT(1), notification_sound_uri TEXT, notification_vibration INT DEFAULT(1), include_email_addr INT DEFAULT(0), sms_service_center TEXT );", "CREATE TABLE messages (_id INTEGER PRIMARY KEY AUTOINCREMENT, conversation_id INT, sender_id INT, sent_timestamp INT DEFAULT(0), received_timestamp INT DEFAULT(0), message_protocol INT DEFAULT(0), message_filter_type INT DEFAULT(0), message_status INT DEFAULT(0), seen INT DEFAULT(0), read INT DEFAULT(0), sms_message_uri TEXT, sms_priority INT DEFAULT(0), sms_message_size INT DEFAULT(0), mms_subject TEXT, mms_transaction_id TEXT, mms_content_location TEXT, mms_expiry INT DEFAULT(0), raw_status INT DEFAULT(0), self_id INT, retry_start_timestamp INT DEFAULT(0), FOREIGN KEY (conversation_id) REFERENCES conversations(_id) ON DELETE CASCADE FOREIGN KEY (sender_id) REFERENCES participants(_id) ON DELETE SET NULL FOREIGN KEY (self_id) REFERENCES participants(_id) ON DELETE SET NULL );", "CREATE TABLE parts(_id INTEGER PRIMARY KEY AUTOINCREMENT,message_id INT,text TEXT,uri TEXT,content_type TEXT,width INT DEFAULT(-1),height INT DEFAULT(-1),timestamp INT, conversation_id INT NOT NULL,FOREIGN KEY (message_id) REFERENCES messages(_id) ON DELETE CASCADE FOREIGN KEY (conversation_id) REFERENCES conversations(_id) ON DELETE CASCADE );", "CREATE TABLE participants(_id INTEGER PRIMARY KEY AUTOINCREMENT,sub_id INT DEFAULT(-2),sim_slot_id INT DEFAULT(-1),normalized_destination TEXT,send_destination TEXT,display_destination TEXT,full_name TEXT,first_name TEXT,profile_photo_uri TEXT, contact_id INT DEFAULT( -1), lookup_key STRING, blocked INT DEFAULT(0), subscription_name TEXT, subscription_color INT DEFAULT(0), contact_destination TEXT, UNIQUE (normalized_destination, sub_id) ON CONFLICT FAIL);", "CREATE TABLE conversation_participants(_id INTEGER PRIMARY KEY AUTOINCREMENT,conversation_id INT,participant_id INT,UNIQUE (conversation_id,participant_id) ON CONFLICT FAIL, FOREIGN KEY (conversation_id) REFERENCES conversations(_id) ON DELETE CASCADE FOREIGN KEY (participant_id) REFERENCES participants(_id));"};

    /* renamed from: g */
    public static final String[] f25764g = {"CREATE INDEX index_conversations_sms_thread_id ON conversations(sms_thread_id)", "CREATE INDEX index_conversations_archive_status ON conversations(archive_status)", "CREATE INDEX index_conversations_sort_timestamp ON conversations(sort_timestamp)", "CREATE INDEX index_messages_sort ON messages(conversation_id, message_status, received_timestamp)", "CREATE INDEX index_messages_status_seen ON messages(message_status, seen)", "CREATE INDEX index_parts_message_id ON parts(message_id)", "CREATE INDEX index_conversation_participants_conversation_id ON conversation_participants(conversation_id)"};

    /* renamed from: h */
    public static final String[] f25765h = {"CREATE TRIGGER parts_TRIGGER AFTER INSERT ON parts FOR EACH ROW  BEGIN UPDATE parts SET timestamp= (SELECT received_timestamp FROM messages WHERE messages._id=NEW.message_id) WHERE parts._id=NEW._id; END", "CREATE TRIGGER messages_TRIGGER AFTER UPDATE OF received_timestamp ON messages FOR EACH ROW BEGIN UPDATE parts SET timestamp = NEW.received_timestamp WHERE parts.message_id = NEW._id; END;"};

    /* renamed from: i */
    public static final String[] f25766i = {C11608e.m8945n(), C11525e.m9269a(), "CREATE VIEW draft_parts_view AS SELECT parts._id as _id, parts.message_id as message_id, parts.text as text, parts.uri as uri, parts.content_type as content_type, parts.width as width, parts.height as height, messages.conversation_id as conversation_id  FROM messages LEFT JOIN parts ON (messages._id=parts.message_id) WHERE messages.message_status = 3"};

    /* renamed from: j */
    public static final Object f25767j = new Object();

    /* renamed from: k */
    public static C11532j f25768k;

    /* renamed from: a */
    public final Context f25769a;

    /* renamed from: c */
    public C11534l f25771c;

    /* renamed from: b */
    public final Object f25770b = new Object();

    /* renamed from: d */
    public final C11533k f25772d = new C11533k();

    public C11532j(Context context) {
        super(context, "bugle_db", null, 4, null);
        this.f25769a = context;
    }

    /* renamed from: a */
    public static C11532j m9238a(Context context) {
        C11532j jVar;
        synchronized (f25767j) {
            if (f25768k == null) {
                f25768k = new C11532j(context);
            }
            jVar = f25768k;
        }
        return jVar;
    }

    /* renamed from: a */
    public static String m9239a(int i) {
        return String.format("INSERT INTO participants ( sub_id ) VALUES ( %s )", Integer.valueOf(i));
    }

    /* renamed from: a */
    public static void m9237a(SQLiteDatabase sQLiteDatabase) {
        for (String str : f25763f) {
            sQLiteDatabase.execSQL(str);
        }
        for (String str2 : f25764g) {
            sQLiteDatabase.execSQL(str2);
        }
        for (String str3 : f25766i) {
            sQLiteDatabase.execSQL(str3);
        }
        for (String str4 : f25765h) {
            sQLiteDatabase.execSQL(str4);
        }
        sQLiteDatabase.execSQL("PRAGMA foreign_keys=ON;");
        sQLiteDatabase.execSQL(m9239a(-1));
        AbstractC11528g.m9259k().mo9251a(sQLiteDatabase);
    }

    /* renamed from: a */
    public static void m9236a(SQLiteDatabase sQLiteDatabase, String str, boolean z) {
        try {
            sQLiteDatabase.execSQL("DROP VIEW IF EXISTS " + str);
        } catch (SQLException e) {
            if (C12153d0.m6992a("MessagingApp", 3)) {
                C12153d0.m6991a("MessagingApp", "unable to drop view " + str + " " + e);
            }
            if (z) {
                throw e;
            }
        }
    }

    /* renamed from: b */
    public static void m9235b(SQLiteDatabase sQLiteDatabase) {
        Cursor query = sQLiteDatabase.query("sqlite_master", f25762e, "type='index'", null, null, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    String string = query.getString(0);
                    try {
                        sQLiteDatabase.execSQL("DROP INDEX IF EXISTS " + string);
                    } catch (SQLException e) {
                        if (C12153d0.m6992a("MessagingApp", 3)) {
                            C12153d0.m6991a("MessagingApp", "unable to drop index " + string + " " + e);
                        }
                    }
                } finally {
                    query.close();
                }
            }
        }
    }

    /* renamed from: c */
    public static void m9234c(SQLiteDatabase sQLiteDatabase) {
        Cursor query = sQLiteDatabase.query("sqlite_master", f25762e, "type='table'", null, null, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    String string = query.getString(0);
                    if (!string.startsWith("android_") && !string.startsWith("sqlite_")) {
                        try {
                            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + string);
                        } catch (SQLException e) {
                            if (C12153d0.m6992a("MessagingApp", 3)) {
                                C12153d0.m6991a("MessagingApp", "unable to drop table " + string + " " + e);
                            }
                        }
                    }
                } finally {
                    query.close();
                }
            }
        }
    }

    /* renamed from: d */
    public static void m9233d(SQLiteDatabase sQLiteDatabase) {
        Cursor query = sQLiteDatabase.query("sqlite_master", f25762e, "type='trigger'", null, null, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    String string = query.getString(0);
                    if (!string.startsWith("android_") && !string.startsWith("sqlite_")) {
                        try {
                            sQLiteDatabase.execSQL("DROP TRIGGER IF EXISTS " + string);
                        } catch (SQLException e) {
                            if (C12153d0.m6992a("MessagingApp", 3)) {
                                C12153d0.m6991a("MessagingApp", "unable to drop trigger " + string + " " + e);
                            }
                        }
                    }
                } finally {
                    query.close();
                }
            }
        }
    }

    /* renamed from: e */
    public static void m9232e(SQLiteDatabase sQLiteDatabase) {
        Cursor query = sQLiteDatabase.query("sqlite_master", f25762e, "type='view'", null, null, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    m9236a(sQLiteDatabase, query.getString(0), false);
                } finally {
                    query.close();
                }
            }
        }
    }

    /* renamed from: f */
    public static void m9231f(SQLiteDatabase sQLiteDatabase) {
        m9234c(sQLiteDatabase);
        m9232e(sQLiteDatabase);
        m9235b(sQLiteDatabase);
        m9233d(sQLiteDatabase);
        m9237a(sQLiteDatabase);
    }

    /* renamed from: a */
    public C11534l m9240a() {
        C11534l lVar;
        C12151d.m7002b();
        synchronized (this.f25770b) {
            if (this.f25771c == null) {
                this.f25771c = new C11534l(this.f25769a, getWritableDatabase());
            }
            lVar = this.f25771c;
        }
        return lVar;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        m9237a(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        this.f25772d.m9228b(sQLiteDatabase, i, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        this.f25772d.m9229a(sQLiteDatabase, i, i2);
    }
}
