.class public Le/a/m0/c1/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/c1/h0;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "CREATE VIEW raw_contact_data AS SELECT raw_contact._id AS _id, raw_contact.tc_id AS tc_id, raw_contact.tc_flag AS tc_flag, raw_contact.insert_timestamp AS insert_timestamp, raw_contact.aggregated_contact_id AS aggregated_contact_id, raw_contact.search_query AS search_query, raw_contact.cache_control AS cache_control, "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Le/a/m0/a1$d;->b:[Ljava/lang/String;

    const-string v2, "raw_contact"

    const/4 v3, 0x0

    .line 2
    invoke-static {v2, v3, v1}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ", "

    const-string v5, "data"

    const-string v6, "."

    invoke-static {v0, v1, v4, v5, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_id"

    const-string v7, " AS "

    const-string v8, "data_id"

    invoke-static {v0, v1, v7, v8, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "tc_id"

    invoke-static {v0, v5, v6, v8, v7}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "data_tc_id"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Le/a/m0/a1$g;->d:[Ljava/lang/String;

    .line 3
    invoke-static {v5, v3, v4}, Le/a/b0/i/f/b;->e(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " FROM "

    const-string v7, " LEFT JOIN "

    invoke-static {v0, v3, v4, v2, v7}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, " ON "

    invoke-static {v0, v5, v3, v2, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "="

    invoke-static {v0, v1, v2, v5, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data_raw_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/m0/c1/e0;->a:Ljava/lang/String;

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
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE raw_contact(_id INTEGER PRIMARY KEY, aggregated_contact_id INTEGER REFERENCES aggregated_contact(_id) ON DELETE SET NULL ON UPDATE CASCADE, tc_id TEXT UNIQUE NOT NULL, contact_name TEXT, contact_transliterated_name TEXT, contact_is_favorite INT, contact_favorite_position INT, contact_handle TEXT, contact_alt_name TEXT, contact_gender TEXT, contact_about TEXT, contact_image_url TEXT, contact_job_title TEXT, contact_company TEXT, contact_access TEXT, contact_common_connections INT, contact_search_time INT, contact_source INT, contact_default_number TEXT, contact_phonebook_id INT, contact_phonebook_hash INT, contact_phonebook_lookup TEXT,search_query TEXT,cache_control TEXT,spam_categories TEXT,contact_spam_score INT,contact_spam_type TEXT,contact_badges INT DEFAULT 0, tc_flag INT NOT NULL DEFAULT 0, insert_timestamp INT NOT NULL DEFAULT 0, contact_im_id TEXT, settings_flag INT NOT NULL DEFAULT 0);"

    aput-object v2, v0, v1

    const-string v1, "aggregated_contact_id"

    .line 1
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw_contact"

    .line 2
    invoke-static {v2, v1}, Le/a/b0/i/f/b;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "tc_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v2, v1}, Le/a/b0/i/f/b;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "contact_phonebook_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v2, v1}, Le/a/b0/i/f/b;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "contact_im_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v2, v1}, Le/a/b0/i/f/b;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    :goto_0
    if-ge p3, p4, :cond_9

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    const-string p1, "ALTER TABLE raw_contact ADD COLUMN contact_phonebook_lookup TEXT"

    .line 1
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x4

    if-ne p3, p1, :cond_1

    const-string p1, "ALTER TABLE raw_contact ADD COLUMN search_query TEXT"

    .line 2
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x7

    if-ne p3, p1, :cond_2

    const-string p1, "ALTER TABLE raw_contact ADD COLUMN contact_transliterated_name TEXT"

    .line 3
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const/16 p1, 0x8

    if-ne p3, p1, :cond_3

    const-string p1, "ALTER TABLE raw_contact ADD COLUMN cache_control TEXT"

    .line 4
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    const/16 p1, 0xa

    if-ne p3, p1, :cond_4

    const-string p1, "raw_contact"

    const-string v0, "contact_is_favorite"

    .line 5
    invoke-static {p2, p1, v0}, Le/a/b0/i/f/b;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "ALTER TABLE raw_contact ADD COLUMN contact_is_favorite INT"

    .line 6
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "ALTER TABLE raw_contact ADD COLUMN contact_favorite_position INT"

    .line 7
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    const/16 p1, 0xb

    if-ne p3, p1, :cond_5

    const-string p1, "ALTER TABLE raw_contact ADD COLUMN contact_spam_score INT"

    .line 8
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    const/16 p1, 0xe

    if-ne p3, p1, :cond_6

    const-string p1, "ALTER TABLE raw_contact ADD COLUMN contact_badges INT DEFAULT 0"

    .line 9
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_6
    const/16 p1, 0x19

    if-ne p3, p1, :cond_7

    const-string p1, "ALTER TABLE raw_contact ADD COLUMN tc_flag INT NOT NULL DEFAULT 0"

    .line 10
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_7
    const/16 p1, 0x23

    if-ne p3, p1, :cond_8

    const-string p1, "ALTER TABLE raw_contact ADD COLUMN insert_timestamp INT NOT NULL DEFAULT 0"

    .line 11
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "UPDATE raw_contact SET insert_timestamp = strftime(\'%s\',\'now\')"

    .line 12
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public c()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sget-object v1, Le/a/m0/c1/e0;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "CREATE TRIGGER IF NOT EXISTS insert_timestamp_trigger AFTER INSERT ON raw_contact BEGIN  UPDATE raw_contact SET insert_timestamp=strftime(\'%s\',\'now\') WHERE _id=NEW._id; END;"

    aput-object v2, v0, v1

    return-object v0
.end method
