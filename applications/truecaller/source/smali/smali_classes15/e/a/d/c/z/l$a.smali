.class public final Le/a/d/c/z/l$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/z/l;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/util/List<",
        "+",
        "Le/a/d/c0/p0;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.ui.calldetails.VoipGroupCallDetailsPresenter$fetchHistoryDetails$1$1"
    f = "VoipGroupCallDetailsPresenter.kt"
    l = {
        0x3a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Le/a/d/c/z/l;


# direct methods
.method public constructor <init>(Le/a/d/c/z/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/z/l$a;->i:Le/a/d/c/z/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance v0, Le/a/d/c/z/l$a;

    iget-object v1, p0, Le/a/d/c/z/l$a;->i:Le/a/d/c/z/l;

    invoke-direct {v0, v1, p2}, Le/a/d/c/z/l$a;-><init>(Le/a/d/c/z/l;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/c/z/l$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/c/z/l$a;

    iget-object v1, p0, Le/a/d/c/z/l$a;->i:Le/a/d/c/z/l;

    invoke-direct {v0, v1, p2}, Le/a/d/c/z/l$a;-><init>(Le/a/d/c/z/l;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/c/z/l$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/c/z/l$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c/z/l$a;->h:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Le/a/d/c/z/l$a;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v4, v0, Le/a/d/c/z/l$a;->f:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, v0, Le/a/d/c/z/l$a;->e:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    move-object v7, v5

    move-object v5, v0

    goto/16 :goto_5

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v2, v0, Le/a/d/c/z/l$a;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v5, v0, Le/a/d/c/z/l$a;->i:Le/a/d/c/z/l;

    iget-object v6, v5, Le/a/d/c/z/l;->g:Le/a/d/c/z/m;

    iget-object v5, v5, Le/a/d/c/z/l;->h:Lcom/truecaller/voip/VoipCallHistory;

    .line 6
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v2, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 8
    check-cast v10, Le/a/d/c0/p0;

    .line 9
    iget-object v10, v10, Le/a/d/c0/p0;->b:Le/a/d/b0/b;

    .line 10
    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x4

    .line 12
    invoke-static {v7, v9}, Ls1/u/i;->L0(Ljava/util/List;I)Ljava/util/List;

    move-result-object v7

    .line 13
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v7, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 15
    check-cast v8, Le/a/d/b0/b;

    .line 16
    instance-of v10, v8, Le/a/d/b0/b$b;

    if-eqz v10, :cond_5

    check-cast v8, Le/a/d/b0/b$b;

    iget-object v10, v6, Le/a/d/c/z/m;->h:Le/a/d/c0/j1;

    .line 17
    iget-object v11, v8, Le/a/d/b0/b$b;->b:Ljava/lang/Long;

    .line 18
    iget-object v12, v8, Le/a/d/b0/b$b;->e:Ljava/lang/String;

    .line 19
    invoke-interface {v10, v11, v12}, Le/a/d/c0/j1;->t(Ljava/lang/Long;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const-string v11, "$this$getGroupAvatarConfig"

    .line 20
    invoke-static {v8, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v11, Le/a/b0/a/c/m/b;

    const/4 v12, 0x0

    if-eqz v10, :cond_3

    .line 22
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_3
    move-object v10, v12

    .line 23
    :goto_2
    iget-object v13, v8, Le/a/d/b0/b$b;->c:Ljava/lang/String;

    .line 24
    iget-object v14, v8, Le/a/d/b0/b$b;->d:Ljava/lang/String;

    if-eqz v14, :cond_4

    .line 25
    invoke-static {v14}, Le/a/p5/s0/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 26
    :cond_4
    iget-object v8, v8, Le/a/d/b0/b$b;->h:Lcom/truecaller/voip/VoipUserBadge;

    .line 27
    iget-boolean v8, v8, Lcom/truecaller/voip/VoipUserBadge;->a:Z

    .line 28
    invoke-direct {v11, v10, v13, v12, v8}, Le/a/b0/a/c/m/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 29
    :cond_5
    new-instance v11, Le/a/b0/a/c/m/b;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xf

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Le/a/b0/a/c/m/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 30
    :goto_3
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 31
    :cond_6
    new-instance v6, Le/a/d/c/z/p$a;

    .line 32
    iget-wide v7, v5, Lcom/truecaller/voip/VoipCallHistory;->c:J

    .line 33
    iget-object v5, v5, Lcom/truecaller/voip/VoipCallHistory;->b:Lcom/truecaller/voip/VoipGroupCallHistoryStatus;

    .line 34
    invoke-direct {v6, v9, v7, v8, v5}, Le/a/d/c/z/p$a;-><init>(Ljava/util/List;JLcom/truecaller/voip/VoipGroupCallHistoryStatus;)V

    .line 35
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v5, Le/a/d/c/z/l$a$a;

    invoke-direct {v5}, Le/a/d/c/z/l$a$a;-><init>()V

    invoke-static {v2, v5}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 37
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v5, v0

    move-object/from16 v20, v4

    move-object v4, v2

    move-object/from16 v2, v20

    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/d/c0/p0;

    .line 38
    iget-object v7, v6, Le/a/d/c0/p0;->b:Le/a/d/b0/b;

    .line 39
    instance-of v8, v7, Le/a/d/b0/b$b;

    if-eqz v8, :cond_9

    iget-object v6, v5, Le/a/d/c/z/l$a;->i:Le/a/d/c/z/l;

    iget-object v6, v6, Le/a/d/c/z/l;->g:Le/a/d/c/z/m;

    check-cast v7, Le/a/d/b0/b$b;

    iput-object v2, v5, Le/a/d/c/z/l$a;->e:Ljava/lang/Object;

    iput-object v4, v5, Le/a/d/c/z/l$a;->f:Ljava/lang/Object;

    iput-object v2, v5, Le/a/d/c/z/l$a;->g:Ljava/lang/Object;

    iput v3, v5, Le/a/d/c/z/l$a;->h:I

    invoke-virtual {v6, v7, v5}, Le/a/d/c/z/m;->Ij(Le/a/d/b0/b$b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_8

    return-object v1

    :cond_8
    move-object v7, v2

    :goto_5
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v7

    goto :goto_4

    .line 40
    :cond_9
    instance-of v8, v7, Le/a/d/b0/b$a;

    if-eqz v8, :cond_a

    iget-object v6, v5, Le/a/d/c/z/l$a;->i:Le/a/d/c/z/l;

    iget-object v6, v6, Le/a/d/c/z/l;->g:Le/a/d/c/z/m;

    move-object v9, v7

    check-cast v9, Le/a/d/b0/b$a;

    .line 41
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v6, Le/a/d/c/z/p$b;

    .line 43
    sget-object v12, Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;->NON_IDENTIFIED:Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x2

    move-object v8, v6

    .line 44
    invoke-direct/range {v8 .. v13}, Le/a/d/c/z/p$b;-><init>(Le/a/d/b0/b;Landroid/net/Uri;Le/a/d/c0/y1/d;Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;I)V

    .line 45
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 46
    :cond_a
    instance-of v7, v7, Le/a/d/b0/b$c;

    if-eqz v7, :cond_7

    new-instance v7, Le/a/d/c/z/p$c;

    .line 47
    iget v6, v6, Le/a/d/c0/p0;->a:I

    .line 48
    invoke-direct {v7, v6}, Le/a/d/c/z/p$c;-><init>(I)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 49
    :cond_b
    iget-object v1, v5, Le/a/d/c/z/l$a;->i:Le/a/d/c/z/l;

    iget-object v1, v1, Le/a/d/c/z/l;->g:Le/a/d/c/z/m;

    .line 50
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/c/z/o;

    if-eqz v1, :cond_c

    .line 51
    invoke-interface {v1, v2}, Le/a/d/c/z/o;->j(Ljava/util/List;)V

    .line 52
    :cond_c
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
