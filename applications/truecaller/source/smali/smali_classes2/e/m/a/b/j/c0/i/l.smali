.class public final synthetic Le/m/a/b/j/c0/i/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/c0/i/h0$b;


# instance fields
.field public final synthetic a:Le/m/a/b/j/c0/i/h0;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Le/m/a/b/j/r;


# direct methods
.method public synthetic constructor <init>(Le/m/a/b/j/c0/i/h0;Ljava/util/List;Le/m/a/b/j/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/b/j/c0/i/l;->a:Le/m/a/b/j/c0/i/h0;

    iput-object p2, p0, Le/m/a/b/j/c0/i/l;->b:Ljava/util/List;

    iput-object p3, p0, Le/m/a/b/j/c0/i/l;->c:Le/m/a/b/j/r;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Le/m/a/b/j/c0/i/l;->a:Le/m/a/b/j/c0/i/h0;

    iget-object v2, v0, Le/m/a/b/j/c0/i/l;->b:Ljava/util/List;

    iget-object v3, v0, Le/m/a/b/j/c0/i/l;->c:Le/m/a/b/j/r;

    move-object/from16 v4, p1

    check-cast v4, Landroid/database/Cursor;

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    .line 3
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x7

    .line 4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    move v8, v9

    goto :goto_1

    :cond_0
    move v8, v5

    .line 5
    :goto_1
    invoke-static {}, Le/m/a/b/j/n;->a()Le/m/a/b/j/n$a;

    move-result-object v10

    .line 6
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Le/m/a/b/j/n$a;->f(Ljava/lang/String;)Le/m/a/b/j/n$a;

    const/4 v11, 0x2

    .line 7
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Le/m/a/b/j/n$a;->e(J)Le/m/a/b/j/n$a;

    const/4 v11, 0x3

    .line 8
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Le/m/a/b/j/n$a;->g(J)Le/m/a/b/j/n$a;

    const/4 v11, 0x4

    if-eqz v8, :cond_2

    .line 9
    new-instance v5, Le/m/a/b/j/m;

    .line 10
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 11
    sget-object v8, Le/m/a/b/j/c0/i/h0;->f:Le/m/a/b/b;

    goto :goto_2

    .line 12
    :cond_1
    new-instance v9, Le/m/a/b/b;

    invoke-direct {v9, v8}, Le/m/a/b/b;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    :goto_2
    const/4 v9, 0x5

    .line 13
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    invoke-direct {v5, v8, v9}, Le/m/a/b/j/m;-><init>(Le/m/a/b/b;[B)V

    .line 14
    invoke-virtual {v10, v5}, Le/m/a/b/j/n$a;->d(Le/m/a/b/j/m;)Le/m/a/b/j/n$a;

    goto :goto_4

    .line 15
    :cond_2
    new-instance v8, Le/m/a/b/j/m;

    .line 16
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    .line 17
    sget-object v11, Le/m/a/b/j/c0/i/h0;->f:Le/m/a/b/b;

    goto :goto_3

    .line 18
    :cond_3
    new-instance v12, Le/m/a/b/b;

    invoke-direct {v12, v11}, Le/m/a/b/b;-><init>(Ljava/lang/String;)V

    move-object v11, v12

    .line 19
    :goto_3
    invoke-virtual {v1}, Le/m/a/b/j/c0/i/h0;->l()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v13, "bytes"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v14

    new-array v9, v9, [Ljava/lang/String;

    .line 20
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v5

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v13, "event_payloads"

    const-string v15, "event_id = ?"

    const-string v19, "sequence_num"

    move-object/from16 v16, v9

    .line 21
    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    sget-object v9, Le/m/a/b/j/c0/i/g;->a:Le/m/a/b/j/c0/i/g;

    .line 22
    invoke-static {v5, v9}, Le/m/a/b/j/c0/i/h0;->J(Landroid/database/Cursor;Le/m/a/b/j/c0/i/h0$b;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 23
    invoke-direct {v8, v11, v5}, Le/m/a/b/j/m;-><init>(Le/m/a/b/b;[B)V

    .line 24
    invoke-virtual {v10, v8}, Le/m/a/b/j/n$a;->d(Le/m/a/b/j/m;)Le/m/a/b/j/n$a;

    :goto_4
    const/4 v5, 0x6

    .line 25
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 26
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v8, v10

    check-cast v8, Le/m/a/b/j/i$b;

    .line 27
    iput-object v5, v8, Le/m/a/b/j/i$b;->b:Ljava/lang/Integer;

    .line 28
    :cond_4
    invoke-virtual {v10}, Le/m/a/b/j/n$a;->b()Le/m/a/b/j/n;

    move-result-object v5

    .line 29
    new-instance v8, Le/m/a/b/j/c0/i/y;

    invoke-direct {v8, v6, v7, v3, v5}, Le/m/a/b/j/c0/i/y;-><init>(JLe/m/a/b/j/r;Le/m/a/b/j/n;)V

    .line 30
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method
