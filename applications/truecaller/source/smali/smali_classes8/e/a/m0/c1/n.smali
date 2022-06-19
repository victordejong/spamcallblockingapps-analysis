.class public final Le/a/m0/c1/n;
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
    .locals 3

    const-string v0, "CREATE TABLE msg_im_users(normalized_number TEXT UNIQUE, im_peer_id TEXT UNIQUE, date INTEGER NOT NULL, join_im_notification INTEGER NOT NULL DEFAULT 0, registration_timestamp INTEGER NOT NULL DEFAULT 0, tc_id TEXT, fallback_name TEXT, CHECK(normalized_number NOT NULL OR im_peer_id NOT NULL) ON CONFLICT REPLACE)"

    const-string v1, "CREATE INDEX idx_msg_im_users_im_peer_id ON msg_im_users(im_peer_id)"

    const-string v2, "CREATE INDEX idx_msg_im_users_normalized_number ON msg_im_users(normalized_number)"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p4, "context"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "db"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x39

    if-ge p3, p1, :cond_0

    const-string p4, "DROP TABLE IF EXISTS msg_im_users"

    .line 1
    invoke-virtual {p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p4, "CREATE TABLE msg_im_users(normalized_number TEXT UNIQUE, im_peer_id TEXT UNIQUE, date INTEGER NOT NULL, join_im_notification INTEGER NOT NULL DEFAULT 0, registration_timestamp INTEGER NOT NULL DEFAULT 0, tc_id TEXT, fallback_name TEXT, CHECK(normalized_number NOT NULL OR im_peer_id NOT NULL) ON CONFLICT REPLACE)"

    .line 2
    invoke-virtual {p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p4, "CREATE INDEX idx_msg_im_users_im_peer_id ON msg_im_users(im_peer_id)"

    .line 3
    invoke-virtual {p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p4, "CREATE INDEX idx_msg_im_users_normalized_number ON msg_im_users(normalized_number)"

    .line 4
    invoke-virtual {p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/16 p4, 0x49

    if-le p1, p3, :cond_1

    goto :goto_0

    :cond_1
    if-lt p4, p3, :cond_2

    const-string p4, "ALTER TABLE msg_im_users ADD COLUMN join_im_notification INTEGER NOT NULL DEFAULT(0)"

    .line 5
    invoke-virtual {p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/16 p4, 0x4b

    if-le p1, p3, :cond_3

    goto :goto_1

    :cond_3
    if-lt p4, p3, :cond_4

    const-string p1, "ALTER TABLE msg_im_users ADD COLUMN registration_timestamp INTEGER NOT NULL DEFAULT(0)"

    .line 6
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "\n                UPDATE msg_im_users SET join_im_notification = 1\n                WHERE im_peer_id IS NOT NULL\n            "

    .line 7
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic c()[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Le/a/m0/c1/g0;->b(Le/a/m0/c1/h0;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
