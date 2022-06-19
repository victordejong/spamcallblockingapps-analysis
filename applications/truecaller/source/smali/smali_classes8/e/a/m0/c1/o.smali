.class public Le/a/m0/c1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/c1/h0;


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public a:Le/a/m0/b1/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "CREATE VIEW msg_messages_with_entities AS "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const-string v2, "SELECT m.*, p._id AS participant_id, p.type AS me_participant_type, p.tc_im_peer_id AS me_participant_im_id, p.raw_destination AS me_participant_raw_destination, p.normalized_destination AS me_participant_normalized_destination, p.country_code AS me_participant_country_code, p.aggregated_contact_id AS me_participant_aggregated_contact_id, p.filter_action AS me_participant_filter_action, p.is_top_spammer AS me_participant_is_top_spammer, p.top_spam_score AS me_participant_top_spam_score, p.im_business_state AS me_participant_im_business_state, a.contact_name AS me_participant_name, a.contact_image_url AS me_participant_image_url, a.contact_source AS me_participant_source, IFNULL(a.contact_badges, 0) AS me_participant_badges, a.contact_company AS me_participant_company_name, a.contact_search_time AS me_participant_search_time, IFNULL(a.contact_phonebook_id, -1) AS me_participant_phonebook_id, a.tc_id AS me_participant_tc_id, MAX(IFNULL(a.contact_spam_score, 0), p.top_spam_score) AS me_participant_spam_score, a.contact_spam_type AS me_participant_spam_type, a.contact_premium_level AS me_participant_premium_level, a.cache_control AS me_participant_cache_control, ig.title AS me_group_title, ig.avatar AS me_group_avatar, GROUP_CONCAT(e._id, \'|\') AS me_entities_id, GROUP_CONCAT(e.entity_type, \'|\') AS me_entities_type, GROUP_CONCAT(LENGTH(e.type) || \'|\' || e.type, \"\") AS me_entities_mime_type, GROUP_CONCAT(LENGTH(e.entity_info1) || \'|\' || e.entity_info1, \"\") AS entity_info1, GROUP_CONCAT(LENGTH(e.entity_info2) || \'|\' || e.entity_info2, \"\") AS entity_info2, GROUP_CONCAT(LENGTH(e.entity_info3) || \'|\' || e.entity_info3, \"\") AS entity_info3, GROUP_CONCAT(LENGTH(e.entity_info4) || \'|\' || e.entity_info4, \"\") AS entity_info4, GROUP_CONCAT(LENGTH(e.entity_info5) || \'|\' || e.entity_info5, \"\") AS entity_info5, GROUP_CONCAT(LENGTH(e.entity_info6) || \'|\' || e.entity_info6, \"\") AS entity_info6, GROUP_CONCAT(LENGTH(e.entity_info7) || \'|\' || e.entity_info7, \"\") AS entity_info7, rm.status AS re_message_status, ra.contact_name AS re_participant_name, rp.normalized_destination AS re_participant_normalized_address, rp.type AS re_participant_type, GROUP_CONCAT(re._id, \'|\') AS re_entities_id, GROUP_CONCAT(re.entity_type, \'|\') AS re_entities_type, GROUP_CONCAT(LENGTH(re.type) || \'|\' || re.type, \"\") AS re_entities_mime_type, GROUP_CONCAT(LENGTH(re.entity_info1) || \'|\' || re.entity_info1, \"\") AS re_entity_info1, GROUP_CONCAT(LENGTH(re.entity_info2) || \'|\' || re.entity_info2, \"\") AS re_entity_info2, GROUP_CONCAT(LENGTH(re.entity_info3) || \'|\' || re.entity_info3, \"\") AS re_entity_info3, GROUP_CONCAT(LENGTH(re.entity_info4) || \'|\' || re.entity_info4, \"\") AS re_entity_info4, GROUP_CONCAT(LENGTH(re.entity_info5) || \'|\' || re.entity_info5, \"\") AS re_entity_info5, GROUP_CONCAT(LENGTH(re.entity_info6) || \'|\' || re.entity_info6, \"\") AS re_entity_info6 FROM (SELECT * FROM msg_messages%s) m JOIN msg_entities e ON m._id = e.message_id LEFT JOIN msg_participants p ON p._id = m.participant_id LEFT JOIN aggregated_contact a ON p.aggregated_contact_id = a._id LEFT JOIN msg_messages rm ON rm._id = m.reply_to_msg_id LEFT JOIN msg_entities re ON rm._id = re.message_id LEFT JOIN msg_participants rp ON rp._id = rm.participant_id LEFT JOIN aggregated_contact ra ON ra._id = rp.aggregated_contact_id LEFT JOIN msg_conversations c ON m.conversation_id = c._id LEFT JOIN msg_im_group_info ig ON ig.im_group_id = c.tc_group_id %sGROUP BY m._id%s"

    .line 2
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/m0/c1/o;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Le/a/m0/b1/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/m0/c1/o;->a:Le/a/m0/b1/f;

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 19

    const-string v0, "CREATE TABLE msg_messages(_id INTEGER PRIMARY KEY AUTOINCREMENT, conversation_id INTEGER NOT NULL, participant_id INTEGER NOT NULL, date INTEGER DEFAULT(0), date_sent INTEGER DEFAULT(0), status INTEGER DEFAULT(0), seen INTEGER DEFAULT(0), read INTEGER DEFAULT(0), locked INTEGER DEFAULT(0), transport INTEGER DEFAULT(3),sim_token TEXT NOT NULL DEFAULT(\'-1\'),scheduled_transport INTEGER DEFAULT(3),analytics_id TEXT, hidden_number INTEGER DEFAULT(0),raw_address TEXT,category INTEGER, sync_status INTEGER DEFAULT(0),classification INTEGER DEFAULT(0),retry_count INTEGER DEFAULT(0),retry_date INTEGER DEFAULT(0),reply_to_msg_id INTEGER DEFAULT(-1),sequence_number INTEGER NOT NULL DEFAULT(0),group_id_day INTEGER NOT NULL DEFAULT(-1),group_id_minute INTEGER NOT NULL DEFAULT(-1),analytics_context TEXT, send_schedule_date INTEGER NOT NULL DEFAULT(0), important INTEGER DEFAULT(0), important_date INTEGER NOT NULL DEFAULT(0), language TEXT, edit_message_id INTEGER DEFAULT(-1),edit_message_date INTEGER DEFAULT(0),raw_id TEXT,info1 TEXT,info2 TEXT,info3 TEXT,info4 TEXT,info5 TEXT,info6 TEXT,info7 TEXT,info8 TEXT,info9 TEXT,info10 TEXT,info11 TEXT,info12 TEXT,info13 TEXT,info14 TEXT,info15 TEXT,info16 TEXT,info17 TEXT,info18 TEXT,info19 TEXT,info20 TEXT,info21 TEXT,info22 TEXT,info23 TEXT,info24 TEXT,info25 TEXT,info26 TEXT,info27 TEXT)"

    const-string v1, "CREATE INDEX idx_msg_messages_conversation_id_sequence_number_date ON msg_messages (conversation_id, sequence_number, date)"

    const-string v2, "CREATE INDEX idx_msg_messages_participant_id ON msg_messages (participant_id)"

    const-string v3, "CREATE INDEX idx_msg_messages_date ON msg_messages (date)"

    const-string v4, "CREATE INDEX idx_msg_messages_seen_date ON msg_messages (seen, date)"

    const-string v5, "CREATE INDEX idx_msg_messages_transport_raw_id ON msg_messages (transport, raw_id)"

    const-string v6, "CREATE TABLE msg_entities (_id INTEGER PRIMARY KEY AUTOINCREMENT, message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE, type TEXT NOT NULL, entity_type INTEGER NOT NULL DEFAULT(8),entity_info1 TEXT NOT NULL DEFAULT(\'\'), entity_info2 TEXT NOT NULL DEFAULT(\'\'), entity_info3 TEXT NOT NULL DEFAULT(\'\'), entity_info4 TEXT NOT NULL DEFAULT(\'\'), entity_info5 TEXT NOT NULL DEFAULT(\'\'), entity_info6 TEXT NOT NULL DEFAULT(\'\'), entity_info7 TEXT NOT NULL DEFAULT(\'\'), edited INTEGER NOT NULL DEFAULT(0))"

    const-string v7, "CREATE INDEX idx_msg_entities_message_id ON msg_entities(message_id)"

    const-string v8, "CREATE TABLE msg_im_reactions (_id INTEGER PRIMARY KEY AUTOINCREMENT, message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE, emoji TEXT,from_peer_id TEXT,status INTEGER DEFAULT(0),send_date INTEGER DEFAULT(0))"

    const-string v9, "CREATE INDEX idx_msg_im_reactions_status ON msg_im_reactions(status)"

    const-string v10, "CREATE TABLE msg_im_unsupported_events (_id INTEGER PRIMARY KEY AUTOINCREMENT, event BLOB NOT NULL, api_version INTEGER DEFAULT(0),event_type INTEGER DEFAULT(0))"

    const-string v11, "CREATE INDEX idx_msg_im_unsupported_events_api_version ON msg_im_unsupported_events(api_version)"

    const-string v12, "CREATE TABLE msg_im_unprocessed_events (_id INTEGER PRIMARY KEY AUTOINCREMENT, event BLOB NOT NULL, im_group_id TEXT NOT NULL, reference_raw_id TEXT NOT NULL, seq_number INTEGER DEFAULT(-1), event_type INTEGER DEFAULT(0))"

    const-string v13, "CREATE INDEX idx_msg_im_unprocessed_events_reference_raw_id ON msg_im_unprocessed_events(reference_raw_id)"

    const-string v14, "CREATE INDEX idx_msg_im_unprocessed_events_seq_number ON msg_im_unprocessed_events(seq_number)"

    const-string v15, "CREATE TABLE msg_im_group_reports (group_id TEXT NOT NULL REFERENCES msg_im_group_info (im_group_id) ON DELETE CASCADE, peer_id TEXT, type INTEGER NOT NULL DEFAULT(0), sequence_number INTEGER DEFAULT(0), date INTEGER DEFAULT(0))"

    const-string v16, "CREATE TABLE msg_im_mentions (_id INTEGER PRIMARY KEY AUTOINCREMENT, message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE, im_id TEXT,m_offset INTEGER DEFAULT(-1),m_length INTEGER DEFAULT(-1),private_name TEXT,public_name TEXT )"

    const-string v17, "CREATE TABLE msg_links (entity_id INTEGER NOT NULL REFERENCES msg_entities (_id) ON DELETE CASCADE, message_id INTEGER NOT NULL, link TEXT NOT NULL, UNIQUE (message_id, link) ON CONFLICT REPLACE )"

    const-string v18, "CREATE TABLE msg_im_quick_actions (_id INTEGER PRIMARY KEY AUTOINCREMENT, message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE, action_type INTEGER DEFAULT(-1), action_value TEXT )"

    .line 1
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/m0/c1/o;->a:Le/a/m0/b1/f;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "db"

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p4, 0xc

    if-ge p3, p4, :cond_0

    const-string v0, "\n    CREATE TABLE msg_messages (\n        _id INTEGER PRIMARY KEY AUTOINCREMENT,\n        conversation_id INTEGER NOT NULL,\n        participant_id INTEGER NOT NULL,\n        date INTEGER DEFAULT(0),\n        date_sent INTEGER DEFAULT(0),\n        status INTEGER DEFAULT(0),\n        seen INTEGER DEFAULT(0),\n        read INTEGER DEFAULT(0),\n        locked INTEGER DEFAULT(0),\n        transport INTEGER DEFAULT(3),\n        sim_token TEXT NOT NULL DEFAULT(\'-1\'),\n        scheduled_transport INTEGER DEFAULT(3),\n        analytics_id TEXT,\n        hidden_number INTEGER DEFAULT(0),\n        raw_address TEXT,\n        category INTEGER,\n        sync_status INTEGER DEFAULT(0),\n        classification INTEGER DEFAULT(0),\n        retry_count INTEGER DEFAULT(0),\n        retry_date INTEGER DEFAULT(0),\n        reply_to_msg_id INTEGER DEFAULT(-1),\n        sequence_number INTEGER NOT NULL DEFAULT(0)\n    )\n    "

    .line 3
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n    CREATE INDEX idx_msg_messages_conversation_id_sequence_number_date ON msg_messages (conversation_id, sequence_number, date)\n    "

    .line 4
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n    CREATE INDEX idx_msg_messages_participant_id ON msg_messages (participant_id)\n    "

    .line 5
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n    CREATE TABLE msg_entities (\n        _id INTEGER PRIMARY KEY AUTOINCREMENT,\n        message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE,\n        type TEXT NOT NULL,\n        content TEXT NOT NULL,\n        thumbnail TEXT NOT NULL DEFAULT(\'\'),\n        width INTEGER DEFAULT(-1),\n        height INTEGER DEFAULT(-1),\n        duration INTEGER DEFAULT(-1),\n        status INTEGER DEFAULT(0),\n        size INTEGER DEFAULT(-1)\n    )\n    "

    .line 6
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n    CREATE INDEX idx_msg_entities_message_id ON msg_entities (message_id)\n    "

    .line 7
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n    CREATE TABLE msg_sms_transport_info (\n        _id INTEGER PRIMARY KEY AUTOINCREMENT,\n        message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE,\n        raw_id INTEGER NOT NULL,\n        raw_status INTEGER NOT NULL,\n        raw_thread_id INTEGER NOT NULL DEFAULT(-1),\n        message_uri TEXT NOT NULL,\n        protocol INTEGER,\n        type INTEGER,\n        service_center TEXT,\n        subject TEXT,\n        error_code INTEGER,\n        reply_path_present INTEGER,\n        stripped_raw_address TEXT\n    )\n    "

    .line 8
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n    CREATE TABLE msg_mms_transport_info (\n        _id INTEGER PRIMARY KEY AUTOINCREMENT,\n        message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE,\n        raw_id INTEGER NOT NULL,\n        raw_status INTEGER NOT NULL,\n        raw_thread_id INTEGER NOT NULL DEFAULT(-1),\n        message_uri TEXT NOT NULL,\n        version INTEGER NOT NULL,\n        type INTEGER NOT NULL,\n        mms_message_id TEXT,\n        transaction_id TEXT,\n        subject TEXT,\n        subject_charset INTEGER DEFAULT(0),\n        retrieve_text TEXT,\n        retrieve_text_charset INTEGER DEFAULT(0),\n        content_location TEXT,\n        content_type TEXT,\n        content_class INTEGER DEFAULT(0),\n        expiry INTEGER DEFAULT(0),\n        priority INTEGER DEFAULT(0),\n        size INTEGER DEFAULT(0),\n        retrieve_status INTEGER DEFAULT(0),\n        response_status INTEGER DEFAULT(0),\n        response_text TEXT,\n        message_class TEXT,\n        message_box INTEGER DEFAULT(0),\n        delivery_report INTEGER DEFAULT(0),\n        delivery_time INTEGER DEFAULT(0),\n        read_report INTEGER DEFAULT(0),\n        read_status INTEGER DEFAULT(0),\n        report_allowed INTEGER DEFAULT(0)\n    )\n    "

    .line 9
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n    CREATE INDEX idx_msg_sms_transport_info_message_id ON msg_sms_transport_info (message_id)\n    "

    .line 10
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n    CREATE INDEX idx_msg_mms_transport_info_message_id ON msg_mms_transport_info (message_id)\n    "

    .line 11
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x15

    if-ge p3, v0, :cond_1

    const-string v1, "DROP TABLE IF EXISTS msg_im_transport_info"

    .line 12
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "\n    CREATE TABLE msg_im_transport_info (\n        _id INTEGER PRIMARY KEY AUTOINCREMENT,\n        message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE,\n        raw_id TEXT NOT NULL,\n        im_status INTEGER DEFAULT(0),\n        delivery_status INTEGER DEFAULT(0),\n        read_status INTEGER DEFAULT(0),\n        delivery_sync_status INTEGER(0),\n        read_sync_status INTEGER DEFAULT(0),\n        error_code INTEGER DEFAULT(0),\n        api_version INTEGER DEFAULT(0),\n        peer_id TEXT,\n        read_send_time INTEGER DEFAULT(0),\n        random_id INTEGER DEFAULT(0),\n        reactions TEXT,\n        event_type INTEGER DEFAULT(0)\n    )\n    "

    .line 13
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "\n    CREATE INDEX idx_msg_im_transport_info_message_id ON msg_im_transport_info (message_id)\n    "

    .line 14
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    if-lt p3, p4, :cond_2

    const/16 v1, 0x16

    if-ge p3, v1, :cond_2

    const-string v1, "ALTER TABLE msg_entities ADD COLUMN status INTEGER DEFAULT 0"

    .line 15
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    if-lt p3, v0, :cond_3

    const/16 v1, 0x1c

    if-ge p3, v1, :cond_3

    const-string v1, "ALTER TABLE msg_im_transport_info ADD COLUMN error_code INTEGER DEFAULT (0)"

    .line 16
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    if-lt p3, p4, :cond_4

    const/16 v1, 0x1d

    if-ge p3, v1, :cond_4

    const-string v1, "ALTER TABLE msg_entities ADD COLUMN size INTEGER DEFAULT (-1)"

    .line 17
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    if-lt p3, v0, :cond_5

    const/16 v1, 0x1f

    if-ge p3, v1, :cond_5

    const-string v1, "ALTER TABLE msg_im_transport_info ADD COLUMN delivery_sync_status INTEGER DEFAULT (0)"

    .line 18
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    if-lt p3, p4, :cond_6

    const/16 v1, 0x20

    if-ge p3, v1, :cond_6

    const-string v1, "ALTER TABLE msg_messages ADD COLUMN hidden_number INTEGER DEFAULT (0)"

    .line 19
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_6
    if-lt p3, p4, :cond_7

    const/16 v1, 0x21

    if-ge p3, v1, :cond_7

    const-string v1, "ALTER TABLE msg_messages ADD COLUMN analytics_id TEXT"

    .line 20
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_7
    const/16 v1, 0x28

    if-ge p3, v1, :cond_8

    const-string v1, "\n    CREATE INDEX idx_msg_messages_date ON msg_messages (date)\n    "

    .line 21
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "\n    CREATE INDEX idx_msg_messages_seen_date ON msg_messages (seen, date)\n    "

    .line 22
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_8
    if-lt p3, p4, :cond_9

    const/16 v1, 0x2e

    if-ge p3, v1, :cond_9

    const-string v1, "ALTER TABLE msg_messages ADD COLUMN raw_address TEXT"

    .line 23
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE msg_sms_transport_info ADD COLUMN stripped_raw_address TEXT"

    .line 24
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_9
    if-lt p3, p4, :cond_a

    const/16 v1, 0x2f

    if-ge p3, v1, :cond_a

    const-string v1, "ALTER TABLE msg_messages ADD COLUMN category INTEGER"

    .line 25
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE msg_messages ADD COLUMN sync_status INTEGER DEFAULT (0)"

    .line 26
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE msg_messages ADD COLUMN classification INTEGER DEFAULT (0)"

    .line 27
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_a
    if-lt p3, v0, :cond_b

    const/16 v1, 0x31

    if-ge p3, v1, :cond_b

    const-string v1, "ALTER TABLE msg_im_transport_info ADD COLUMN api_version INTEGER DEFAULT(0)"

    .line 28
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_b
    if-lt p3, p4, :cond_c

    const/16 v1, 0x33

    if-ge p3, v1, :cond_c

    const-string v1, "ALTER TABLE msg_entities ADD COLUMN duration INTEGER DEFAULT (-1)"

    .line 29
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_c
    if-lt p3, p4, :cond_d

    const/16 v1, 0x35

    if-ge p3, v1, :cond_d

    const-string v1, "ALTER TABLE msg_entities ADD COLUMN thumbnail TEXT NOT NULL DEFAULT (\'\')"

    .line 30
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_d
    if-lt p3, v0, :cond_e

    const/16 v1, 0x38

    if-ge p3, v1, :cond_e

    const-string v1, "ALTER TABLE msg_im_transport_info ADD COLUMN peer_id TEXT"

    .line 31
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE msg_im_transport_info ADD COLUMN read_send_time INTEGER DEFAULT(0)"

    .line 32
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_e
    if-lt p3, p4, :cond_f

    const/16 p4, 0x46

    if-ge p3, p4, :cond_f

    const-string p4, "ALTER TABLE msg_messages ADD COLUMN retry_count INTEGER DEFAULT(0)"

    .line 33
    invoke-virtual {p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p4, "ALTER TABLE msg_messages ADD COLUMN retry_date INTEGER DEFAULT(0)"

    .line 34
    invoke-virtual {p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_f
    if-lt p3, v0, :cond_10

    const/16 p4, 0x4f

    if-ge p3, p4, :cond_10

    const-string p4, "ALTER TABLE msg_im_transport_info ADD COLUMN random_id INTEGER DEFAULT(0)"

    .line 35
    invoke-virtual {p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_10
    const/16 p4, 0x54

    if-lt p3, v0, :cond_11

    if-ge p3, p4, :cond_11

    const-string v0, "ALTER TABLE msg_im_transport_info ADD COLUMN reactions TEXT"

    .line 36
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_11
    if-ge p3, p4, :cond_12

    .line 37
    iget-object p1, p1, Le/a/m0/b1/f;->a:Le/a/m0/b1/g;

    invoke-virtual {p1, p2, p3}, Le/a/m0/b1/g;->b(Landroid/database/sqlite/SQLiteDatabase;I)V

    :cond_12
    return-void
.end method

.method public c()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sget-object v1, Le/a/m0/c1/o;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "CREATE TRIGGER trigger_im_info_transport_on_reactions_insert AFTER INSERT ON msg_im_reactions BEGIN UPDATE msg_messages SET info9=(SELECT GROUP_CONCAT(emoji, \'|\') FROM msg_im_reactions WHERE new.message_id=message_id ORDER BY send_date) WHERE _id=new.message_id; END"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CREATE TRIGGER trigger_im_info_transport_on_reactions_delete AFTER DELETE ON msg_im_reactions BEGIN UPDATE msg_messages SET info9=(SELECT GROUP_CONCAT(emoji, \'|\') FROM msg_im_reactions WHERE old.message_id=message_id ORDER BY send_date) WHERE _id=old.message_id; END"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CREATE TRIGGER trigger_im_info_transport_on_quick_action_insert AFTER INSERT ON msg_im_quick_actions BEGIN UPDATE msg_messages SET info20=(SELECT GROUP_CONCAT(action_value, \'|\') FROM msg_im_quick_actions WHERE new.message_id=message_id) WHERE _id=new.message_id; END"

    aput-object v2, v0, v1

    return-object v0
.end method
