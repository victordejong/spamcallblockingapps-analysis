.class public Le/a/m0/c1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/c1/h0;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "CREATE VIEW aggregated_contact_raw_contact AS SELECT aggregated_contact._id AS _id, aggregated_contact.tc_id AS tc_id, aggregated_contact.tc_flag AS tc_flag, aggregated_contact.aggregated_update_timestamp AS aggregated_update_timestamp, "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Le/a/m0/a1$d;->b:[Ljava/lang/String;

    const-string v2, "aggregated_contact"

    const/4 v3, 0x0

    .line 2
    invoke-static {v2, v3, v1}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Le/a/m0/a1$l;->a:[Ljava/lang/String;

    .line 3
    invoke-static {v2, v3, v4}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "raw_contact"

    const-string v6, "."

    invoke-static {v0, v4, v1, v5, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_id"

    const-string v7, " AS "

    const-string v8, "aggregated_raw_contact_id"

    invoke-static {v0, v4, v7, v8, v1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "tc_id"

    invoke-static {v0, v5, v6, v9, v7}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "aggregated_raw_contact_tc_id"

    invoke-static {v0, v9, v1, v5, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "contact_source"

    const-string v10, "aggregated_raw_contact_source"

    invoke-static {v0, v9, v7, v10, v1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "aggregated_contact_id"

    invoke-static {v0, v5, v6, v9, v7}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v9, v1, v5, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "search_query"

    invoke-static {v0, v10, v7, v10, v1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cache_control"

    invoke-static {v0, v2, v6, v1, v7}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, " FROM "

    const-string v10, " INNER JOIN "

    invoke-static {v0, v1, v7, v2, v10}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, " ON "

    invoke-static {v0, v5, v1, v2, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "="

    invoke-static {v0, v4, v2, v5, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/m0/c1/a;->a:Ljava/lang/String;

    const-string v0, "CREATE VIEW aggregated_contact_data AS SELECT aggregated_contact_raw_contact.*, data._id AS data_id, data.tc_id AS data_tc_id, "

    .line 4
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Le/a/m0/a1$g;->d:[Ljava/lang/String;

    const-string v5, "data"

    .line 5
    invoke-static {v5, v3, v4}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "aggregated_contact_raw_contact"

    const-string v9, " LEFT JOIN "

    invoke-static {v0, v3, v7, v4, v9}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v5, v1, v8, v2}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data_raw_contact_id"

    invoke-static {v0, v5, v6, v1}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/m0/c1/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE aggregated_contact(_id INTEGER PRIMARY KEY, tc_id TEXT NOT NULL, contact_name TEXT, contact_transliterated_name TEXT, contact_is_favorite INT, contact_favorite_position INT, contact_handle TEXT, contact_alt_name TEXT, contact_gender TEXT, contact_about TEXT, contact_image_url TEXT, contact_job_title TEXT, contact_company TEXT, contact_access TEXT, contact_common_connections INT, contact_search_time INT, contact_source INT, contact_default_number TEXT, contact_phonebook_id INT, contact_phonebook_hash INT, contact_phonebook_lookup TEXT, contact_spam_score INT, contact_spam_type TEXT, contact_badges INT DEFAULT 0, tc_flag INT NOT NULL DEFAULT 0, aggregated_update_timestamp INT NOT NULL DEFAULT 0, contact_im_id TEXT, settings_flag INT NOT NULL DEFAULT 0,contact_premium_level VARCHAR(60) NOT NULL DEFAULT \'NONE\',contact_premium_scope VARCHAR(60),cache_control INT DEFAULT NULL,spam_categories TEXT )"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    :goto_0
    if-ge p3, p4, :cond_9

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const-string v0, "CREATE TEMPORARY TABLE temp_aggregated_contact AS SELECT * FROM aggregated_contact"

    .line 1
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE aggregated_contact"

    .line 2
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE aggregated_contact(_id INTEGER PRIMARY KEY, tc_id TEXT NOT NULL, contact_name TEXT, contact_handle TEXT, contact_alt_name TEXT, contact_gender TEXT, contact_about TEXT, contact_image_url TEXT, contact_job_title TEXT, contact_company TEXT, contact_access TEXT, contact_common_connections INT, contact_search_time INT, contact_source INT, contact_default_number TEXT, contact_phonebook_id INT, contact_phonebook_hash INT)"

    .line 3
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO aggregated_contact SELECT * FROM temp_aggregated_contact"

    .line 4
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE temp_aggregated_contact"

    .line 5
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    const-string v0, "ALTER TABLE aggregated_contact ADD COLUMN contact_phonebook_lookup TEXT"

    .line 6
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x4

    if-ne p3, v0, :cond_2

    const-string v0, "DELETE FROM aggregated_contact"

    .line 7
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE raw_contact SET aggregated_contact_id=NULL"

    .line 8
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    .line 9
    sget v2, Lcom/truecaller/content/TruecallerContentProvider;->k:I

    .line 10
    new-instance v2, Landroid/content/Intent;

    const-string v3, "ACTION_RESTORE_AGGREGATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "ARG_DELAY"

    .line 11
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 12
    invoke-static {p1}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    :cond_2
    const/4 v0, 0x7

    if-ne p3, v0, :cond_3

    const-string v0, "ALTER TABLE aggregated_contact ADD COLUMN contact_transliterated_name TEXT"

    .line 13
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    const/16 v0, 0xa

    if-ne p3, v0, :cond_4

    const-string v0, "aggregated_contact"

    const-string v1, "contact_is_favorite"

    .line 14
    invoke-static {p2, v0, v1}, Le/a/b0/i/f/b;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ALTER TABLE aggregated_contact ADD COLUMN contact_is_favorite INT"

    .line 15
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE aggregated_contact ADD COLUMN contact_favorite_position INT"

    .line 16
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0xb

    if-ne p3, v0, :cond_5

    const-string v0, "ALTER TABLE aggregated_contact ADD COLUMN contact_spam_score INT"

    .line 17
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    const/16 v0, 0xe

    if-ne p3, v0, :cond_6

    const-string v0, "ALTER TABLE aggregated_contact ADD COLUMN contact_badges INT DEFAULT 0"

    .line 18
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_6
    const/16 v0, 0x19

    if-ne p3, v0, :cond_7

    const-string v0, "ALTER TABLE aggregated_contact ADD COLUMN tc_flag INT NOT NULL DEFAULT 0"

    .line 19
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_7
    const/16 v0, 0x4f

    if-ne p3, v0, :cond_8

    const-string v0, "ALTER TABLE aggregated_contact ADD COLUMN aggregated_update_timestamp INT NOT NULL DEFAULT 0"

    .line 20
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE aggregated_contact SET aggregated_update_timestamp = ( SELECT MAX(insert_timestamp) FROM raw_contact WHERE aggregated_contact_id = aggregated_contact._id)"

    .line 21
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public c()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sget-object v1, Le/a/m0/c1/a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Le/a/m0/c1/a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
