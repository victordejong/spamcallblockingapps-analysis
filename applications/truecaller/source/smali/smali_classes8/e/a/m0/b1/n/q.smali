.class public final Le/a/m0/b1/n/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/b1/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE msg_im_users RENAME TO msg_im_users_temp"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n                CREATE TABLE msg_im_users(\n                    normalized_number TEXT UNIQUE,\n                    im_peer_id TEXT UNIQUE,\n                    date INTEGER NOT NULL,\n                    join_im_notification INTEGER NOT NULL DEFAULT 0,\n                    registration_timestamp INTEGER NOT NULL DEFAULT 0,\n                    tc_id TEXT,\n                    CHECK(normalized_number NOT NULL OR im_peer_id NOT NULL) ON CONFLICT REPLACE\n                )\n        "

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n                INSERT INTO msg_im_users SELECT\n                    normalized_number,\n                    im_peer_id,\n                    date,\n                    join_im_notification,\n                    registration_timestamp,\n                    NULL\n                FROM msg_im_users_temp\n                WHERE normalized_number NOT NULL\n                GROUP BY normalized_number\n            "

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE msg_im_users_temp"

    .line 4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
