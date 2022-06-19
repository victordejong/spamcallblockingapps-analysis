.class public final Le/a/m0/c1/l;
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
    .locals 1

    const-string v0, "CREATE TABLE msg_im_attachments (\n    _id INTEGER PRIMARY KEY AUTOINCREMENT,\n    entity_id INTEGER NOT NULL REFERENCES msg_entities (_id) ON DELETE CASCADE,\n    uri TEXT NOT NULL,\n    thumbnail BLOB\n)"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/16 p1, 0x1b

    if-ge p3, p1, :cond_0

    if-eqz p2, :cond_0

    const-string p1, "CREATE TABLE msg_im_attachments (\n    _id INTEGER PRIMARY KEY AUTOINCREMENT,\n    entity_id INTEGER NOT NULL REFERENCES msg_entities (_id) ON DELETE CASCADE,\n    uri TEXT NOT NULL,\n    thumbnail BLOB\n)"

    .line 1
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE VIEW msg_im_attachments_entities AS SELECT\n  a._id as _id,\n  e._id as entity_id,\n  a.uri as source_uri,\n  a.thumbnail as thumbnail,\n  e.entity_info1 as current_uri,\n  CASE e.entity_type\n       WHEN 1 THEN e.entity_info4\n       WHEN 2 THEN e.entity_info4\n       WHEN 7 THEN e.entity_info5\n       WHEN 6 THEN e.entity_info4\n       ELSE \'\'\n  END as thumbnail_uri,\n  e.entity_info2 as status,\n  e.entity_info3 as size,\n  e.type as mime_type\nFROM msg_im_attachments a INNER JOIN msg_entities e\nON e._id = a.entity_id\n"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
