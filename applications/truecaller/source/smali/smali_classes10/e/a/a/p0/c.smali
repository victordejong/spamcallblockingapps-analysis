.class public final Le/a/a/p0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/p0/b;


# instance fields
.field public final b:Le/a/u3/g;

.field public final c:Le/a/q2/a;

.field public final d:Le/a/c/i/i/a;

.field public final e:Le/a/a/i0;

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c/g/f;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroid/content/ContentResolver;

.field public final h:Le/a/a/g/w;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/q2/a;Le/a/c/i/i/a;Le/a/a/i0;Lo3/a;Landroid/content/ContentResolver;Le/a/a/g/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/u3/g;",
            "Le/a/q2/a;",
            "Le/a/c/i/i/a;",
            "Le/a/a/i0;",
            "Lo3/a<",
            "Le/a/c/g/f;",
            ">;",
            "Landroid/content/ContentResolver;",
            "Le/a/a/g/w;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parseManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsCategorizer"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMessageStorage"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/p0/c;->b:Le/a/u3/g;

    iput-object p2, p0, Le/a/a/p0/c;->c:Le/a/q2/a;

    iput-object p3, p0, Le/a/a/p0/c;->d:Le/a/c/i/i/a;

    iput-object p4, p0, Le/a/a/p0/c;->e:Le/a/a/i0;

    iput-object p5, p0, Le/a/a/p0/c;->f:Lo3/a;

    iput-object p6, p0, Le/a/a/p0/c;->g:Landroid/content/ContentResolver;

    iput-object p7, p0, Le/a/a/p0/c;->h:Le/a/a/g/w;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/h/f;)Le/a/a/p0/a;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsParseResponse"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/a/p0/c;->d(Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/h/f;)Le/a/a/p0/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/p0/a;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "message"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Le/a/a/p0/c;->d:Le/a/c/i/i/a;

    .line 2
    new-instance v15, Le/a/c/h/m/c;

    .line 3
    iget-wide v4, v1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 4
    iget-object v3, v1, Lcom/truecaller/messaging/data/types/Message;->s:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    move-object v6, v3

    const-string v3, "this.rawAddress ?: \"\""

    invoke-static {v6, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v7

    const-string v3, "this.buildMessageText()"

    invoke-static {v7, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v3, v1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    invoke-virtual {v3}, Lw3/b/a/e0/c;->n()Ljava/util/Date;

    move-result-object v8

    const-string v3, "this.date.toDate()"

    invoke-static {v8, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-wide v9, v1, Lcom/truecaller/messaging/data/types/Message;->b:J

    .line 8
    iget v11, v1, Lcom/truecaller/messaging/data/types/Message;->k:I

    .line 9
    iget-object v12, v1, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 10
    iget-object v3, v1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v3, v3, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    const/16 v17, 0x380

    move-object/from16 v18, v3

    move-object v3, v15

    move-object/from16 v19, v15

    move/from16 v15, v16

    move-object/from16 v16, v18

    .line 11
    invoke-direct/range {v3 .. v17}, Le/a/c/h/m/c;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;JILjava/lang/String;ILjava/lang/String;ZLjava/lang/String;I)V

    move-object/from16 v3, v19

    .line 12
    invoke-interface {v2, v3}, Le/a/c/i/i/a;->o(Le/a/c/h/m/c;)Le/a/c/r/h/f$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/a/a/p0/c;->d(Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/h/f;)Le/a/a/p0/a;

    move-result-object v1

    return-object v1
.end method

.method public c()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/a/a/p0/c;->e:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->D3()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v1, Le/a/a/p0/c;->b:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->e0()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    new-instance v0, Le/a/a/p0/c$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/a/a/p0/c$a;-><init>(Le/a/a/p0/c;Ls1/w/d;)V

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, v2}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Le/a/a/g/j0/q;

    if-eqz v4, :cond_7

    .line 3
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_1
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6
    invoke-interface {v4}, Le/a/a/g/j0/q;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v6

    const-string v7, "it.message"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v7, v6, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v8, "message.participant"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Le/a/c/p/a;->o(Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 8
    iget-wide v6, v6, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 9
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/16 v6, 0x384

    .line 10
    invoke-static {v5, v6}, Ls1/u/i;->k(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    check-cast v5, Ljava/util/ArrayList;

    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 12
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 13
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "category"

    const/4 v10, 0x4

    .line 14
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "classification"

    const/4 v10, 0x2

    .line 15
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 16
    invoke-virtual {v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 17
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id IN ("

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Le/a/a/p0/c$b;->b:Le/a/a/p0/c$b;

    const/16 v16, 0x1f

    move-object v7, v6

    move-object v2, v14

    move/from16 v14, v16

    invoke-static/range {v7 .. v14}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 18
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 20
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 21
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    .line 22
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    check-cast v6, [Ljava/lang/String;

    .line 23
    invoke-virtual {v15, v2, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 26
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_6

    .line 28
    iget-object v2, v1, Le/a/a/p0/c;->g:Landroid/content/ContentResolver;

    sget-object v5, Le/a/m0/a1;->a:Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "com.truecaller"

    :try_start_2
    const-string v6, "TruecallerContract.getAuthority()"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    :try_start_3
    invoke-virtual {v2, v5, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    const-string v2, "applyBatch(authority, operations)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 30
    :try_start_4
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    :goto_3
    const/4 v2, 0x0

    .line 31
    invoke-static {v4, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v4, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 32
    :cond_7
    :goto_4
    iget-object v0, v1, Le/a/a/p0/c;->e:Le/a/a/i0;

    invoke-interface {v0, v3}, Le/a/a/i0;->H(Z)V

    :cond_8
    :goto_5
    return-void
.end method

.method public final d(Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/h/f;)Le/a/a/p0/a;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    .line 1
    iget-object v2, v0, Le/a/a/p0/c;->b:Le/a/u3/g;

    invoke-virtual {v2}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    new-instance v1, Le/a/a/p0/a;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Le/a/a/p0/a;-><init>(IILe/a/c/g/a;ZZI)V

    return-object v1

    .line 3
    :cond_0
    iget-object v2, v1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v8, "message.participant"

    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/data/entity/messaging/Participant;->l()Z

    move-result v9

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "message.buildMessageText()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget v4, v1, Lcom/truecaller/messaging/data/types/Message;->g:I

    const/4 v6, 0x1

    and-int/2addr v4, v6

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v7

    .line 6
    :goto_0
    iget v10, v1, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-eqz v10, :cond_3

    const/4 v11, 0x4

    if-ne v10, v11, :cond_2

    goto :goto_1

    :cond_2
    move v10, v7

    goto :goto_2

    :cond_3
    :goto_1
    move v10, v6

    .line 7
    :goto_2
    iget-object v11, v1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v11, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/truecaller/data/entity/messaging/Participant;->l()Z

    move-result v11

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    move v2, v6

    goto :goto_3

    :cond_4
    move v2, v7

    :goto_3
    if-nez v2, :cond_6

    if-nez v4, :cond_6

    if-nez v11, :cond_5

    if-nez v10, :cond_5

    goto :goto_4

    :cond_5
    move v2, v7

    goto :goto_5

    :cond_6
    :goto_4
    move v2, v6

    :goto_5
    if-eqz v2, :cond_7

    .line 9
    new-instance v1, Le/a/a/p0/a;

    const/4 v11, 0x2

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1c

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Le/a/a/p0/a;-><init>(IILe/a/c/g/a;ZZI)V

    return-object v1

    :cond_7
    if-eqz v9, :cond_8

    .line 10
    sget-object v2, Lcom/truecaller/insights/categorizer/CategorizerInputType;->IM:Lcom/truecaller/insights/categorizer/CategorizerInputType;

    goto :goto_6

    :cond_8
    sget-object v2, Lcom/truecaller/insights/categorizer/CategorizerInputType;->SMS:Lcom/truecaller/insights/categorizer/CategorizerInputType;

    .line 11
    :goto_6
    iget-object v4, v0, Le/a/a/p0/c;->e:Le/a/a/i0;

    const-wide/16 v10, 0x0

    invoke-interface {v4, v10, v11}, Le/a/a/i0;->b4(J)J

    move-result-wide v12

    cmp-long v4, v12, v10

    if-eqz v4, :cond_9

    move v15, v6

    goto :goto_7

    :cond_9
    move v15, v7

    .line 12
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v3, v1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v3, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/a/c/p/a;->V2(Lcom/truecaller/data/entity/messaging/Participant;)Le/a/l5/a/b4;

    move-result-object v3

    invoke-static {v3}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 14
    iget-object v6, v0, Le/a/a/p0/c;->f:Lo3/a;

    invoke-interface {v6}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/c/g/f;

    invoke-interface {v6, v4, v2}, Le/a/c/g/f;->s(Ljava/lang/String;Lcom/truecaller/insights/categorizer/CategorizerInputType;)Le/a/c/g/a;

    move-result-object v4

    .line 15
    iget-object v6, v0, Le/a/a/p0/c;->b:Le/a/u3/g;

    invoke-virtual {v6}, Le/a/u3/g;->e0()Le/a/u3/b;

    move-result-object v6

    invoke-interface {v6}, Le/a/u3/b;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, v0, Le/a/a/p0/c;->d:Le/a/c/i/i/a;

    invoke-interface {v6, v5}, Le/a/c/i/i/a;->r(Le/a/c/r/h/f;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 16
    new-instance v2, Le/a/a/p0/a;

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v14, 0x0

    const/16 v16, 0x8

    move-object v10, v2

    move-object v13, v4

    invoke-direct/range {v10 .. v16}, Le/a/a/p0/a;-><init>(IILe/a/c/g/a;ZZI)V

    goto/16 :goto_9

    .line 17
    :cond_a
    instance-of v6, v4, Le/a/c/g/a$b;

    if-eqz v6, :cond_d

    .line 18
    instance-of v6, v5, Le/a/c/r/h/f$b;

    if-eqz v6, :cond_c

    iget-object v6, v0, Le/a/a/p0/c;->d:Le/a/c/i/i/a;

    invoke-interface {v6, v5}, Le/a/c/i/i/a;->e(Le/a/c/r/h/f;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 19
    new-instance v6, Le/a/a/p0/a;

    const/4 v11, 0x2

    const/4 v12, 0x2

    const/4 v14, 0x1

    move-object v10, v6

    move-object v13, v4

    invoke-direct/range {v10 .. v15}, Le/a/a/p0/a;-><init>(IILe/a/c/g/a;ZZ)V

    goto :goto_8

    .line 20
    :cond_b
    new-instance v6, Le/a/a/p0/a;

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v14, 0x0

    const/16 v16, 0x8

    move-object v10, v6

    move-object v13, v4

    invoke-direct/range {v10 .. v16}, Le/a/a/p0/a;-><init>(IILe/a/c/g/a;ZZI)V

    goto :goto_8

    .line 21
    :cond_c
    new-instance v6, Le/a/a/p0/a;

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v14, 0x0

    const/16 v16, 0x8

    move-object v10, v6

    move-object v13, v4

    invoke-direct/range {v10 .. v16}, Le/a/a/p0/a;-><init>(IILe/a/c/g/a;ZZI)V

    goto :goto_8

    .line 22
    :cond_d
    instance-of v6, v4, Le/a/c/g/a$a;

    if-eqz v6, :cond_11

    new-instance v6, Le/a/a/p0/a;

    const/4 v11, 0x2

    const/4 v12, 0x2

    const/4 v14, 0x0

    const/16 v16, 0x8

    move-object v10, v6

    move-object v13, v4

    invoke-direct/range {v10 .. v16}, Le/a/a/p0/a;-><init>(IILe/a/c/g/a;ZZI)V

    .line 23
    :goto_8
    sget-object v7, Lcom/truecaller/insights/categorizer/CategorizerInputType;->IM:Lcom/truecaller/insights/categorizer/CategorizerInputType;

    if-ne v2, v7, :cond_e

    .line 24
    iget-boolean v6, v10, Le/a/a/p0/a;->d:Z

    .line 25
    sget-object v2, Le/a/a/p0/b$a;->a:Le/a/a/p0/b$a;

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Le/a/a/p0/b$a;->a(Ljava/util/List;Le/a/c/g/a;Le/a/c/r/h/f;ZLcom/truecaller/insights/categorizer/CategorizerInputType;)Le/a/l5/a/b2$b;

    move-result-object v2

    .line 26
    iget-object v3, v0, Le/a/a/p0/c;->c:Le/a/q2/a;

    invoke-virtual {v2}, Le/a/l5/a/b2$b;->a()Le/a/l5/a/b2;

    move-result-object v2

    const-string v4, "it.build()"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    :cond_e
    move-object v2, v10

    .line 27
    :goto_9
    iget-object v3, v0, Le/a/a/p0/c;->b:Le/a/u3/g;

    invoke-virtual {v3}, Le/a/u3/g;->e0()Le/a/u3/b;

    move-result-object v3

    invoke-interface {v3}, Le/a/u3/b;->isEnabled()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_f

    .line 28
    iget v3, v2, Le/a/a/p0/a;->a:I

    if-ne v3, v4, :cond_f

    .line 29
    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v1, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/c/p/a;->o(Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 30
    new-instance v1, Le/a/a/p0/a;

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1c

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Le/a/a/p0/a;-><init>(IILe/a/c/g/a;ZZI)V

    return-object v1

    .line 31
    :cond_f
    iget-object v1, v0, Le/a/a/p0/c;->b:Le/a/u3/g;

    .line 32
    iget-object v3, v1, Le/a/u3/g;->t4:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0x11b

    aget-object v5, v5, v6

    invoke-virtual {v3, v1, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    .line 33
    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v9, :cond_10

    .line 34
    iget v1, v2, Le/a/a/p0/a;->a:I

    if-ne v1, v4, :cond_10

    .line 35
    new-instance v2, Le/a/a/p0/a;

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Le/a/a/p0/a;-><init>(IILe/a/c/g/a;ZZI)V

    :cond_10
    return-object v2

    .line 36
    :cond_11
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1
.end method
