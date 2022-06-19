.class public final Le/a/m0/b1/n/q1;
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
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "db"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ALTER TABLE msg_entities RENAME TO msg_entities_temp"

    .line 1
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "\n            CREATE TABLE msg_entities(\n            _id INTEGER PRIMARY KEY AUTOINCREMENT, \n            message_id INTEGER NOT NULL REFERENCES msg_messages(_id) ON DELETE CASCADE, \n            type TEXT NOT NULL, \n            entity_type INTEGER NOT NULL DEFAULT(8), \n            entity_info1 TEXT NOT NULL DEFAULT(\'\'), \n            entity_info2 TEXT NOT NULL DEFAULT(\'\'), \n            entity_info3 TEXT NOT NULL DEFAULT(\'\'), \n            entity_info4 TEXT NOT NULL DEFAULT(\'\'), \n            entity_info5 TEXT NOT NULL DEFAULT(\'\'), \n            entity_info6 TEXT NOT NULL DEFAULT(\'\'), \n            entity_info7 TEXT NOT NULL DEFAULT(\'\')\n            )\n        "

    .line 2
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ls1/k;

    const-string v2, "content"

    const-string v3, "entity_info1"

    invoke-direct {v1, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-static {v1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "type IN (\'text/plain\',\'text/html\')"

    const/4 v5, 0x0

    .line 5
    invoke-static {v0, v4, v1, v5}, Le/a/m0/a1$k;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;I)V

    const/4 v1, 0x6

    new-array v1, v1, [Ls1/k;

    .line 6
    new-instance v4, Ls1/k;

    invoke-direct {v4, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v5

    .line 7
    new-instance v4, Ls1/k;

    const-string v5, "status"

    const-string v6, "entity_info2"

    invoke-direct {v4, v5, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x1

    aput-object v4, v1, v7

    .line 8
    new-instance v4, Ls1/k;

    const-string v7, "size"

    const-string v8, "entity_info3"

    invoke-direct {v4, v7, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x2

    aput-object v4, v1, v9

    .line 9
    new-instance v4, Ls1/k;

    const-string v9, "thumbnail"

    const-string v10, "entity_info4"

    invoke-direct {v4, v9, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x3

    aput-object v4, v1, v11

    .line 10
    new-instance v4, Ls1/k;

    const-string v11, "width"

    const-string v12, "entity_info5"

    invoke-direct {v4, v11, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v13, 0x4

    aput-object v4, v1, v13

    .line 11
    new-instance v4, Ls1/k;

    const-string v13, "height"

    const-string v14, "entity_info6"

    invoke-direct {v4, v13, v14}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x5

    aput-object v4, v1, v15

    .line 12
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "type LIKE \'image/%\'"

    const/4 v15, 0x1

    .line 13
    invoke-static {v0, v4, v1, v15}, Le/a/m0/a1$k;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;I)V

    const/4 v1, 0x7

    new-array v1, v1, [Ls1/k;

    .line 14
    new-instance v4, Ls1/k;

    invoke-direct {v4, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x0

    aput-object v4, v1, v15

    .line 15
    new-instance v4, Ls1/k;

    invoke-direct {v4, v5, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x1

    aput-object v4, v1, v15

    .line 16
    new-instance v4, Ls1/k;

    invoke-direct {v4, v7, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x2

    aput-object v4, v1, v15

    .line 17
    new-instance v4, Ls1/k;

    invoke-direct {v4, v9, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x3

    aput-object v4, v1, v15

    .line 18
    new-instance v4, Ls1/k;

    invoke-direct {v4, v11, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x4

    aput-object v4, v1, v15

    .line 19
    new-instance v4, Ls1/k;

    invoke-direct {v4, v13, v14}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x5

    aput-object v4, v1, v15

    .line 20
    new-instance v4, Ls1/k;

    const-string v15, "duration"

    move-object/from16 v16, v13

    const-string v13, "entity_info7"

    invoke-direct {v4, v15, v13}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v17, 0x6

    aput-object v4, v1, v17

    .line 21
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "type LIKE \'video/%\'"

    move-object/from16 v17, v13

    const/4 v13, 0x2

    .line 22
    invoke-static {v0, v4, v1, v13}, Le/a/m0/a1$k;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;I)V

    const/4 v1, 0x4

    new-array v1, v1, [Ls1/k;

    .line 23
    new-instance v4, Ls1/k;

    invoke-direct {v4, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v13, 0x0

    aput-object v4, v1, v13

    .line 24
    new-instance v4, Ls1/k;

    invoke-direct {v4, v5, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v13, 0x1

    aput-object v4, v1, v13

    .line 25
    new-instance v4, Ls1/k;

    invoke-direct {v4, v7, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v13, 0x2

    aput-object v4, v1, v13

    .line 26
    new-instance v4, Ls1/k;

    invoke-direct {v4, v15, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v13, 0x3

    aput-object v4, v1, v13

    .line 27
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "type LIKE \'audio/%\'"

    const/4 v13, 0x4

    .line 28
    invoke-static {v0, v4, v1, v13}, Le/a/m0/a1$k;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;I)V

    const/4 v1, 0x7

    new-array v1, v1, [Ls1/k;

    .line 29
    new-instance v4, Ls1/k;

    invoke-direct {v4, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v13, 0x0

    aput-object v4, v1, v13

    .line 30
    new-instance v4, Ls1/k;

    invoke-direct {v4, v5, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v13, 0x1

    aput-object v4, v1, v13

    .line 31
    new-instance v4, Ls1/k;

    invoke-direct {v4, v7, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v13, 0x2

    aput-object v4, v1, v13

    .line 32
    new-instance v4, Ls1/k;

    invoke-direct {v4, v9, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v13, 0x3

    aput-object v4, v1, v13

    .line 33
    new-instance v4, Ls1/k;

    invoke-direct {v4, v11, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v13, 0x4

    aput-object v4, v1, v13

    .line 34
    new-instance v4, Ls1/k;

    move-object/from16 v13, v16

    invoke-direct {v4, v13, v14}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x5

    aput-object v4, v1, v15

    .line 35
    new-instance v4, Ls1/k;

    const-string v15, "source"

    move-object/from16 v16, v14

    move-object/from16 v14, v17

    invoke-direct {v4, v15, v14}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x6

    aput-object v4, v1, v15

    .line 36
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "type = \'tenor/gif\'"

    const/4 v15, 0x3

    .line 37
    invoke-static {v0, v4, v1, v15}, Le/a/m0/a1$k;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;I)V

    const/4 v1, 0x4

    new-array v1, v1, [Ls1/k;

    .line 38
    new-instance v4, Ls1/k;

    invoke-direct {v4, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x0

    aput-object v4, v1, v15

    .line 39
    new-instance v4, Ls1/k;

    invoke-direct {v4, v5, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x1

    aput-object v4, v1, v15

    .line 40
    new-instance v4, Ls1/k;

    invoke-direct {v4, v7, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x2

    aput-object v4, v1, v15

    .line 41
    new-instance v4, Ls1/k;

    const-string v15, "filename"

    invoke-direct {v4, v15, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x3

    aput-object v4, v1, v15

    .line 42
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "(type LIKE \'application/%\' AND type NOT LIKE \'application/vnd.truecaller%\') OR type = \'text/vnd.plain-file\' COLLATE NOCASE"

    const/4 v15, 0x5

    .line 43
    invoke-static {v0, v4, v1, v15}, Le/a/m0/a1$k;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;I)V

    const/4 v1, 0x7

    new-array v1, v1, [Ls1/k;

    .line 44
    new-instance v4, Ls1/k;

    invoke-direct {v4, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x0

    aput-object v4, v1, v15

    .line 45
    new-instance v4, Ls1/k;

    invoke-direct {v4, v11, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x1

    aput-object v4, v1, v11

    .line 46
    new-instance v4, Ls1/k;

    invoke-direct {v4, v13, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x2

    aput-object v4, v1, v11

    .line 47
    new-instance v4, Ls1/k;

    const-string v11, "filename"

    invoke-direct {v4, v11, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x3

    aput-object v4, v1, v11

    .line 48
    new-instance v4, Ls1/k;

    invoke-direct {v4, v9, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x4

    aput-object v4, v1, v11

    .line 49
    new-instance v4, Ls1/k;

    const-string v11, "description"

    move-object/from16 v13, v16

    invoke-direct {v4, v11, v13}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x5

    aput-object v4, v1, v11

    .line 50
    new-instance v4, Ls1/k;

    const-string v11, "source"

    invoke-direct {v4, v11, v14}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x6

    aput-object v4, v1, v11

    .line 51
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "type LIKE \'application/vnd.truecaller.linkpreview%\'"

    const/4 v14, 0x7

    .line 52
    invoke-static {v0, v4, v1, v14}, Le/a/m0/a1$k;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;I)V

    new-array v1, v11, [Ls1/k;

    .line 53
    new-instance v4, Ls1/k;

    invoke-direct {v4, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x0

    aput-object v4, v1, v11

    .line 54
    new-instance v4, Ls1/k;

    invoke-direct {v4, v5, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x1

    aput-object v4, v1, v11

    .line 55
    new-instance v4, Ls1/k;

    invoke-direct {v4, v7, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x2

    aput-object v4, v1, v11

    .line 56
    new-instance v4, Ls1/k;

    invoke-direct {v4, v9, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x3

    aput-object v4, v1, v9

    .line 57
    new-instance v4, Ls1/k;

    const-string v9, "vcard_name"

    invoke-direct {v4, v9, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x4

    aput-object v4, v1, v9

    .line 58
    new-instance v4, Ls1/k;

    const-string v9, "vcard_contacts_count"

    invoke-direct {v4, v9, v13}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x5

    aput-object v4, v1, v9

    .line 59
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v4, "type COLLATE NOCASE IN (\'text/x-vcard\',\'text/vcard\',\'text/directory\',\'text/directory; profile=vcard\')"

    const/4 v9, 0x6

    .line 60
    invoke-static {v0, v4, v1, v9}, Le/a/m0/a1$k;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;I)V

    const/4 v1, 0x3

    new-array v1, v1, [Ls1/k;

    .line 61
    new-instance v4, Ls1/k;

    invoke-direct {v4, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v4, v1, v2

    .line 62
    new-instance v2, Ls1/k;

    invoke-direct {v2, v5, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 63
    new-instance v2, Ls1/k;

    invoke-direct {v2, v7, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 64
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x8

    const-string v3, "\n    NOT (type IN (\'text/plain\',\'text/html\')) AND NOT (type LIKE \'image/%\') AND NOT (type = \'tenor/gif\') AND NOT (type LIKE \'video/%\') AND NOT (type LIKE \'audio/%\') \n    AND NOT (type LIKE \'application/vnd.truecaller.linkpreview%\') AND NOT (type COLLATE NOCASE IN (\'text/x-vcard\',\'text/vcard\',\'text/directory\',\'text/directory; profile=vcard\'))  AND NOT ((type LIKE \'application/%\' AND type NOT LIKE \'application/vnd.truecaller%\') OR type = \'text/vnd.plain-file\' COLLATE NOCASE) \n"

    .line 65
    invoke-static {v0, v3, v1, v2}, Le/a/m0/a1$k;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;I)V

    const-string v1, "DROP TABLE IF EXISTS msg_entities_temp"

    .line 66
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
