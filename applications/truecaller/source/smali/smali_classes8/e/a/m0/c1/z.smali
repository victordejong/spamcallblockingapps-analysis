.class public final Le/a/m0/c1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/c1/h0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/m0/c1/z$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 6

    const-string v0, "CREATE TABLE msg_participants (_id INTEGER PRIMARY KEY AUTOINCREMENT, type INTEGER DEFAULT(0), tc_im_peer_id TEXT, raw_destination TEXT DEFAULT(\'\'), normalized_destination TEXT DEFAULT(\'\'), country_code TEXT DEFAULT(\'\') COLLATE NOCASE, aggregated_contact_id INTEGER NOT NULL DEFAULT(-1), filter_action INTEGER DEFAULT(0), is_top_spammer INTEGER DEFAULT(0),top_spam_score INTEGER DEFAULT(0),phonebook_count INTEGER DEFAULT(0),im_business_state INTEGER DEFAULT(-1),im_business_feature_flags INTEGER DEFAULT(0),pb_numbers_count INTEGER DEFAULT(0),is_spam INTEGER DEFAULT(0),  UNIQUE(normalized_destination) ON CONFLICT FAIL)"

    const-string v1, "CREATE INDEX msg_participants_normalized_destination_idx ON msg_participants(normalized_destination)"

    const-string v2, "CREATE INDEX idx_msg_participants_aggregated_contact_id ON msg_participants(aggregated_contact_id)"

    const-string v3, "CREATE TABLE msg_conversation_participants(participant_id INTEGER NOT NULL,filter INTEGER DEFAULT (0),conversation_id INTEGER NOT NULL REFERENCES msg_conversations (_id) ON DELETE CASCADE, UNIQUE(participant_id, conversation_id) ON CONFLICT REPLACE)"

    const-string v4, "CREATE INDEX idx_msg_conversation_participants_conversation_id ON msg_conversation_participants(conversation_id)"

    const-string v5, "CREATE INDEX idx_msg_conversation_participants_participant_id ON msg_conversation_participants(participant_id)"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7

    const-string p4, "context"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "db"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0xc

    if-ge p3, p1, :cond_0

    const-string p4, "CREATE TABLE msg_participants (_id INTEGER PRIMARY KEY AUTOINCREMENT, type INTEGER DEFAULT(0), tc_im_peer_id TEXT, raw_destination TEXT DEFAULT(\'\'), normalized_destination TEXT DEFAULT(\'\'), country_code TEXT DEFAULT(\'\') COLLATE NOCASE, aggregated_contact_id INTEGER NOT NULL DEFAULT(-1), filter_action INTEGER DEFAULT(0), is_top_spammer INTEGER DEFAULT(0),top_spam_score INTEGER DEFAULT(0),phonebook_count INTEGER DEFAULT(0),im_business_state INTEGER DEFAULT(-1),im_business_feature_flags INTEGER DEFAULT(0),pb_numbers_count INTEGER DEFAULT(0),is_spam INTEGER DEFAULT(0),  UNIQUE(normalized_destination) ON CONFLICT FAIL)"

    .line 1
    invoke-virtual {p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p4, "CREATE INDEX msg_participants_normalized_destination_idx ON msg_participants(normalized_destination)"

    .line 2
    invoke-virtual {p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p4, "CREATE TABLE msg_conversation_participants(participant_id INTEGER NOT NULL,filter INTEGER DEFAULT (0),conversation_id INTEGER NOT NULL REFERENCES msg_conversations (_id) ON DELETE CASCADE, UNIQUE(participant_id, conversation_id) ON CONFLICT REPLACE)"

    .line 3
    invoke-virtual {p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p4, "CREATE INDEX idx_msg_conversation_participants_conversation_id ON msg_conversation_participants(conversation_id)"

    .line 4
    invoke-virtual {p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p4, "CREATE INDEX idx_msg_conversation_participants_participant_id ON msg_conversation_participants(participant_id)"

    .line 5
    invoke-virtual {p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/16 p4, 0xe

    if-ge p3, p4, :cond_1

    const-string p4, "UPDATE msg_participants SET type=0 WHERE type=1 AND substr(normalized_destination,1,1)=\'+\' "

    .line 6
    invoke-virtual {p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const/16 p4, 0x2e

    if-le p1, p3, :cond_2

    goto :goto_0

    :cond_2
    if-lt p4, p3, :cond_3

    const-string p4, "ALTER TABLE msg_conversation_participants ADD COLUMN filter INTEGER DEFAULT (0)"

    .line 7
    invoke-virtual {p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/16 p4, 0x33

    if-le p1, p3, :cond_4

    goto :goto_1

    :cond_4
    if-lt p4, p3, :cond_5

    .line 8
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p4

    const-class v0, Le/a/m0/c1/z$a;

    invoke-static {p4, v0}, Le/q/f/a/d/a;->x0(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Le/a/m0/c1/z$a;

    .line 9
    invoke-interface {p4}, Le/a/m0/c1/z$a;->V4()Le/a/m0/z0;

    move-result-object p4

    const-string v0, "ALTER TABLE msg_participants ADD COLUMN country_code TEXT DEFAULT (\'\') COLLATE NOCASE"

    .line 10
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 11
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p4, Le/a/m0/z0;->c:Ls1/w/f;

    new-instance v4, Le/a/m0/y0;

    const/4 v0, 0x0

    invoke-direct {v4, p4, v0}, Le/a/m0/y0;-><init>(Le/a/m0/z0;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_5
    :goto_1
    const/16 p4, 0x40

    if-le p1, p3, :cond_6

    goto :goto_2

    :cond_6
    if-lt p4, p3, :cond_7

    const-string p1, "ALTER TABLE msg_participants ADD COLUMN phonebook_count INTEGER DEFAULT (0)"

    .line 12
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "\n                UPDATE msg_participants\n                    SET phonebook_count = (SELECT COUNT(*)\n                        FROM data\n                        WHERE data_type = 4\n                            AND data_phonebook_id NOT NULL\n                            AND data1 = normalized_destination)\n            "

    .line 13
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public c()[Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ls1/z/c/f0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ls1/z/c/f0;-><init>(I)V

    .line 2
    iget-object v1, v0, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    const-string v2, "CREATE VIEW msg_participants_with_contact_info AS SELECT p._id AS _id,cp.conversation_id AS conversation_id, p.type AS type,p.raw_destination AS raw_destination,NULL as national_destination, p.normalized_destination AS normalized_destination,p.country_code AS country_code,p.tc_im_peer_id AS tc_im_peer_id,p.aggregated_contact_id AS aggregated_contact_id,a.tc_id AS tc_id,p.filter_action AS filter_action,p.is_top_spammer AS is_top_spammer,p.top_spam_score AS top_spam_score,p.im_business_state AS im_business_state,p.im_business_feature_flags AS im_business_feature_flags,p.pb_numbers_count AS pb_numbers_count,a.contact_name AS name,a.contact_image_url AS image_url,a.contact_source AS source,a.contact_badges AS badges,a.contact_company AS company_name,a.contact_search_time AS search_time,a.contact_premium_level AS premium_level,a.cache_control AS cache_control,IFNULL(a.contact_phonebook_id,-1) AS phonebook_id,MAX(IFNULL(a.contact_spam_score, 0), top_spam_score) AS spam_score,a.contact_spam_type AS spam_type FROM msg_participants p LEFT JOIN msg_conversation_participants cp ON p._id = cp.participant_id LEFT JOIN aggregated_contact a ON a._id = p.aggregated_contact_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "\n            CREATE TRIGGER trigger_participant_phonebook_count_on_participant_insert\n                AFTER INSERT\n                ON msg_participants\n            BEGIN UPDATE msg_participants\n                SET phonebook_count = (SELECT COUNT(*)\n                    FROM data\n                    WHERE data_type = 4\n                        AND data1 = new.normalized_destination\n                        AND data_phonebook_id NOT NULL),\n                    is_spam = (SELECT COUNT(data11) > 0\n                    FROM data\n                    WHERE data_type = 4\n                        AND data1 = new.normalized_destination),\n                    pb_numbers_count = \n    (SELECT COUNT(DISTINCT data1) FROM raw_contact_data\n        WHERE aggregated_contact_id=new.aggregated_contact_id AND \n            data_type=4 AND data_phonebook_id NOT NULL)\n\n                WHERE _id = new._id;\n            END\n        "

    const-string v2, "\n            CREATE TRIGGER trigger_participant_phonebook_count_on_data_insert\n                AFTER INSERT\n                ON data\n                WHEN new.data_type = 4 AND new.data_phonebook_id NOT NULL\n            BEGIN UPDATE msg_participants\n                SET phonebook_count = phonebook_count + 1, \n                    is_spam = CASE new.data11 IS NOT NULL WHEN 1 THEN 1 ELSE 0 END\n                WHERE normalized_destination = new.data1;\n            END\n        "

    const-string v3, "\n            CREATE TRIGGER trigger_participant_phonebook_count_on_data_delete\n                AFTER DELETE\n                ON data\n                WHEN old.data_type = 4 AND old.data_phonebook_id NOT NULL\n            BEGIN UPDATE msg_participants\n                SET phonebook_count = phonebook_count - 1\n                WHERE normalized_destination = old.data1;\n            END\n        "

    .line 3
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ls1/z/c/f0;->b()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 5
    iget-object v0, v0, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
