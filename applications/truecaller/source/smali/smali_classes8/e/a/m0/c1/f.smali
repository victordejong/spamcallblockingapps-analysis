.class public final Le/a/m0/c1/f;
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

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\n    CREATE TABLE contact_sorting_index (\n        aggregated_contact_id INTEGER NOT NULL,\n        first_name TEXT DEFAULT NULL,\n        last_name TEXT DEFAULT NULL,\n        sorting_key_1 TEXT DEFAULT NULL,\n        sorting_key_2 TEXT DEFAULT NULL,\n        sorting_group_1 TEXT DEFAULT NULL,\n        sorting_group_2 TEXT DEFAULT NULL,\n        contact_update_timestamp INTEGER DEFAULT NULL)\n    "

    aput-object v2, v0, v1

    const-string v1, "sorting_key_1"

    .line 1
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "contact_sorting_index"

    invoke-static {v2, v1}, Le/a/b0/i/f/b;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ProviderUtil.getCreateIn\u2026gTable.SORTING_MODE1_KEY)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "sorting_key_2"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Le/a/b0/i/f/b;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ProviderUtil.getCreateIn\u2026gTable.SORTING_MODE2_KEY)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "aggregated_contact_id"

    .line 3
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Le/a/b0/i/f/b;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProviderUtil.getCreateIn\u2026le.AGGREGATED_CONTACT_ID)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string p4, "context"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "db"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x4e

    if-ge p3, p1, :cond_0

    const-string p1, "table"

    const-string p3, "contact_sorting_index"

    .line 1
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    const-string p3, "SELECT \'drop \' || type || \' \' || name || \';\' FROM sqlite_master WHERE name !=\'android_metadata\' AND type=? and name=?"

    .line 2
    invoke-static {p2, p3, p1}, Le/a/b0/i/f/b;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Le/a/m0/c1/f;->a()[Ljava/lang/String;

    move-result-object p1

    .line 4
    array-length p3, p1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    aget-object v0, p1, p4

    .line 5
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sget-object v1, Le/a/m0/c1/g;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 2
    sget-object v2, Le/a/m0/c1/g;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method
