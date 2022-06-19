.class public final Le/a/e/a/v3;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ui.dialogs.QaMockImDialog$addMessagesToExistingConversations$2"
    f = "QaMockImDialog.kt"
    l = {
        0xbe
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:I

.field public final synthetic k:Le/a/e/a/y3;

.field public final synthetic l:I

.field public final synthetic m:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Le/a/e/a/y3;ILandroid/app/ProgressDialog;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    iput p2, p0, Le/a/e/a/v3;->l:I

    iput-object p3, p0, Le/a/e/a/v3;->m:Landroid/app/ProgressDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/e/a/v3;

    iget-object v1, p0, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    iget v2, p0, Le/a/e/a/v3;->l:I

    iget-object v3, p0, Le/a/e/a/v3;->m:Landroid/app/ProgressDialog;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/e/a/v3;-><init>(Le/a/e/a/y3;ILandroid/app/ProgressDialog;Ls1/w/d;)V

    iput-object p1, v0, Le/a/e/a/v3;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/e/a/v3;

    iget-object v1, p0, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    iget v2, p0, Le/a/e/a/v3;->l:I

    iget-object v3, p0, Le/a/e/a/v3;->m:Landroid/app/ProgressDialog;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/e/a/v3;-><init>(Le/a/e/a/y3;ILandroid/app/ProgressDialog;Ls1/w/d;)V

    iput-object p1, v0, Le/a/e/a/v3;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/e/a/v3;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v9, p0

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v9, Le/a/e/a/v3;->j:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v11, :cond_0

    iget-object v0, v9, Le/a/e/a/v3;->i:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/a0;

    iget-object v1, v9, Le/a/e/a/v3;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v9, Le/a/e/a/v3;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, v9, Le/a/e/a/v3;->f:Ljava/lang/Object;

    check-cast v3, Landroid/content/ContentResolver;

    iget-object v4, v9, Le/a/e/a/v3;->e:Ljava/lang/Object;

    check-cast v4, Lq3/a/i0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    move-object v13, v1

    move-object v8, v2

    move-object v7, v3

    move-object/from16 v22, v4

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v1, v9, Le/a/e/a/v3;->e:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lq3/a/i0;

    .line 4
    iget-object v1, v9, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, v9, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    .line 7
    iget-object v1, v1, Le/a/e/a/y3;->f:Le/a/a/i0;

    if-eqz v1, :cond_13

    .line 8
    invoke-interface {v1}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 9
    new-instance v5, Ls1/z/c/a0;

    invoke-direct {v5}, Ls1/z/c/a0;-><init>()V

    iput v12, v5, Ls1/z/c/a0;->a:I

    .line 10
    iget-object v6, v9, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    .line 11
    iget-object v6, v6, Le/a/e/a/y3;->d:Le/a/a/g/w;

    if-eqz v6, :cond_11

    .line 12
    iput-object v4, v9, Le/a/e/a/v3;->e:Ljava/lang/Object;

    iput-object v3, v9, Le/a/e/a/v3;->f:Ljava/lang/Object;

    iput-object v2, v9, Le/a/e/a/v3;->g:Ljava/lang/Object;

    iput-object v1, v9, Le/a/e/a/v3;->h:Ljava/lang/Object;

    iput-object v5, v9, Le/a/e/a/v3;->i:Ljava/lang/Object;

    iput v11, v9, Le/a/e/a/v3;->j:I

    .line 13
    invoke-interface {v6, v10, v9}, Le/a/a/g/w;->f(Ljava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_2

    return-object v0

    :cond_2
    move-object v13, v1

    move-object v8, v2

    move-object v7, v3

    move-object/from16 v22, v4

    move-object v0, v5

    .line 14
    :goto_0
    move-object/from16 v23, v6

    check-cast v23, Le/a/a/g/j0/a;

    if-eqz v23, :cond_10

    .line 15
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 16
    :goto_1
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 17
    invoke-interface/range {v23 .. v23}, Le/a/a/g/j0/a;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v1

    .line 18
    iget-object v2, v1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v3, "conversation.participants"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/a/i1/h;->f([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 19
    iget-object v2, v9, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    .line 20
    iget-object v2, v2, Le/a/e/a/y3;->e:Le/a/r2/f;

    if-eqz v2, :cond_a

    .line 21
    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/k/a/a/m;

    .line 22
    iget-object v3, v1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    aget-object v3, v3, v12

    iget-object v3, v3, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v4, "conversation.participants[0].normalizedAddress"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Le/a/a/k/a/a/m;->q(Ljava/lang/String;)Le/a/r2/x;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/k/a/a/o;

    if-eqz v2, :cond_9

    .line 24
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 26
    invoke-interface {v2}, Le/a/a/k/a/a/o;->i1()Le/a/k3/l/k/a;

    move-result-object v4

    .line 27
    new-instance v5, Lcom/truecaller/data/entity/messaging/Participant$b;

    const/4 v14, 0x3

    invoke-direct {v5, v14}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 28
    iget-object v14, v4, Le/a/k3/l/k/a;->a:Ljava/lang/String;

    .line 29
    iput-object v14, v5, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 30
    iput-object v14, v5, Lcom/truecaller/data/entity/messaging/Participant$b;->c:Ljava/lang/String;

    .line 31
    iget-object v4, v4, Le/a/k3/l/k/a;->e:Ljava/lang/String;

    .line 32
    iput-object v4, v5, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    .line 33
    invoke-virtual {v5}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v4

    const-string v5, "Participant.Builder(Part\u2026                 .build()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 35
    invoke-static {v8, v4}, Le/a/c/p/a;->e1(Ljava/util/List;Lcom/truecaller/data/entity/messaging/Participant;)I

    .line 36
    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 37
    new-instance v5, Ls1/k;

    invoke-direct {v5, v4, v14}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 39
    :cond_3
    invoke-static {v2, v10}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 40
    invoke-static {v3}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 41
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v10, v6

    move-object v12, v7

    move-object/from16 p1, v13

    :goto_3
    move-object v13, v8

    goto/16 :goto_b

    .line 42
    :cond_4
    iget v3, v9, Le/a/e/a/v3;->l:I

    move v4, v12

    :goto_4
    if-ge v4, v3, :cond_8

    .line 43
    iget-object v5, v9, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    .line 44
    iget-object v5, v5, Le/a/e/a/y3;->a:Ljava/util/Random;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v5, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 45
    check-cast v5, Ls1/k;

    .line 46
    iget-object v14, v5, Ls1/k;->a:Ljava/lang/Object;

    .line 47
    move-object v15, v14

    check-cast v15, Lcom/truecaller/data/entity/messaging/Participant;

    .line 48
    iget-object v5, v5, Ls1/k;->b:Ljava/lang/Object;

    .line 49
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 50
    iget-object v14, v15, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-static {v14, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    .line 51
    iget-object v10, v9, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    .line 52
    invoke-virtual {v10, v15, v14}, Le/a/e/a/y3;->RA(Lcom/truecaller/data/entity/messaging/Participant;Z)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v16

    .line 53
    iget-object v14, v9, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    const/16 v17, 0x0

    .line 54
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 p1, v13

    .line 55
    iget-wide v12, v1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 56
    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v12, v13}, Ljava/lang/Long;-><init>(J)V

    const/16 v20, 0x0

    const/16 v21, 0x24

    move-object v12, v15

    move-object v15, v8

    move-object/from16 v18, v5

    move-object/from16 v19, v10

    .line 57
    invoke-static/range {v14 .. v21}, Le/a/e/a/y3;->TA(Le/a/e/a/y3;Ljava/util/List;Lcom/truecaller/messaging/data/types/Message;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;I)I

    move-result v5

    .line 58
    iget-object v10, v9, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    invoke-static {v12}, Le/a/a/i1/h;->c(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v13

    .line 59
    invoke-virtual {v10, v13}, Le/a/e/a/y3;->SA(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v10

    .line 60
    iget-object v13, v9, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    invoke-static {v12}, Le/a/a/i1/h;->c(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v21

    iget-object v12, v12, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    .line 61
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v12, :cond_6

    .line 62
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_5

    move v13, v11

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    :goto_5
    if-eqz v13, :cond_6

    instance-of v13, v10, Lcom/truecaller/messaging/data/types/TextEntity;

    if-eqz v13, :cond_6

    .line 63
    move-object v13, v10

    check-cast v13, Lcom/truecaller/messaging/data/types/TextEntity;

    iget-object v13, v13, Lcom/truecaller/messaging/data/types/TextEntity;->i:Ljava/lang/String;

    .line 64
    new-instance v24, Lcom/truecaller/messaging/data/types/Mention;

    const-wide/16 v15, -0x1

    .line 65
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v14

    sub-int v18, v13, v14

    .line 66
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v14, v24

    move-object/from16 v17, v12

    move-object/from16 v20, v21

    .line 67
    invoke-direct/range {v14 .. v21}, Lcom/truecaller/messaging/data/types/Mention;-><init>(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v12, v24

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    .line 68
    :goto_6
    iget-object v13, v9, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    invoke-static {v13, v8, v10, v5}, Le/a/e/a/y3;->QA(Le/a/e/a/y3;Ljava/util/List;Lcom/truecaller/messaging/data/types/Entity;I)V

    .line 69
    iget-object v10, v9, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    .line 70
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v12, :cond_7

    .line 71
    invoke-static {v12, v5}, Le/a/c/p/a;->a3(Lcom/truecaller/messaging/data/types/Mention;I)Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_7
    iget v5, v0, Ls1/z/c/a0;->a:I

    add-int/2addr v5, v11

    iput v5, v0, Ls1/z/c/a0;->a:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v13, p1

    const/4 v10, 0x0

    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_8
    move-object/from16 p1, v13

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 73
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 74
    :cond_9
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    :cond_a
    const-string v0, "imGroupManager"

    .line 75
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_b
    move-object/from16 p1, v13

    .line 76
    iget-object v2, v1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    array-length v4, v2

    if-ne v4, v11, :cond_e

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v2, v2, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    move v2, v11

    :goto_8
    if-nez v2, :cond_e

    .line 77
    iget-object v2, v1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/messaging/Participant;

    .line 78
    iget v3, v9, Le/a/e/a/v3;->l:I

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v3, :cond_e

    .line 79
    iget-object v5, v9, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    const-string v10, "participant"

    invoke-static {v2, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget v10, Le/a/e/a/y3;->k:I

    .line 81
    iget-object v10, v5, Le/a/e/a/y3;->a:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextBoolean()Z

    move-result v10

    invoke-virtual {v5, v2, v10}, Le/a/e/a/y3;->RA(Lcom/truecaller/data/entity/messaging/Participant;Z)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v16

    .line 82
    iget-object v14, v9, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    const/16 v17, 0x0

    iget-wide v12, v2, Lcom/truecaller/data/entity/messaging/Participant;->a:J

    .line 83
    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v12, v13}, Ljava/lang/Long;-><init>(J)V

    const/16 v19, 0x0

    .line 84
    iget-wide v12, v1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 85
    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v12, v13}, Ljava/lang/Long;-><init>(J)V

    const/16 v21, 0x14

    move-object v15, v8

    move-object/from16 v18, v10

    move-object/from16 v20, v5

    .line 86
    invoke-static/range {v14 .. v21}, Le/a/e/a/y3;->TA(Le/a/e/a/y3;Ljava/util/List;Lcom/truecaller/messaging/data/types/Message;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;I)I

    move-result v5

    .line 87
    iget-object v10, v9, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    const-string v12, ""

    .line 88
    invoke-virtual {v10, v12}, Le/a/e/a/y3;->SA(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v10

    .line 89
    iget-object v12, v9, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    invoke-static {v12, v8, v10, v5}, Le/a/e/a/y3;->QA(Le/a/e/a/y3;Ljava/util/List;Lcom/truecaller/messaging/data/types/Entity;I)V

    .line 90
    iget v5, v0, Ls1/z/c/a0;->a:I

    add-int/2addr v5, v11

    iput v5, v0, Ls1/z/c/a0;->a:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 91
    :cond_e
    :goto_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_f

    .line 92
    iget-object v1, v9, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    invoke-static {v1, v7, v8}, Le/a/e/a/y3;->OA(Le/a/e/a/y3;Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    .line 93
    iget-object v1, v9, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    invoke-static {v1}, Le/a/e/a/y3;->PA(Le/a/e/a/y3;)Ls1/w/f;

    move-result-object v15

    const/16 v16, 0x0

    new-instance v17, Le/a/e/a/v3$a;

    const/4 v2, 0x0

    move-object/from16 v1, v17

    move-object/from16 v3, p0

    move-object/from16 v4, v22

    move-object v5, v8

    move-object v10, v6

    move-object/from16 v6, p1

    move-object v12, v7

    move-object v7, v0

    move-object v13, v8

    move-object v8, v12

    invoke-direct/range {v1 .. v8}, Le/a/e/a/v3$a;-><init>(Ls1/w/d;Le/a/e/a/v3;Lq3/a/i0;Ljava/util/ArrayList;Ljava/lang/String;Ls1/z/c/a0;Landroid/content/ContentResolver;)V

    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object/from16 v14, v22

    invoke-static/range {v14 .. v19}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_b

    :cond_f
    move-object v10, v6

    move-object v12, v7

    goto/16 :goto_3

    .line 94
    :goto_b
    sget-object v1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v10

    move-object v7, v12

    move-object v8, v13

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v13, p1

    goto/16 :goto_1

    :cond_10
    move-object v12, v7

    move-object v13, v8

    .line 95
    iget-object v1, v9, Le/a/e/a/v3;->k:Le/a/e/a/y3;

    invoke-static {v1, v12, v13}, Le/a/e/a/y3;->OA(Le/a/e/a/y3;Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    .line 96
    iget v0, v0, Ls1/z/c/a0;->a:I

    .line 97
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    :cond_11
    const-string v0, "readMessageStorage"

    .line 98
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 99
    :cond_12
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    :cond_13
    move-object v0, v10

    const-string v1, "messageSettings"

    .line 100
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_14
    move v1, v12

    .line 101
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method
