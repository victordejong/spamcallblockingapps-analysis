.class public final Le/a/n/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n/n1;


# instance fields
.field public final a:Le/a/b0/o/a;

.field public final b:Le/a/n/i0;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/a/b0/o/a;Le/a/n/i0;Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coreSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/n/o1;->a:Le/a/b0/o/a;

    iput-object p2, p0, Le/a/n/o1;->b:Le/a/n/i0;

    iput-object p3, p0, Le/a/n/o1;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(ZZ[Ljava/lang/Integer;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ[",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Le/a/n/p1;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string v2, "transports"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v1, Le/a/n/o1;->a:Le/a/b0/o/a;

    const-string v3, "lastBackedUpEntityId"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 2
    iget-object v2, v1, Le/a/n/o1;->b:Le/a/n/i0;

    invoke-interface {v2}, Le/a/n/i0;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v2, "text/plain"

    const-string v3, "text/html"

    .line 3
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 4
    array-length v2, v0

    const/4 v14, 0x0

    move v3, v14

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 5
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n             me.type COLLATE NOCASE NOT IN (?, ?)\n             AND (me.entity_info1 NOT NULL AND me.entity_info1 != \'\' OR \n                me.type LIKE \'application/vnd.truecaller.linkpreview%\')\n             AND me.entity_info2 = 0\n             AND me.message_id IN (\n                SELECT _id\n                FROM msg_messages\n                WHERE transport IN ("

    .line 7
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 8
    sget-object v8, Le/a/n/o1$a;->b:Le/a/n/o1$a;

    const/16 v16, 0x1f

    move-object/from16 v2, p3

    move-object v0, v9

    move/from16 v9, v16

    invoke-static/range {v2 .. v9}, Le/q/f/a/d/a;->M1([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")\n            )\n        "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string v0, " AND me.type NOT LIKE ?"

    .line 10
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "video/%"

    .line 11
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, v10, v2

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    const-string v0, " AND me._id > ?"

    .line 12
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_2
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n            SELECT me._id, me.entity_info1, me.type, m.status, m.transport, me.entity_type,\n                CASE me.entity_type\n                     WHEN 1 THEN me.entity_info4\n                     WHEN 2 THEN me.entity_info4\n                     WHEN 7 THEN me.entity_info5\n                     WHEN 6 THEN me.entity_info4\n                     ELSE \'\'\n                 END AS thumbnail\n            FROM msg_entities me\n            LEFT JOIN msg_messages m ON m._id = me.message_id\n            WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n            ORDER BY me._id ASC\n        "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v14, [Ljava/lang/String;

    .line 17
    invoke-interface {v13, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 18
    invoke-virtual {v12, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 19
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    if-nez v2, :cond_3

    goto :goto_5

    .line 20
    :cond_3
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "_id"

    .line 21
    invoke-static {v2, v4}, Le/a/p5/s0/g;->F0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    const-string v4, "entity_info1"

    .line 22
    invoke-static {v2, v4}, Le/a/p5/s0/g;->G1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v4, "Uri.parse(stringValueOrT\u2026ryEntityColumns.CONTENT))"

    invoke-static {v8, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "type"

    .line 23
    invoke-static {v2, v4}, Le/a/p5/s0/g;->G1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const-string v4, ""

    :goto_2
    move-object v9, v4

    const-string v4, "status"

    .line 24
    invoke-static {v2, v4}, Le/a/p5/s0/g;->r0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-nez v4, :cond_5

    move v10, v5

    goto :goto_3

    :cond_5
    move v10, v14

    :goto_3
    const-string v4, "transport"

    .line 25
    invoke-static {v2, v4}, Le/a/p5/s0/g;->r0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v4, "thumbnail"

    .line 26
    invoke-static {v2, v4}, Le/a/p5/s0/g;->G1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v12, v4

    goto :goto_4

    :cond_6
    move-object v12, v3

    :goto_4
    const-string v4, "entity_type"

    .line 27
    invoke-static {v2, v4}, Le/a/p5/s0/g;->r0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 28
    new-instance v4, Le/a/n/p1;

    move-object v5, v4

    invoke-direct/range {v5 .. v13}, Le/a/n/p1;-><init>(JLandroid/net/Uri;Ljava/lang/String;ZILandroid/net/Uri;I)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 29
    :cond_7
    :goto_5
    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 30
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
.end method
