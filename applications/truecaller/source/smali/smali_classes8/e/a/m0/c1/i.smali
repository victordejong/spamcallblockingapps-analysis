.class public Le/a/m0/c1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/c1/h0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE data(_id INTEGER PRIMARY KEY NOT NULL, data_raw_contact_id INTEGER NOT NULL REFERENCES raw_contact(_id) ON DELETE CASCADE ON UPDATE CASCADE,tc_id TEXT NOT NULL, data_type INTEGER NOT NULL, data_is_primary INTEGER, data_phonebook_id INTEGER, data1 TEXT, data2 TEXT, data3 TEXT, data4 TEXT, data5 TEXT, data6 TEXT, data7 TEXT, data8 TEXT, data9 TEXT, data10 TEXT, data11 TEXT)"

    aput-object v2, v0, v1

    const-string v1, "data_raw_contact_id"

    .line 1
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    .line 2
    invoke-static {v2, v1}, Le/a/b0/i/f/b;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "data_type"

    const-string v3, "data1"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v2, v1}, Le/a/b0/i/f/b;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    :goto_0
    if-ge p3, p4, :cond_3

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    const-string p1, "ALTER TABLE data ADD COLUMN data9 TEXT"

    .line 1
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x5

    if-ne p3, p1, :cond_1

    const-string p1, "ALTER TABLE data ADD COLUMN data10 TEXT"

    .line 2
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const/16 p1, 0xa

    if-ne p3, p1, :cond_2

    const-string p1, "data"

    const-string v0, "data_is_primary"

    .line 3
    invoke-static {p2, p1, v0}, Le/a/b0/i/f/b;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "ALTER TABLE data ADD COLUMN data_is_primary INTEGER"

    .line 4
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "ALTER TABLE data ADD COLUMN data_phonebook_id INTEGER"

    .line 5
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "UPDATE data SET data4 = -1 WHERE _id IN (SELECT data._id FROM raw_contact INNER JOIN data ON raw_contact._id = data.data_raw_contact_id WHERE data_type = 4 AND contact_source = 1)"

    .line 6
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public synthetic c()[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Le/a/m0/c1/g0;->b(Le/a/m0/c1/h0;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
