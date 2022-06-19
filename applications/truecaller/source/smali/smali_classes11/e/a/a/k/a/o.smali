.class public final Le/a/a/k/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/n;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Le/a/a/g/g;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/k/a/t;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Ln3/m0/y;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/v0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/k/a/m0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Le/a/a/g/g;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Le/a/a/g/g;",
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/k/a/t;",
            ">;>;",
            "Lo3/a<",
            "Ln3/m0/y;",
            ">;",
            "Lo3/a<",
            "Le/a/a/v0/a;",
            ">;",
            "Lo3/a<",
            "Le/a/a/k/a/m0;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursorFactory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMessageStorage"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageStorage"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkMetaDataExtractor"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imTransport"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/o;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/a/k/a/o;->b:Le/a/a/g/g;

    iput-object p3, p0, Le/a/a/k/a/o;->c:Lo3/a;

    iput-object p4, p0, Le/a/a/k/a/o;->d:Lo3/a;

    iput-object p5, p0, Le/a/a/k/a/o;->e:Lo3/a;

    iput-object p6, p0, Le/a/a/k/a/o;->f:Lo3/a;

    iput-object p7, p0, Le/a/a/k/a/o;->g:Lo3/a;

    iput-object p8, p0, Le/a/a/k/a/o;->h:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/k/p;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "message"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    const-string v3, "message.getTransportInfo()"

    .line 2
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    .line 3
    iget v2, v2, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->r:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0xbb8

    const-string v6, "message_id=?"

    const-string v7, "edit_message_date"

    const/4 v8, 0x0

    .line 4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eq v2, v5, :cond_7

    const/16 v5, 0xbb9

    if-eq v2, v5, :cond_0

    goto/16 :goto_e

    .line 5
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->g()Z

    move-result v2

    new-array v5, v8, [Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 6
    iget-wide v10, v0, Lcom/truecaller/messaging/data/types/Message;->S:J

    .line 7
    iget-object v12, v1, Le/a/a/k/a/o;->a:Landroid/content/ContentResolver;

    .line 8
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object v13

    new-array v2, v4, [Ljava/lang/String;

    .line 9
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v8

    const/4 v14, 0x0

    const/16 v17, 0x0

    const-string v15, "(status & 256) = 256 AND edit_message_id = ?"

    move-object/from16 v16, v2

    .line 10
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 11
    iget-object v5, v1, Le/a/a/k/a/o;->b:Le/a/a/g/g;

    invoke-interface {v5, v2}, Le/a/a/g/g;->n(Landroid/database/Cursor;)Le/a/a/g/j0/q;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 12
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "it"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Le/a/a/g/j0/q;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    move-object v5, v3

    :goto_0
    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :cond_2
    move-object v5, v3

    .line 13
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-wide v10, v0, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 15
    invoke-static {v10, v11}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 16
    iget v11, v0, Lcom/truecaller/messaging/data/types/Message;->g:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "status"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 17
    iget-wide v11, v0, Lcom/truecaller/messaging/data/types/Message;->R:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    if-eqz v5, :cond_3

    .line 18
    iget-object v10, v5, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    const-string v11, "editDraft.dateSent"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-wide v10, v10, Lw3/b/a/e0/e;->a:J

    .line 20
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "date_sent"

    invoke-virtual {v7, v11, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 21
    :cond_3
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    .line 22
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    new-array v10, v4, [Ljava/lang/String;

    .line 24
    iget-wide v11, v0, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 25
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v8

    invoke-virtual {v7, v6, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v6, "edited"

    .line 26
    invoke-virtual {v0, v6, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 28
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {v1, v2}, Le/a/a/k/a/o;->d(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v0, v0

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_2

    :cond_4
    move v0, v8

    :goto_2
    xor-int/2addr v0, v4

    if-ne v0, v4, :cond_6

    if-eqz v5, :cond_5

    .line 30
    iget-object v0, v1, Le/a/a/k/a/o;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    .line 31
    iget-wide v5, v5, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 32
    invoke-interface {v0, v5, v6}, Le/a/a/g/m;->Q(J)Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->g()V

    .line 33
    :cond_5
    new-instance v0, Le/a/a/k/p;

    invoke-direct {v0, v4, v4, v8, v3}, Le/a/a/k/p;-><init>(ZZZLs1/z/c/f;)V

    goto :goto_3

    .line 34
    :cond_6
    new-instance v0, Le/a/a/k/p;

    invoke-direct {v0, v8, v8, v8, v3}, Le/a/a/k/p;-><init>(ZZZLs1/z/c/f;)V

    :goto_3
    move-object v3, v0

    goto/16 :goto_e

    .line 35
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->g()Z

    move-result v2

    new-array v3, v8, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 36
    iget-wide v2, v0, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 37
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 38
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 39
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->h()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 41
    iget-object v13, v1, Le/a/a/k/a/o;->a:Landroid/content/ContentResolver;

    .line 42
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v14

    const-string v12, "entity_info1"

    const-string v15, "entity_type"

    .line 43
    filled-new-array {v12, v15}, [Ljava/lang/String;

    move-result-object v15

    new-array v12, v4, [Ljava/lang/String;

    .line 44
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v12, v8

    const/16 v18, 0x0

    const-string v16, "message_id = ? AND entity_type IN (1, 2, 3, 4, 5, 6)"

    move-object/from16 v17, v12

    .line 45
    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 46
    :goto_4
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 47
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const-string v14, "Uri.parse(cursor.getString(0))"

    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :cond_8
    const/4 v13, 0x0

    .line 49
    invoke-static {v12, v13}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v12, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 50
    :cond_9
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->i()Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v1, v2, v3, v8}, Le/a/a/k/a/o;->e(JI)Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_a
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_b
    iget-object v9, v0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    const-string v15, "message.entities"

    invoke-static {v9, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    array-length v12, v9

    move v13, v8

    :goto_6
    if-ge v13, v12, :cond_d

    aget-object v14, v9, v13

    .line 53
    invoke-virtual {v14}, Lcom/truecaller/messaging/data/types/Entity;->n()Z

    move-result v14

    if-eqz v14, :cond_c

    move v8, v4

    goto :goto_7

    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    const/4 v9, 0x7

    if-nez v8, :cond_e

    invoke-virtual {v1, v2, v3, v9}, Le/a/a/k/a/o;->e(JI)Z

    move-result v8

    if-eqz v8, :cond_f

    :cond_e
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_10

    .line 55
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "message_id=? AND entity_type IN ("

    .line 56
    invoke-static {v9}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3f

    move-object/from16 v20, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    invoke-static/range {v11 .. v18}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x29

    invoke-static {v9, v11, v12}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/String;

    .line 57
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 58
    invoke-virtual {v8, v9, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 59
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    .line 60
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    move-object/from16 v20, v15

    .line 61
    :goto_8
    iget-object v8, v0, Lcom/truecaller/messaging/data/types/Message;->p:[Lcom/truecaller/messaging/data/types/Mention;

    const-string v9, "message.mentions"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v8, v8

    if-nez v8, :cond_11

    move v8, v4

    goto :goto_9

    :cond_11
    const/4 v8, 0x0

    :goto_9
    xor-int/2addr v8, v4

    if-eqz v8, :cond_12

    .line 62
    invoke-static {}, Le/a/b0/q/g0;->s()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    new-array v11, v4, [Ljava/lang/String;

    .line 63
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v6, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 64
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    .line 65
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_12
    invoke-static {v2, v3}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 67
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 68
    iget-wide v11, v0, Lcom/truecaller/messaging/data/types/Message;->S:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "edit_message_id"

    invoke-virtual {v8, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    iget-wide v11, v0, Lcom/truecaller/messaging/data/types/Message;->R:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v7, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    invoke-virtual {v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 71
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    .line 72
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v6, v1, Le/a/a/k/a/o;->h:Lo3/a;

    invoke-interface {v6}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/a/k/a/m0;

    iget-object v7, v0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    move-object/from16 v8, v20

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5, v2, v3, v7}, Le/a/a/k/a/m0;->Y(Ljava/util/ArrayList;J[Lcom/truecaller/messaging/data/types/Entity;)V

    .line 74
    iget-object v6, v1, Le/a/a/k/a/o;->h:Lo3/a;

    invoke-interface {v6}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/a/k/a/m0;

    iget-object v7, v0, Lcom/truecaller/messaging/data/types/Message;->p:[Lcom/truecaller/messaging/data/types/Mention;

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5, v2, v3, v7}, Le/a/a/k/a/m0;->X(Ljava/util/ArrayList;J[Lcom/truecaller/messaging/data/types/Mention;)V

    .line 75
    invoke-virtual {v1, v5}, Le/a/a/k/a/o;->d(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    if-eqz v5, :cond_14

    array-length v5, v5

    if-nez v5, :cond_13

    move v5, v4

    goto :goto_a

    :cond_13
    const/4 v5, 0x0

    :goto_a
    if-ne v5, v4, :cond_14

    .line 76
    new-instance v0, Le/a/a/k/p;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v3, v2}, Le/a/a/k/p;-><init>(ZZZLs1/z/c/f;)V

    goto/16 :goto_3

    .line 77
    :cond_14
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 78
    iget-object v7, v1, Le/a/a/k/a/o;->a:Landroid/content/ContentResolver;

    invoke-static {v7, v6}, Le/a/p5/s0/f;->K(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    goto :goto_b

    .line 79
    :cond_15
    iget-object v5, v1, Le/a/a/k/a/o;->e:Lo3/a;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/r2/f;

    invoke-interface {v5}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/k/a/t;

    invoke-interface {v5}, Le/a/a/k/a/t;->c()V

    .line 80
    iget-object v5, v0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    array-length v6, v5

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v6, :cond_17

    aget-object v8, v5, v7

    .line 82
    invoke-virtual {v8}, Lcom/truecaller/messaging/data/types/Entity;->n()Z

    move-result v8

    if-eqz v8, :cond_16

    const/4 v5, 0x0

    goto :goto_d

    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_17
    move v5, v4

    :goto_d
    if-eqz v5, :cond_18

    iget-object v5, v1, Le/a/a/k/a/o;->g:Lo3/a;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/v0/a;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "message.buildMessageText()"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Le/a/a/v0/a;->b(Ljava/lang/String;)Ls1/k;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 83
    iget-object v5, v1, Le/a/a/k/a/o;->f:Lo3/a;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/m0/y;

    .line 84
    sget-object v6, Ln3/m0/h;->c:Ln3/m0/h;

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "text"

    .line 86
    invoke-static {v0, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v8, Ln3/m0/r$a;

    const-class v9, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;

    invoke-direct {v8, v9}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 88
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 89
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "message_id"

    invoke-virtual {v9, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {v9, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Ln3/m0/f;

    invoke-direct {v0, v9}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 92
    invoke-static {v0}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    .line 93
    iget-object v2, v8, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v0, v2, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 94
    iget-object v0, v8, Ln3/m0/z$a;->d:Ljava/util/Set;

    const-string v2, "fetch_link_preview"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v0, Ln3/m0/d$a;

    invoke-direct {v0}, Ln3/m0/d$a;-><init>()V

    sget-object v2, Ln3/m0/q;->b:Ln3/m0/q;

    .line 96
    iput-object v2, v0, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 97
    new-instance v2, Ln3/m0/d;

    invoke-direct {v2, v0}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 98
    iget-object v0, v8, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v2, v0, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 99
    invoke-virtual {v8}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    const-string v2, "OneTimeWorkRequest.Build\u2026\n                .build()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ln3/m0/r;

    const-string v2, "FetchLinkPreview"

    .line 100
    invoke-virtual {v5, v2, v6, v0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 101
    :cond_18
    new-instance v0, Le/a/a/k/p;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v4, v4, v3, v2}, Le/a/a/k/p;-><init>(ZZZLs1/z/c/f;)V

    goto/16 :goto_3

    :goto_e
    return-object v3
.end method

.method public b(Lcom/truecaller/messaging/data/types/Message;)Lcom/truecaller/messaging/data/types/Message;
    .locals 9

    const-string v0, "draft"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/z/c/b0;

    invoke-direct {v0}, Ls1/z/c/b0;-><init>()V

    iget-wide v1, p1, Lcom/truecaller/messaging/data/types/Message;->S:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const/4 v5, 0x0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v5

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Ls1/z/c/b0;->a:J

    .line 2
    new-instance v1, Le/a/a/k/a/o$a;

    invoke-direct {v1, p0, v0, v5}, Le/a/a/k/a/o$a;-><init>(Le/a/a/k/a/o;Ls1/z/c/b0;Ls1/w/d;)V

    invoke-static {v5, v1, v3, v5}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/data/types/Message;

    if-eqz v0, :cond_4

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 5
    invoke-static {v2, v3}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 6
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/16 v5, 0x100

    .line 7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "status"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    iget-object v5, v0, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    const-string v6, "message.date"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-wide v5, v5, Lw3/b/a/e0/e;->a:J

    .line 10
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "date"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 11
    iget-object v5, v0, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    const-string v6, "message.dateSent"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-wide v5, v5, Lw3/b/a/e0/e;->a:J

    .line 13
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "date_sent"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 14
    iget-wide v5, v0, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 15
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "edit_message_id"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 16
    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-wide v2, v0, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 20
    invoke-static {v2, v3}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 21
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 22
    iget-wide v7, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 23
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {p0, v1, v0, p1}, Le/a/a/k/a/o;->f(Ljava/util/ArrayList;Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Message;)Landroid/net/Uri;

    move-result-object p1

    .line 27
    invoke-virtual {p0, v1}, Le/a/a/k/a/o;->d(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v4, v1

    :cond_2
    if-lez v4, :cond_3

    if-eqz p1, :cond_3

    .line 28
    iget-object v1, p0, Le/a/a/k/a/o;->a:Landroid/content/ContentResolver;

    invoke-static {v1, p1}, Le/a/p5/s0/f;->K(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    :cond_3
    return-object v0

    :cond_4
    return-object v5
.end method

.method public c(Lcom/truecaller/messaging/data/types/Message;)Lcom/truecaller/messaging/data/types/Message;
    .locals 7

    const-string v0, "draft"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/z/c/b0;

    invoke-direct {v0}, Ls1/z/c/b0;-><init>()V

    iget-wide v1, p1, Lcom/truecaller/messaging/data/types/Message;->S:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const/4 v5, 0x0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v5

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Ls1/z/c/b0;->a:J

    .line 2
    new-instance v1, Le/a/a/k/a/o$b;

    invoke-direct {v1, p0, v0, v5}, Le/a/a/k/a/o$b;-><init>(Le/a/a/k/a/o;Ls1/z/c/b0;Ls1/w/d;)V

    invoke-static {v5, v1, v3, v5}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/data/types/Message;

    if-eqz v0, :cond_5

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-wide v2, v0, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 5
    invoke-static {v2, v3}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 6
    iget-wide v5, v0, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "edit_message_id"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 8
    new-instance v3, Lw3/b/a/b;

    invoke-direct {v3}, Lw3/b/a/b;-><init>()V

    const-string v5, "DateTime.now()"

    .line 9
    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-wide v5, v3, Lw3/b/a/e0/e;->a:J

    .line 11
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "edit_message_date"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p0, v1, v0, p1}, Le/a/a/k/a/o;->f(Ljava/util/ArrayList;Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Message;)Landroid/net/Uri;

    move-result-object v2

    .line 15
    invoke-virtual {p0, v1}, Le/a/a/k/a/o;->d(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v4, v1

    :cond_2
    if-lez v4, :cond_4

    if-eqz v2, :cond_3

    .line 16
    iget-object v1, p0, Le/a/a/k/a/o;->a:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Le/a/p5/s0/f;->K(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 17
    :cond_3
    iget-object v1, p0, Le/a/a/k/a/o;->d:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/m;

    .line 18
    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 19
    invoke-interface {v1, v2, v3}, Le/a/a/g/m;->Q(J)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->g()V

    :cond_4
    return-object v0

    :cond_5
    return-object v5
.end method

.method public final d(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/a/k/a/o;->a:Landroid/content/ContentResolver;

    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "com.truecaller"

    :try_start_1
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(JI)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/k/a/o;->a:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "MessageEntitiesTable.getContentUri()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 3
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "COUNT(*)"

    const-string p3, "entity_type=? AND message_id=?"

    .line 4
    invoke-static {v0, v1, p1, p3, v2}, Le/a/p5/s0/f;->D(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    if-lez p1, :cond_1

    move v3, p2

    :cond_1
    return v3
.end method

.method public final f(Ljava/util/ArrayList;Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Message;)Landroid/net/Uri;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/truecaller/messaging/data/types/Message;",
            "Lcom/truecaller/messaging/data/types/Message;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/truecaller/messaging/data/types/Message;->h()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "_id=?"

    const-string v3, "messageToEdit.entities"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p2, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v6, v0

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v0, v7

    invoke-virtual {v8}, Lcom/truecaller/messaging/data/types/Entity;->l()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lcom/truecaller/messaging/data/types/Entity;->h()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lcom/truecaller/messaging/data/types/Entity;->w()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lcom/truecaller/messaging/data/types/Entity;->e()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lcom/truecaller/messaging/data/types/Entity;->g()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lcom/truecaller/messaging/data/types/Entity;->t()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    move v9, v5

    goto :goto_2

    :cond_1
    :goto_1
    move v9, v1

    :goto_2
    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move-object v8, v4

    :goto_3
    instance-of v0, v8, Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-nez v0, :cond_4

    move-object v8, v4

    :cond_4
    check-cast v8, Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v8, :cond_5

    .line 3
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-array v6, v1, [Ljava/lang/String;

    .line 4
    iget-wide v9, v8, Lcom/truecaller/messaging/data/types/Entity;->a:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v8, :cond_6

    .line 7
    iget-object v0, v8, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    goto :goto_4

    :cond_6
    move-object v0, v4

    .line 8
    :goto_4
    iget-object v6, p2, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    invoke-static {v6, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v6

    move v7, v5

    :goto_5
    if-ge v7, v3, :cond_8

    aget-object v8, v6, v7

    invoke-virtual {v8}, Lcom/truecaller/messaging/data/types/Entity;->n()Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    move-object v8, v4

    :goto_6
    instance-of v3, v8, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;

    if-nez v3, :cond_9

    goto :goto_7

    :cond_9
    move-object v4, v8

    :goto_7
    check-cast v4, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;

    if-eqz v4, :cond_a

    .line 9
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    new-array v6, v1, [Ljava/lang/String;

    .line 10
    iget-wide v7, v4, Lcom/truecaller/messaging/data/types/Entity;->a:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v5

    invoke-virtual {v3, v2, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 12
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_a
    iget-object v2, p3, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    const-string v3, "editDraft.entities"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    array-length v3, v2

    move v4, v5

    :goto_8
    if-ge v4, v3, :cond_c

    aget-object v6, v2, v4

    .line 15
    invoke-virtual {v6}, Lcom/truecaller/messaging/data/types/Entity;->r()Z

    move-result v6

    if-eqz v6, :cond_b

    move v2, v1

    goto :goto_9

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_c
    move v2, v5

    :goto_9
    if-eqz v2, :cond_d

    .line 16
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    .line 17
    iget-wide v6, p2, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 18
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "message_id=? AND entity_type=0"

    .line 19
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 21
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_d
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    .line 23
    iget-wide v6, p3, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 24
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, v5

    const-string p3, "message_id=?"

    invoke-virtual {v2, p3, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    .line 25
    iget-wide v2, p2, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "message_id"

    invoke-virtual {p3, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "edited"

    invoke-virtual {p2, v1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    .line 28
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
