.class public final Le/a/d/c0/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/b0;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "[",
        "Le/a/d/b0/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/d/c0/b0;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/d/c0/b0;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/b0$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/d/c0/b0$a;->b:Le/a/d/c0/b0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    instance-of v3, v1, Le/a/d/c0/b0$a$a;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Le/a/d/c0/b0$a$a;

    iget v4, v3, Le/a/d/c0/b0$a$a;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/d/c0/b0$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/d/c0/b0$a$a;

    invoke-direct {v3, v0, v1}, Le/a/d/c0/b0$a$a;-><init>(Le/a/d/c0/b0$a;Ls1/w/d;)V

    :goto_0
    iget-object v1, v3, Le/a/d/c0/b0$a$a;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/d/c0/b0$a$a;->e:I

    const-string v6, ""

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v7, :cond_1

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v5, v3, Le/a/d/c0/b0$a$a;->j:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v7, v3, Le/a/d/c0/b0$a$a;->i:Ljava/lang/Object;

    check-cast v7, [Le/a/d/b0/a;

    iget-object v8, v3, Le/a/d/c0/b0$a$a;->h:Ljava/lang/Object;

    check-cast v8, Lq3/a/x2/g;

    iget-object v9, v3, Le/a/d/c0/b0$a$a;->f:Ljava/lang/Object;

    check-cast v9, Le/a/d/c0/b0$a;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/d/c0/b0$a;->a:Lq3/a/x2/g;

    .line 5
    move-object/from16 v7, p1

    check-cast v7, [Le/a/d/b0/a;

    .line 6
    array-length v5, v7

    if-ne v5, v8, :cond_4

    .line 7
    invoke-static {v7}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/b0/a;

    .line 8
    new-instance v5, Le/a/d/c0/b$b;

    .line 9
    invoke-virtual {v2}, Le/a/d/b0/a;->a()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-static {v2}, Le/a/p5/s0/g;->J(Le/a/d/b0/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v7

    .line 11
    iget-object v2, v2, Le/a/d/b0/a;->d:Ljava/lang/String;

    .line 12
    invoke-direct {v5, v6, v7, v2}, Le/a/d/c0/b$b;-><init>(Ljava/lang/String;Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 13
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    array-length v8, v7

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_7

    aget-object v10, v7, v9

    const-string v11, "$this$getGroupAvatarViewConfig"

    .line 15
    invoke-static {v10, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v11, Le/a/b0/a/c/m/b;

    .line 17
    iget-object v12, v10, Le/a/d/b0/a;->e:Ljava/lang/String;

    .line 18
    iget-object v13, v10, Le/a/d/b0/a;->d:Ljava/lang/String;

    .line 19
    iget-object v14, v10, Le/a/d/b0/a;->c:Ljava/lang/String;

    .line 20
    invoke-static {v14}, Le/a/p5/s0/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 21
    iget-object v15, v10, Le/a/d/b0/a;->f:Lcom/truecaller/voip/VoipUserBadge;

    .line 22
    iget-boolean v15, v15, Lcom/truecaller/voip/VoipUserBadge;->a:Z

    if-nez v15, :cond_6

    .line 23
    iget-boolean v10, v10, Le/a/d/b0/a;->g:Z

    if-eqz v10, :cond_5

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v10, 0x1

    .line 24
    :goto_3
    invoke-direct {v11, v12, v13, v14, v10}, Le/a/b0/a/c/m/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 25
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 26
    :cond_7
    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    .line 27
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v9}, Le/a/d/b0/a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " & "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    aget-object v7, v7, v9

    invoke-virtual {v7}, Le/a/d/b0/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 28
    new-instance v8, Le/a/d/c0/b$a;

    .line 29
    invoke-direct {v8, v7, v6, v5, v2}, Le/a/d/c0/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    move-object v5, v8

    goto/16 :goto_b

    .line 30
    :cond_8
    iget-object v8, v0, Le/a/d/c0/b0$a;->b:Le/a/d/c0/b0;

    iget-object v8, v8, Le/a/d/c0/b0;->b:Lq3/a/x2/f;

    iput-object v0, v3, Le/a/d/c0/b0$a$a;->f:Ljava/lang/Object;

    iput-object v1, v3, Le/a/d/c0/b0$a$a;->h:Ljava/lang/Object;

    iput-object v7, v3, Le/a/d/c0/b0$a$a;->i:Ljava/lang/Object;

    iput-object v5, v3, Le/a/d/c0/b0$a$a;->j:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v3, Le/a/d/c0/b0$a$a;->e:I

    invoke-static {v8, v3}, Ls1/a/a/a/v0/f/d;->M0(Lq3/a/x2/f;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v4, :cond_9

    return-object v4

    :cond_9
    move-object v9, v0

    move-object/from16 v21, v8

    move-object v8, v1

    move-object/from16 v1, v21

    :goto_4
    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 31
    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v7

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    array-length v11, v7

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v11, :cond_a

    aget-object v13, v7, v12

    .line 33
    invoke-virtual {v13}, Le/a/d/b0/a;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 34
    :cond_a
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 36
    move-object v13, v12

    check-cast v13, Ljava/lang/String;

    .line 37
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v11

    if-nez v11, :cond_b

    const/4 v14, 0x1

    goto :goto_7

    :cond_b
    const/4 v14, 0x0

    :goto_7
    if-nez v14, :cond_d

    .line 38
    iget-object v14, v9, Le/a/d/c0/b0$a;->b:Le/a/d/c0/b0;

    iget v14, v14, Le/a/d/c0/b0;->c:I

    if-gt v13, v14, :cond_c

    goto :goto_8

    :cond_c
    const/4 v13, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v11, 0x1

    move/from16 v21, v13

    move v13, v11

    move/from16 v11, v21

    .line 39
    :goto_9
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 40
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_e

    goto :goto_a

    .line 41
    :cond_e
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    :goto_a
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3e

    const-string v14, ", "

    move-object v13, v7

    .line 42
    invoke-static/range {v13 .. v20}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v10

    .line 43
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v1, v7

    if-lez v1, :cond_10

    const-string v6, "& "

    .line 44
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v9, Le/a/d/c0/b0$a;->b:Le/a/d/c0/b0;

    iget-object v7, v7, Le/a/d/c0/b0;->d:Le/a/p5/c0;

    sget v9, Lcom/truecaller/voip/R$plurals;->voip_notification_title_other:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    .line 45
    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 46
    invoke-interface {v7, v9, v1, v11}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 47
    :cond_10
    new-instance v1, Le/a/d/c0/b$a;

    .line 48
    invoke-direct {v1, v10, v6, v5, v2}, Le/a/d/c0/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    move-object v5, v1

    move-object v1, v8

    :goto_b
    const/4 v2, 0x0

    .line 49
    iput-object v2, v3, Le/a/d/c0/b0$a$a;->f:Ljava/lang/Object;

    iput-object v2, v3, Le/a/d/c0/b0$a$a;->h:Ljava/lang/Object;

    iput-object v2, v3, Le/a/d/c0/b0$a$a;->i:Ljava/lang/Object;

    iput-object v2, v3, Le/a/d/c0/b0$a$a;->j:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v3, Le/a/d/c0/b0$a$a;->e:I

    invoke-interface {v1, v5, v3}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_11

    return-object v4

    :cond_11
    :goto_c
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
