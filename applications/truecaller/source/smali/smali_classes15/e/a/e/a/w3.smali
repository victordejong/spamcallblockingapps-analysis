.class public final Le/a/e/a/w3;
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
    c = "com.truecaller.ui.dialogs.QaMockImDialog$addMessagesToNewConversations$2"
    f = "QaMockImDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/e/a/y3;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Le/a/e/a/y3;IILandroid/app/ProgressDialog;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/w3;->f:Le/a/e/a/y3;

    iput p2, p0, Le/a/e/a/w3;->g:I

    iput p3, p0, Le/a/e/a/w3;->h:I

    iput-object p4, p0, Le/a/e/a/w3;->i:Landroid/app/ProgressDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance v0, Le/a/e/a/w3;

    iget-object v2, p0, Le/a/e/a/w3;->f:Le/a/e/a/y3;

    iget v3, p0, Le/a/e/a/w3;->g:I

    iget v4, p0, Le/a/e/a/w3;->h:I

    iget-object v5, p0, Le/a/e/a/w3;->i:Landroid/app/ProgressDialog;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Le/a/e/a/w3;-><init>(Le/a/e/a/y3;IILandroid/app/ProgressDialog;Ls1/w/d;)V

    iput-object p1, v0, Le/a/e/a/w3;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/e/a/w3;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/e/a/w3;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/e/a/w3;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    .line 1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v0, v1, Le/a/e/a/w3;->e:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lq3/a/i0;

    .line 2
    iget-object v2, v1, Le/a/e/a/w3;->f:Le/a/e/a/y3;

    .line 3
    iget-object v0, v2, Le/a/e/a/y3;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    iget-object v0, v2, Le/a/e/a/y3;->b:Le/m/f/a/j;

    const-string v3, "phoneNumberUtil"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Le/m/f/a/j;->f:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const-string v3, "phoneNumberUtil.supportedRegions"

    .line 6
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    iget-object v5, v2, Le/a/e/a/y3;->b:Le/m/f/a/j;

    .line 11
    sget-object v6, Le/m/f/a/j$d;->a:Le/m/f/a/j$d;

    .line 12
    invoke-virtual {v5, v0}, Le/m/f/a/j;->I(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 13
    sget-object v5, Le/m/f/a/j;->h:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid or unknown region code provided: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v5, v0}, Le/m/f/a/j;->s(Ljava/lang/String;)Le/m/f/a/l;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Le/m/f/a/j;->v(Le/m/f/a/l;Le/m/f/a/j$d;)Le/m/f/a/n;

    move-result-object v6

    .line 15
    :try_start_0
    iget-boolean v7, v6, Le/m/f/a/n;->e:Z

    if-eqz v7, :cond_3

    .line 16
    iget-object v6, v6, Le/m/f/a/n;->f:Ljava/lang/String;

    .line 17
    invoke-virtual {v5, v6, v0}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object v0
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 18
    sget-object v5, Le/m/f/a/j;->h:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Le/m/f/a/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_3
    :goto_1
    move-object v0, v9

    :goto_2
    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 22
    check-cast v4, Le/m/f/a/o;

    .line 23
    iget-object v5, v2, Le/a/e/a/y3;->b:Le/m/f/a/j;

    sget-object v6, Le/m/f/a/j$c;->a:Le/m/f/a/j$c;

    invoke-virtual {v5, v4, v6}, Le/m/f/a/j;->i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 24
    :cond_5
    iget-object v2, v2, Le/a/e/a/y3;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    :goto_4
    iget-object v0, v1, Le/a/e/a/w3;->f:Le/a/e/a/y3;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v10, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 26
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v6, Ls1/z/c/a0;

    invoke-direct {v6}, Ls1/z/c/a0;-><init>()V

    iput v10, v6, Ls1/z/c/a0;->a:I

    .line 28
    iget v5, v1, Le/a/e/a/w3;->g:I

    move v4, v10

    :goto_5
    if-ge v4, v5, :cond_9

    .line 29
    iget-object v2, v1, Le/a/e/a/w3;->f:Le/a/e/a/y3;

    .line 30
    :goto_6
    iget-object v3, v2, Le/a/e/a/y3;->c:Ljava/util/List;

    .line 31
    iget-object v11, v2, Le/a/e/a/y3;->a:Ljava/util/Random;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x4

    invoke-static {v3, v12}, Ls1/f0/w;->n0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v12

    invoke-static {v10, v3}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 34
    new-instance v3, Le/a/e/a/x3;

    invoke-direct {v3, v2}, Le/a/e/a/x3;-><init>(Le/a/e/a/y3;)V

    const/16 v19, 0x1e

    const-string v13, ""

    move-object/from16 v18, v3

    invoke-static/range {v12 .. v19}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 35
    :try_start_1
    iget-object v11, v2, Le/a/e/a/y3;->b:Le/m/f/a/j;

    invoke-virtual {v11, v3, v9}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object v12

    .line 36
    invoke-virtual {v11, v12}, Le/m/f/a/j;->z(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object v13

    .line 37
    invoke-virtual {v11, v12, v13}, Le/m/f/a/j;->H(Le/m/f/a/o;Ljava/lang/String;)Z

    move-result v11
    :try_end_1
    .catch Le/m/f/a/e; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v11, :cond_8

    .line 38
    new-instance v11, Lcom/truecaller/data/entity/messaging/Participant$b;

    invoke-direct {v11, v10}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 39
    iput-object v3, v11, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 40
    iput-object v3, v11, Lcom/truecaller/data/entity/messaging/Participant$b;->d:Ljava/lang/String;

    .line 41
    iget-object v2, v2, Le/a/e/a/y3;->a:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 42
    iput-object v2, v11, Lcom/truecaller/data/entity/messaging/Participant$b;->c:Ljava/lang/String;

    .line 43
    invoke-virtual {v11}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v2

    const-string v3, "Participant.Builder(Part\u2026g())\n            .build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {v7, v2}, Le/a/c/p/a;->e1(Ljava/util/List;Lcom/truecaller/data/entity/messaging/Participant;)I

    move-result v3

    .line 45
    invoke-static {v2}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v11

    invoke-static {v7, v11, v10}, Le/a/c/p/a;->d1(Ljava/util/List;Ljava/util/Set;Z)I

    move-result v15

    .line 46
    iget v14, v1, Le/a/e/a/w3;->h:I

    move v13, v10

    :goto_7
    if-ge v13, v14, :cond_6

    .line 47
    iget-object v11, v1, Le/a/e/a/w3;->f:Le/a/e/a/y3;

    .line 48
    iget-object v12, v11, Le/a/e/a/y3;->a:Ljava/util/Random;

    invoke-virtual {v12}, Ljava/util/Random;->nextBoolean()Z

    move-result v12

    invoke-virtual {v11, v2, v12}, Le/a/e/a/y3;->RA(Lcom/truecaller/data/entity/messaging/Participant;Z)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v16

    .line 49
    iget-object v11, v1, Le/a/e/a/w3;->f:Le/a/e/a/y3;

    .line 50
    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v3}, Ljava/lang/Integer;-><init>(I)V

    const/16 v17, 0x0

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v18, 0x0

    const/16 v19, 0x28

    move-object/from16 v20, v12

    move-object v12, v7

    move/from16 v21, v13

    move-object/from16 v13, v16

    move/from16 v22, v14

    move-object v14, v10

    move v10, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v20

    move-object/from16 v17, v18

    move/from16 v18, v19

    .line 51
    invoke-static/range {v11 .. v18}, Le/a/e/a/y3;->TA(Le/a/e/a/y3;Ljava/util/List;Lcom/truecaller/messaging/data/types/Message;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;I)I

    move-result v11

    .line 52
    iget-object v12, v1, Le/a/e/a/w3;->f:Le/a/e/a/y3;

    const-string v13, ""

    .line 53
    invoke-virtual {v12, v13}, Le/a/e/a/y3;->SA(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v12

    .line 54
    iget-object v13, v1, Le/a/e/a/w3;->f:Le/a/e/a/y3;

    invoke-static {v13, v7, v12, v11}, Le/a/e/a/y3;->QA(Le/a/e/a/y3;Ljava/util/List;Lcom/truecaller/messaging/data/types/Entity;I)V

    .line 55
    iget v11, v6, Ls1/z/c/a0;->a:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v6, Ls1/z/c/a0;->a:I

    add-int/lit8 v13, v21, 0x1

    move v15, v10

    move/from16 v14, v22

    const/4 v10, 0x0

    goto :goto_7

    .line 56
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_7

    .line 57
    iget-object v2, v1, Le/a/e/a/w3;->f:Le/a/e/a/y3;

    invoke-static {v2, v0, v7}, Le/a/e/a/y3;->OA(Le/a/e/a/y3;Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    .line 58
    iget-object v2, v1, Le/a/e/a/w3;->f:Le/a/e/a/y3;

    invoke-static {v2}, Le/a/e/a/y3;->PA(Le/a/e/a/y3;)Ls1/w/f;

    move-result-object v3

    const/4 v10, 0x0

    new-instance v11, Le/a/e/a/w3$a;

    invoke-direct {v11, v1, v6, v9}, Le/a/e/a/w3$a;-><init>(Le/a/e/a/w3;Ls1/z/c/a0;Ls1/w/d;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object v2, v8

    move v14, v4

    move-object v4, v10

    move v10, v5

    move-object v5, v11

    move-object v11, v6

    move v6, v12

    move-object v12, v7

    move-object v7, v13

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_8

    :cond_7
    move v14, v4

    move v10, v5

    move-object v11, v6

    move-object v12, v7

    :goto_8
    add-int/lit8 v4, v14, 0x1

    move v5, v10

    move-object v6, v11

    move-object v7, v12

    const/4 v10, 0x0

    goto/16 :goto_5

    :catch_1
    :cond_8
    move v14, v4

    move v10, v5

    move-object v11, v6

    move-object v12, v7

    move v5, v10

    move-object v6, v11

    move-object v7, v12

    move v4, v14

    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_9
    move-object v11, v6

    move-object v12, v7

    .line 59
    iget-object v2, v1, Le/a/e/a/w3;->f:Le/a/e/a/y3;

    invoke-static {v2, v0, v12}, Le/a/e/a/y3;->OA(Le/a/e/a/y3;Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    .line 60
    iget v0, v11, Ls1/z/c/a0;->a:I

    .line 61
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    .line 62
    :cond_a
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method
