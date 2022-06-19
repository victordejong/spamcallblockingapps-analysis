.class public final Le/a/m0/b1/g;
.super Le/a/m0/b1/j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/m0/b1/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x54

    return v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0

    const-string p2, "db"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "\n               CREATE TABLE msg_im_reactions (\n               _id INTEGER PRIMARY KEY AUTOINCREMENT,\n               message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE,\n               emoji TEXT,\n               from_peer_id TEXT,\n               send_date INTEGER DEFAULT(0)\n               )\n            "

    .line 1
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
