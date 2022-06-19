.class public final Le/a/f/a/w/k;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/f/a/w/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/f/a/w/h;",
        ">;",
        "Le/a/f/a/w/g;"
    }
.end annotation


# instance fields
.field public final d:Le/a/f/y/c;

.field public final e:Le/a/f/a/w/d;

.field public final f:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/f/y/c;Le/a/f/a/w/d;Ls1/w/f;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneAccountInfoProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/f/a/w/k;->d:Le/a/f/y/c;

    iput-object p2, p0, Le/a/f/a/w/k;->e:Le/a/f/a/w/d;

    iput-object p3, p0, Le/a/f/a/w/k;->f:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public final Ij()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/a/w/k;->d:Le/a/f/y/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/f/y/c;->A(Z)V

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Le/a/f/a/w/h;

    const-string v2, "presenterView"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v1, v0, Le/a/f/a/w/k;->d:Le/a/f/y/c;

    invoke-interface {v1}, Le/a/f/y/c;->h()Lq3/a/w2/h;

    move-result-object v1

    .line 5
    new-instance v2, Le/a/f/a/w/i;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Le/a/f/a/w/i;-><init>(Le/a/f/a/w/k;Ls1/w/d;)V

    invoke-static {v0, v1, v2}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    .line 6
    iget-object v1, v0, Le/a/f/a/w/k;->d:Le/a/f/y/c;

    invoke-interface {v1}, Le/a/f/y/c;->t()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual/range {p0 .. p0}, Le/a/f/a/w/k;->Ij()V

    goto/16 :goto_4

    .line 8
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual/range {p0 .. p0}, Le/a/f/a/w/k;->Ij()V

    goto/16 :goto_4

    .line 10
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_6

    .line 12
    check-cast v6, Ljava/lang/String;

    .line 13
    iget-object v8, v0, Le/a/f/a/w/k;->e:Le/a/f/a/w/d;

    .line 14
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "id"

    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v9, v8, Le/a/f/a/w/d;->a:Le/a/e4/p;

    invoke-interface {v9, v5}, Le/a/e4/p;->e(I)Lcom/truecaller/multisim/SimInfo;

    move-result-object v9

    if-eqz v9, :cond_4

    const-string v10, "multiSimManager.getSimIn\u2026ndex(slot) ?: return null"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v10, v8, Le/a/f/a/w/d;->b:Le/a/p5/c0;

    sget v11, Lcom/truecaller/incallui/R$array;->incallui_phone_account_sim_slot:I

    invoke-interface {v10, v11}, Le/a/p5/c0;->i(I)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v5

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    .line 17
    iget-object v12, v9, Lcom/truecaller/multisim/SimInfo;->d:Ljava/lang/String;

    aput-object v12, v11, v4

    .line 18
    iget-object v12, v9, Lcom/truecaller/multisim/SimInfo;->c:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x2

    .line 19
    iget-boolean v9, v9, Lcom/truecaller/multisim/SimInfo;->j:Z

    if-eqz v9, :cond_2

    iget-object v8, v8, Le/a/f/a/w/d;->b:Le/a/p5/c0;

    sget v9, Lcom/truecaller/incallui/R$string;->incallui_phone_accounts_roaming:I

    new-array v13, v4, [Ljava/lang/Object;

    invoke-interface {v8, v9, v13}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object v8, v3

    :goto_1
    aput-object v8, v11, v12

    .line 20
    invoke-static {v11}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3e

    const-string v14, ", "

    .line 21
    invoke-static/range {v13 .. v20}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v8

    if-nez v5, :cond_3

    .line 22
    sget v5, Lcom/truecaller/incallui/R$drawable;->ic_sim_incallui_one:I

    goto :goto_2

    :cond_3
    sget v5, Lcom/truecaller/incallui/R$drawable;->ic_sim_incallui_two:I

    .line 23
    :goto_2
    new-instance v9, Le/a/f/a/w/c;

    const-string v11, "title"

    .line 24
    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {v9, v6, v10, v8, v5}, Le/a/f/a/w/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :cond_4
    move-object v9, v3

    :goto_3
    if-eqz v9, :cond_5

    .line 26
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move v5, v7

    goto :goto_0

    .line 27
    :cond_6
    invoke-static {}, Ls1/u/i;->N0()V

    throw v3

    .line 28
    :cond_7
    invoke-static {v2}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 29
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f/a/w/h;

    if-eqz v2, :cond_8

    invoke-interface {v2, v1}, Le/a/f/a/w/h;->o8(Ljava/util/List;)V

    :cond_8
    :goto_4
    return-void
.end method
