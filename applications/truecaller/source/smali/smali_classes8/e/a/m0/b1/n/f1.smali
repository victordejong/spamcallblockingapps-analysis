.class public final Le/a/m0/b1/n/f1;
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

    const-string v0, "ALTER TABLE msg_im_group_participants RENAME TO msg_im_group_participants_temp"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n            CREATE TABLE msg_im_group_participants (\n                im_group_id TEXT NOT NULL,\n                im_peer_id TEXT NOT NULL,\n                roles INTEGER NOT NULL DEFAULT 0,\n                UNIQUE(im_group_id, im_peer_id)\n            )\n        "

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n            INSERT INTO msg_im_group_participants (im_group_id, im_peer_id, roles) SELECT im_group_id, im_peer_id, roles FROM msg_im_group_participants_temp\n        "

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE msg_im_group_participants_temp"

    .line 4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE msg_im_group_reports (\n                        group_id TEXT NOT NULL REFERENCES \n                        msg_im_group_info (im_group_id) ON DELETE CASCADE, \n                        peer_id TEXT, \n                        type INTEGER NOT NULL DEFAULT(0), \n                        sequence_number INTEGER DEFAULT(0), \n                        date INTEGER DEFAULT(0)\n                    )\n                    "

    .line 5
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
