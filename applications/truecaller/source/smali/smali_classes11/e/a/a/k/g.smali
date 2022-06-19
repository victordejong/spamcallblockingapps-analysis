.class public abstract Le/a/a/k/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/k/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/truecaller/messaging/data/types/TransportInfo;",
        "RC::",
        "Le/a/a/k/g$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/e4/p;

.field public final c:Le/a/u3/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/e4/p;Le/a/u3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/a/a/k/g;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/a/a/k/g;->b:Le/a/e4/p;

    .line 4
    iput-object p3, p0, Le/a/a/k/g;->c:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Le/a/a/k/j;Le/a/a/k/m;Le/a/a/g/j0/g0;Le/a/a/k/g$a;ILjava/util/List;Le/a/p5/l0;ZLe/a/c/r/h/d;)J
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/j;",
            "Le/a/a/k/m;",
            "Le/a/a/g/j0/g0;",
            "TRC;I",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Le/a/p5/l0;",
            "Z",
            "Le/a/c/r/h/d;",
            ")J"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    .line 1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 2
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v12, 0x0

    move/from16 v13, p5

    move v14, v0

    move v6, v12

    move v15, v6

    move/from16 v16, v15

    move/from16 v17, v16

    :goto_0
    if-eqz v14, :cond_e

    if-eqz v1, :cond_e

    .line 3
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 4
    move-object v5, v8

    check-cast v5, Le/a/a/g/d0;

    invoke-virtual {v5}, Le/a/a/g/d0;->g2()J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Le/a/a/k/g$a;->g2()J

    move-result-wide v18

    cmp-long v0, v2, v18

    if-lez v0, :cond_0

    .line 5
    invoke-virtual {v5}, Le/a/a/g/d0;->g2()J

    move-result-wide v2

    .line 6
    invoke-virtual {v5}, Le/a/a/g/d0;->u()J

    move-result-wide v4

    invoke-virtual {v7, v10, v4, v5}, Le/a/a/k/g;->a(Ljava/util/List;J)V

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v13, v13, -0x1

    .line 7
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    move/from16 v20, v6

    goto/16 :goto_4

    .line 8
    :cond_0
    invoke-virtual {v5}, Le/a/a/g/d0;->g2()J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Le/a/a/k/g$a;->g2()J

    move-result-wide v18

    cmp-long v0, v2, v18

    if-gez v0, :cond_2

    .line 9
    invoke-interface/range {p4 .. p4}, Le/a/a/k/g$a;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    .line 10
    invoke-virtual {v5}, Le/a/a/g/d0;->d()J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Le/a/a/k/g$a;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object v0

    .line 12
    iget v1, v5, Le/a/a/g/d0;->l:I

    invoke-virtual {v5, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/truecaller/messaging/data/types/Message$b;->i(J)Lcom/truecaller/messaging/data/types/Message$b;

    .line 14
    iget v1, v5, Le/a/a/g/d0;->g:I

    invoke-virtual {v5, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 15
    iput v1, v0, Lcom/truecaller/messaging/data/types/Message$b;->u:I

    .line 16
    invoke-virtual {v5}, Le/a/a/g/d0;->k()I

    move-result v1

    .line 17
    iput v1, v0, Lcom/truecaller/messaging/data/types/Message$b;->v:I

    .line 18
    invoke-virtual {v5}, Le/a/a/g/d0;->b()I

    move-result v1

    .line 19
    iput v1, v0, Lcom/truecaller/messaging/data/types/Message$b;->w:I

    .line 20
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    :cond_1
    move-object v4, v0

    .line 21
    invoke-interface/range {p4 .. p4}, Le/a/a/k/g$a;->g2()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move/from16 v5, p8

    move/from16 v20, v6

    move-object/from16 v6, p9

    .line 22
    invoke-virtual/range {v0 .. v6}, Le/a/a/k/g;->e(Le/a/a/k/j;Le/a/a/k/m;Ljava/util/List;Lcom/truecaller/messaging/data/types/Message;ZLe/a/c/r/h/d;)V

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v13, v13, -0x1

    .line 23
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_2

    :cond_2
    move/from16 v20, v6

    .line 24
    invoke-virtual {v5}, Le/a/a/g/d0;->d()J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Le/a/a/k/g$a;->getId()J

    move-result-wide v18

    cmp-long v0, v2, v18

    if-lez v0, :cond_3

    .line 25
    invoke-virtual {v5}, Le/a/a/g/d0;->g2()J

    move-result-wide v2

    .line 26
    invoke-virtual {v5}, Le/a/a/g/d0;->u()J

    move-result-wide v4

    invoke-virtual {v7, v10, v4, v5}, Le/a/a/k/g;->a(Ljava/util/List;J)V

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v13, v13, -0x1

    .line 27
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    goto :goto_3

    .line 28
    :cond_3
    invoke-virtual {v5}, Le/a/a/g/d0;->d()J

    move-result-wide v0

    invoke-interface/range {p4 .. p4}, Le/a/a/k/g$a;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 29
    invoke-interface/range {p4 .. p4}, Le/a/a/k/g$a;->g2()J

    move-result-wide v18

    .line 30
    invoke-interface/range {p4 .. p4}, Le/a/a/k/g$a;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move/from16 v5, p8

    move-object/from16 v6, p9

    invoke-virtual/range {v0 .. v6}, Le/a/a/k/g;->e(Le/a/a/k/j;Le/a/a/k/m;Ljava/util/List;Lcom/truecaller/messaging/data/types/Message;ZLe/a/c/r/h/d;)V

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v13, v13, -0x1

    .line 31
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_1

    :goto_2
    move-wide/from16 v2, v18

    :goto_3
    move-object/from16 v5, p9

    goto/16 :goto_9

    .line 32
    :cond_4
    invoke-virtual {v7, v8, v9}, Le/a/a/k/g;->g(Le/a/a/g/j0/g0;Le/a/a/k/g$a;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 33
    invoke-virtual {v5}, Le/a/a/g/d0;->k()I

    move-result v0

    .line 34
    invoke-virtual {v5}, Le/a/a/g/d0;->u()J

    move-result-wide v1

    invoke-virtual {v7, v10, v1, v2}, Le/a/a/k/g;->a(Ljava/util/List;J)V

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v13, v13, -0x1

    .line 35
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    .line 36
    invoke-interface/range {p4 .. p4}, Le/a/a/k/g$a;->g2()J

    move-result-wide v18

    .line 37
    invoke-interface/range {p4 .. p4}, Le/a/a/k/g$a;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object v1

    .line 38
    iput v0, v1, Lcom/truecaller/messaging/data/types/Message$b;->v:I

    .line 39
    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move/from16 v5, p8

    move-object/from16 v6, p9

    .line 40
    invoke-virtual/range {v0 .. v6}, Le/a/a/k/g;->e(Le/a/a/k/j;Le/a/a/k/m;Ljava/util/List;Lcom/truecaller/messaging/data/types/Message;ZLe/a/c/r/h/d;)V

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v13, v13, -0x1

    .line 41
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    move v0, v14

    move-wide/from16 v2, v18

    :goto_4
    move-object/from16 v5, p9

    move v14, v0

    goto/16 :goto_9

    .line 42
    :cond_5
    invoke-interface/range {p4 .. p4}, Le/a/a/k/g$a;->g2()J

    move-result-wide v18

    .line 43
    invoke-virtual {v7, v8, v9}, Le/a/a/k/g;->h(Le/a/a/g/j0/g0;Le/a/a/k/g$a;)Z

    move-result v0

    const/4 v14, 0x1

    if-eqz v0, :cond_8

    .line 44
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    int-to-long v3, v0

    .line 45
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    int-to-long v1, v0

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v23, v3

    move-object/from16 v3, p6

    move-object/from16 v4, p3

    move-object v6, v5

    move-object/from16 v5, p4

    move-object/from16 p5, v6

    move/from16 v6, p8

    .line 46
    invoke-virtual/range {v0 .. v6}, Le/a/a/k/g;->k(Le/a/a/k/j;Le/a/a/k/m;Ljava/util/List;Le/a/a/g/j0/g0;Le/a/a/k/g$a;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v13, v13, -0x1

    .line 47
    :cond_6
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v23, v0

    if-nez v0, :cond_7

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v21, v0

    if-nez v0, :cond_7

    move v0, v14

    goto :goto_5

    :cond_7
    move v0, v12

    :goto_5
    const-string v1, "Be polite developer and don\'t move cursors yourself"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    move-object/from16 p5, v5

    .line 48
    :goto_6
    invoke-virtual/range {p5 .. p5}, Le/a/a/g/d0;->k()I

    move-result v0

    if-ne v0, v14, :cond_9

    .line 49
    invoke-virtual/range {p5 .. p5}, Le/a/a/g/d0;->X0()Z

    move-result v0

    invoke-interface/range {p4 .. p4}, Le/a/a/k/g$a;->X0()Z

    move-result v1

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p5 .. p5}, Le/a/a/g/d0;->Y()Z

    move-result v0

    invoke-interface/range {p4 .. p4}, Le/a/a/k/g$a;->Y()Z

    move-result v1

    if-ne v0, v1, :cond_9

    .line 50
    invoke-virtual/range {p5 .. p5}, Le/a/a/g/d0;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 51
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sync_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 52
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v13, v13, -0x1

    .line 53
    :cond_9
    iget-object v0, v7, Le/a/a/k/g;->c:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 54
    invoke-virtual/range {p5 .. p5}, Le/a/a/g/d0;->b()I

    move-result v0

    if-nez v0, :cond_b

    .line 55
    invoke-virtual/range {p5 .. p5}, Le/a/a/g/d0;->getStatus()I

    move-result v0

    invoke-virtual {v7, v0}, Le/a/a/k/g;->i(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 56
    invoke-virtual/range {p5 .. p5}, Le/a/a/g/d0;->u()J

    move-result-wide v0

    sget-object v2, Le/a/c/r/h/e$a;->a:Le/a/c/r/h/e$a;

    move-object/from16 v5, p9

    invoke-virtual {v5, v0, v1, v2}, Le/a/c/r/h/d;->a(JLe/a/c/r/h/e;)Z

    goto :goto_7

    :cond_a
    move-object/from16 v5, p9

    .line 57
    invoke-virtual/range {p5 .. p5}, Le/a/a/g/d0;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "classification"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 59
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v13, v13, -0x1

    goto :goto_8

    :cond_b
    move-object/from16 v5, p9

    :goto_8
    move-object/from16 v0, p5

    .line 60
    iget v1, v0, Le/a/a/g/d0;->k:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_c

    .line 61
    iget v1, v0, Le/a/a/g/d0;->j:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_c

    .line 62
    invoke-virtual {v0}, Le/a/a/g/d0;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 63
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "group_id_day"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 64
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v13, v13, -0x1

    .line 65
    :cond_c
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 66
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    move v14, v0

    move-wide/from16 v2, v18

    :goto_9
    move/from16 v0, v20

    if-gtz v13, :cond_d

    .line 67
    invoke-virtual {v7, v9, v0}, Le/a/a/k/g;->l(Le/a/a/k/g$a;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 68
    invoke-static {v2, v3}, Le/a/c/p/a;->G1(J)J

    move-result-wide v0

    return-wide v0

    :cond_d
    move v6, v0

    goto/16 :goto_0

    :cond_e
    move-object/from16 v5, p9

    move/from16 v12, v17

    :goto_a
    if-eqz v1, :cond_10

    .line 69
    invoke-interface/range {p4 .. p4}, Le/a/a/k/g$a;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 p5, v4

    move/from16 v5, p8

    move/from16 v17, v14

    move v14, v6

    move-object/from16 v6, p9

    .line 70
    invoke-virtual/range {v0 .. v6}, Le/a/a/k/g;->e(Le/a/a/k/j;Le/a/a/k/m;Ljava/util/List;Lcom/truecaller/messaging/data/types/Message;ZLe/a/c/r/h/d;)V

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v13, -0x1

    if-gtz v13, :cond_f

    .line 71
    invoke-virtual {v7, v9, v14}, Le/a/a/k/g;->l(Le/a/a/k/g$a;I)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object/from16 v0, p5

    .line 72
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    .line 73
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 74
    invoke-static {v0, v1}, Le/a/c/p/a;->G1(J)J

    move-result-wide v0

    return-wide v0

    .line 75
    :cond_f
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    move-object/from16 v5, p9

    move v6, v14

    move/from16 v14, v17

    goto :goto_a

    :cond_10
    move/from16 v17, v14

    move/from16 v0, v16

    :goto_b
    if-eqz v14, :cond_11

    .line 76
    move-object v1, v8

    check-cast v1, Le/a/a/g/d0;

    invoke-virtual {v1}, Le/a/a/g/d0;->u()J

    move-result-wide v1

    invoke-virtual {v7, v10, v1, v2}, Le/a/a/k/g;->a(Ljava/util/List;J)V

    add-int/lit8 v0, v0, 0x1

    .line 77
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    goto :goto_b

    :cond_11
    const-string v1, "inserted"

    .line 78
    invoke-interface {v11, v1, v12}, Le/a/p5/l0;->a(Ljava/lang/String;I)V

    const-string v1, "updated"

    .line 79
    invoke-interface {v11, v1, v15}, Le/a/p5/l0;->a(Ljava/lang/String;I)V

    const-string v1, "deleted"

    .line 80
    invoke-interface {v11, v1, v0}, Le/a/p5/l0;->a(Ljava/lang/String;I)V

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public abstract c(JLe/a/a/k/j;Le/a/a/k/m;Lcom/truecaller/data/entity/messaging/Participant;Z)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Le/a/a/k/j;",
            "Le/a/a/k/m;",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "Z)",
            "Ljava/util/Set<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d(Landroid/content/ContentResolver;Le/a/a/k/j;Le/a/a/k/m;Lw3/b/a/b;Lw3/b/a/b;Z)Le/a/a/k/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Le/a/a/k/j;",
            "Le/a/a/k/m;",
            "Lw3/b/a/b;",
            "Lw3/b/a/b;",
            "Z)TRC;"
        }
    .end annotation
.end method

.method public final e(Le/a/a/k/j;Le/a/a/k/m;Ljava/util/List;Lcom/truecaller/messaging/data/types/Message;ZLe/a/c/r/h/d;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/j;",
            "Le/a/a/k/m;",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/truecaller/messaging/data/types/Message;",
            "Z",
            "Le/a/c/r/h/d;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p3

    move-object/from16 v9, p4

    .line 1
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 2
    iget-object v0, v9, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v11

    .line 4
    invoke-interface {v0}, Lcom/truecaller/messaging/data/types/TransportInfo;->m1()J

    move-result-wide v1

    iget-object v5, v9, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Le/a/a/k/g;->c(JLe/a/a/k/j;Le/a/a/k/m;Lcom/truecaller/data/entity/messaging/Participant;Z)Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/messaging/Participant;

    .line 8
    iget-object v4, v2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-static {v4}, Lw3/c/a/a/a/h;->i(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v2, v2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v4, "insert-address-token"

    .line 9
    invoke-static {v4, v2}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_0

    .line 10
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 11
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    move v4, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/data/entity/messaging/Participant;

    .line 12
    iget-object v6, v9, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-virtual {v6, v5}, Lcom/truecaller/data/entity/messaging/Participant;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 13
    invoke-static {p3, v5}, Le/a/c/p/a;->e1(Ljava/util/List;Lcom/truecaller/data/entity/messaging/Participant;)I

    move-result v4

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {p3, v5}, Le/a/c/p/a;->e1(Ljava/util/List;Lcom/truecaller/data/entity/messaging/Participant;)I

    goto :goto_1

    .line 15
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 16
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3, v11, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_6
    if-ne v4, v2, :cond_7

    .line 17
    iget-object v1, v9, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {p3, v1}, Le/a/c/p/a;->e1(Ljava/util/List;Lcom/truecaller/data/entity/messaging/Participant;)I

    move-result v4

    .line 18
    :cond_7
    invoke-static {p3, v0, v3}, Le/a/c/p/a;->d1(Ljava/util/List;Ljava/util/Set;Z)I

    move-result v0

    const-string v1, "participant_id"

    .line 19
    invoke-virtual {v10, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v1, "conversation_id"

    .line 20
    invoke-virtual {v10, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 21
    iget-object v0, v9, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    .line 22
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "date_sent"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 24
    iget-object v0, v9, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    .line 25
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 27
    iget v0, v9, Lcom/truecaller/messaging/data/types/Message;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 28
    iget-boolean v0, v9, Lcom/truecaller/messaging/data/types/Message;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "seen"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 29
    iget-boolean v0, v9, Lcom/truecaller/messaging/data/types/Message;->i:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "read"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 30
    iget-boolean v0, v9, Lcom/truecaller/messaging/data/types/Message;->j:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "locked"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 31
    iget v0, v9, Lcom/truecaller/messaging/data/types/Message;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "transport"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 32
    iget-object v0, v9, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    const-string v1, "sim_token"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 33
    iget-object v0, v9, Lcom/truecaller/messaging/data/types/Message;->q:Ljava/lang/String;

    const-string v1, "analytics_id"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 34
    iget-object v0, v9, Lcom/truecaller/messaging/data/types/Message;->r:Ljava/lang/String;

    const-string v1, "analytics_context"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 35
    iget-object v0, v9, Lcom/truecaller/messaging/data/types/Message;->s:Ljava/lang/String;

    const-string v1, "raw_address"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const/4 v0, 0x2

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 37
    iget-object v1, v9, Lcom/truecaller/messaging/data/types/Message;->f:Lw3/b/a/b;

    .line 38
    iget-wide v1, v1, Lw3/b/a/e0/e;->a:J

    .line 39
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "send_schedule_date"

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 40
    iget v1, v9, Lcom/truecaller/messaging/data/types/Message;->g:I

    invoke-virtual {p0, v1}, Le/a/a/k/g;->i(I)Z

    move-result v1

    const-string v2, "classification"

    if-eqz v1, :cond_8

    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-wide/16 v0, -0x1

    .line 42
    sget-object v2, Le/a/c/r/h/e$b;->a:Le/a/c/r/h/e$b;

    move-object/from16 v4, p6

    invoke-virtual {v4, v0, v1, v2}, Le/a/c/r/h/d;->a(JLe/a/c/r/h/e;)Z

    goto :goto_2

    .line 43
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 44
    :goto_2
    iget v0, v9, Lcom/truecaller/messaging/data/types/Message;->u:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "sync_status"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 45
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 46
    iget-object v1, v9, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    move-object v2, p1

    .line 47
    invoke-virtual {p0, p1, v1, v0}, Le/a/a/k/g;->f(Le/a/a/k/j;Lcom/truecaller/messaging/data/types/TransportInfo;I)Landroid/content/ContentValues;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 48
    invoke-virtual {v10, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 49
    :cond_9
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 51
    iget-object v2, v9, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    array-length v4, v2

    :goto_3
    if-ge v3, v4, :cond_a

    aget-object v5, v2, v3

    .line 52
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v9, "message_id"

    .line 53
    invoke-virtual {v6, v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 54
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 55
    invoke-virtual {v5, v1}, Lcom/truecaller/messaging/data/types/Entity;->c(Landroid/content/ContentValues;)V

    .line 56
    invoke-virtual {v6, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 57
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    return-void
.end method

.method public abstract f(Le/a/a/k/j;Lcom/truecaller/messaging/data/types/TransportInfo;I)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/j;",
            "TT;I)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method public abstract g(Le/a/a/g/j0/g0;Le/a/a/k/g$a;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/g/j0/g0;",
            "TRC;)Z"
        }
    .end annotation
.end method

.method public abstract h(Le/a/a/g/j0/g0;Le/a/a/k/g$a;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/g/j0/g0;",
            "TRC;)Z"
        }
    .end annotation
.end method

.method public abstract i(I)Z
.end method

.method public j(Le/a/a/k/j;Le/a/a/k/m;Le/a/a/g/j0/g0;Lw3/b/a/b;Lw3/b/a/b;ILjava/util/List;Le/a/p5/l0;ZLe/a/c/r/h/d;)J
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/j;",
            "Le/a/a/k/m;",
            "Le/a/a/g/j0/g0;",
            "Lw3/b/a/b;",
            "Lw3/b/a/b;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Le/a/p5/l0;",
            "Z",
            "Le/a/c/r/h/d;",
            ")J"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v12, p0

    .line 1
    :try_start_0
    iget-object v0, v12, Le/a/a/k/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p9

    invoke-virtual/range {v2 .. v8}, Le/a/a/k/g;->d(Landroid/content/ContentResolver;Le/a/a/k/j;Le/a/a/k/m;Lw3/b/a/b;Lw3/b/a/b;Z)Le/a/a/k/g$a;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object v6, v1

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    .line 2
    invoke-virtual/range {v2 .. v11}, Le/a/a/k/g;->b(Le/a/a/k/j;Le/a/a/k/m;Le/a/a/g/j0/g0;Le/a/a/k/g$a;ILjava/util/List;Le/a/p5/l0;ZLe/a/c/r/h/d;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-wide v2

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4
    :try_start_1
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 5
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6
    :cond_2
    throw v0
.end method

.method public abstract k(Le/a/a/k/j;Le/a/a/k/m;Ljava/util/List;Le/a/a/g/j0/g0;Le/a/a/k/g$a;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/j;",
            "Le/a/a/k/m;",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Le/a/a/g/j0/g0;",
            "TRC;Z)Z"
        }
    .end annotation
.end method

.method public final l(Le/a/a/k/g$a;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRC;I)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1}, Le/a/a/k/g$a;->g2()J

    move-result-wide v2

    .line 3
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    const/4 v4, 0x0

    if-ne v0, p2, :cond_3

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    invoke-interface {p1}, Le/a/a/k/g$a;->g2()J

    move-result-wide v5

    .line 6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    cmp-long p1, v2, v5

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :cond_2
    :goto_0
    return v1

    .line 7
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 8
    invoke-interface {p1}, Le/a/a/k/g$a;->g2()J

    move-result-wide v5

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    cmp-long p1, v2, v5

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v4

    :goto_1
    return v1

    .line 10
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result p1

    return p1
.end method
