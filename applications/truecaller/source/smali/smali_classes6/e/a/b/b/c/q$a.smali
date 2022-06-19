.class public final Le/a/b/b/c/q$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/b/c/q;->Ij()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.ui.profile.CreateBusinessProfilePresenter$onSaveProfile$2"
    f = "CreateBusinessProfilePresenter.kt"
    l = {
        0x165,
        0x169,
        0x16c,
        0x172,
        0x187
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public i:I

.field public final synthetic j:Le/a/b/b/c/q;

.field public final synthetic k:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/b/b/c/q;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/b/c/q$a;->j:Le/a/b/b/c/q;

    iput-object p2, p0, Le/a/b/b/c/q$a;->k:Ls1/z/c/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b/b/c/q$a;

    iget-object v0, p0, Le/a/b/b/c/q$a;->j:Le/a/b/b/c/q;

    iget-object v1, p0, Le/a/b/b/c/q$a;->k:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/b/b/c/q$a;-><init>(Le/a/b/b/c/q;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b/b/c/q$a;

    iget-object v0, p0, Le/a/b/b/c/q$a;->j:Le/a/b/b/c/q;

    iget-object v1, p0, Le/a/b/b/c/q$a;->k:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/b/b/c/q$a;-><init>(Le/a/b/b/c/q;Ls1/z/c/c0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/b/b/c/q$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v1, p0

    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/b/b/c/q$a;->i:I

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x3

    if-eqz v3, :cond_5

    if-eq v3, v8, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v10, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v6, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Le/a/b/b/c/r; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    goto/16 :goto_f

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget v3, v1, Le/a/b/b/c/q$a;->h:I

    iget-object v10, v1, Le/a/b/b/c/q$a;->g:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v1, Le/a/b/b/c/q$a;->f:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v1, Le/a/b/b/c/q$a;->e:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    :try_start_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v13, p1

    move-object v14, v11

    move-object v11, v10

    move-object v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move-object v4, v1

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_2
    iget-object v3, v1, Le/a/b/b/c/q$a;->g:Ljava/lang/Object;

    check-cast v3, Ls1/z/c/c0;

    iget-object v10, v1, Le/a/b/b/c/q$a;->f:Ljava/lang/Object;

    check-cast v10, Ls1/z/c/c0;

    iget-object v11, v1, Le/a/b/b/c/q$a;->e:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    :try_start_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catch Le/a/b/b/c/r; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v12, v11

    move-object v11, v10

    move-object/from16 v10, p1

    goto/16 :goto_5

    :cond_3
    iget-object v3, v1, Le/a/b/b/c/q$a;->g:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget-object v11, v1, Le/a/b/b/c/q$a;->f:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v1, Le/a/b/b/c/q$a;->e:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    :try_start_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_3
    .catch Le/a/b/b/c/r; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    :cond_4
    iget-object v3, v1, Le/a/b/b/c/q$a;->f:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v11, v1, Le/a/b/b/c/q$a;->e:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    :try_start_4
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_4
    .catch Le/a/b/b/c/r; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v12, v11

    move-object v11, v3

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_10

    :catch_1
    move-exception v0

    goto/16 :goto_12

    :cond_5
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v3, v1, Le/a/b/b/c/q$a;->k:Ls1/z/c/c0;

    iget-object v3, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/profile/data/dto/Profile;

    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/Profile;->getBusinessData()Lcom/truecaller/profile/data/dto/BusinessData;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/truecaller/profile/data/dto/BusinessData;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_6
    move-object v3, v9

    :goto_0
    if-eqz v3, :cond_7

    goto :goto_1

    :cond_7
    const-string v3, ""

    .line 5
    :goto_1
    iget-object v11, v1, Le/a/b/b/c/q$a;->k:Ls1/z/c/c0;

    iget-object v11, v11, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v11, Lcom/truecaller/profile/data/dto/Profile;

    invoke-virtual {v11}, Lcom/truecaller/profile/data/dto/Profile;->getBusinessData()Lcom/truecaller/profile/data/dto/BusinessData;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Lcom/truecaller/profile/data/dto/Company;->getBranding()Lcom/truecaller/profile/data/dto/Branding;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Lcom/truecaller/profile/data/dto/Branding;->getImageUrls()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-static {v11}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v11

    goto :goto_2

    :cond_8
    move-object v11, v9

    .line 6
    :goto_2
    :try_start_5
    iget-object v12, v1, Le/a/b/b/c/q$a;->j:Le/a/b/b/c/q;

    .line 7
    iget-boolean v13, v12, Le/a/b/b/c/q;->h:Z

    if-eqz v13, :cond_9

    .line 8
    iget-object v12, v12, Le/a/b/b/c/q;->k:Le/a/b/l/h;

    .line 9
    iput-object v3, v1, Le/a/b/b/c/q$a;->e:Ljava/lang/Object;

    iput-object v11, v1, Le/a/b/b/c/q$a;->f:Ljava/lang/Object;

    iput v8, v1, Le/a/b/b/c/q$a;->i:I

    invoke-interface {v12, v1}, Le/a/b/l/h;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v0, :cond_9

    return-object v0

    :cond_9
    move-object v12, v3

    .line 10
    :goto_3
    iget-object v3, v1, Le/a/b/b/c/q$a;->j:Le/a/b/b/c/q;

    .line 11
    iget-object v3, v3, Le/a/b/b/c/q;->i:Ljava/util/List;

    .line 12
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 13
    iget-object v14, v1, Le/a/b/b/c/q$a;->j:Le/a/b/b/c/q;

    .line 14
    iget-object v14, v14, Le/a/b/b/c/q;->k:Le/a/b/l/h;

    .line 15
    iput-object v12, v1, Le/a/b/b/c/q$a;->e:Ljava/lang/Object;

    iput-object v11, v1, Le/a/b/b/c/q$a;->f:Ljava/lang/Object;

    iput-object v3, v1, Le/a/b/b/c/q$a;->g:Ljava/lang/Object;

    iput v7, v1, Le/a/b/b/c/q$a;->i:I

    invoke-interface {v14, v13, v1}, Le/a/b/l/h;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v0, :cond_a

    return-object v0

    .line 16
    :cond_b
    new-instance v3, Ls1/z/c/c0;

    invoke-direct {v3}, Ls1/z/c/c0;-><init>()V

    iget-object v13, v1, Le/a/b/b/c/q$a;->j:Le/a/b/b/c/q;

    .line 17
    iget-object v13, v13, Le/a/b/b/c/q;->k:Le/a/b/l/h;

    .line 18
    iput-object v11, v1, Le/a/b/b/c/q$a;->e:Ljava/lang/Object;

    iput-object v3, v1, Le/a/b/b/c/q$a;->f:Ljava/lang/Object;

    iput-object v3, v1, Le/a/b/b/c/q$a;->g:Ljava/lang/Object;

    iput v10, v1, Le/a/b/b/c/q$a;->i:I

    invoke-interface {v13, v12, v1}, Le/a/b/l/h;->e(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v0, :cond_c

    return-object v0

    :cond_c
    move-object v12, v11

    move-object v11, v3

    .line 19
    :goto_5
    check-cast v10, Ljava/lang/String;

    iput-object v10, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 20
    iget-object v3, v1, Le/a/b/b/c/q$a;->k:Ls1/z/c/c0;

    iget-object v10, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object v13, v10

    check-cast v13, Lcom/truecaller/profile/data/dto/Profile;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual {v13}, Lcom/truecaller/profile/data/dto/Profile;->getBusinessData()Lcom/truecaller/profile/data/dto/BusinessData;

    move-result-object v17

    if-eqz v17, :cond_d

    const/16 v18, 0x0

    iget-object v10, v11, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object/from16 v19, v10

    check-cast v19, Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x7d

    const/16 v26, 0x0

    invoke-static/range {v17 .. v26}, Lcom/truecaller/profile/data/dto/BusinessData;->copy$default(Lcom/truecaller/profile/data/dto/BusinessData;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/OnlineIds;Lcom/truecaller/profile/data/dto/Company;ILjava/lang/Object;)Lcom/truecaller/profile/data/dto/BusinessData;

    move-result-object v10

    move-object/from16 v17, v10

    goto :goto_6

    :cond_d
    move-object/from16 v17, v9

    :goto_6
    const/16 v18, 0x7

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lcom/truecaller/profile/data/dto/Profile;->copy$default(Lcom/truecaller/profile/data/dto/Profile;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/PersonalData;Lcom/truecaller/profile/data/dto/BusinessData;ILjava/lang/Object;)Lcom/truecaller/profile/data/dto/Profile;

    move-result-object v10

    iput-object v10, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;
    :try_end_5
    .catch Le/a/b/b/c/r; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v12, :cond_12

    .line 21
    :try_start_6
    invoke-static {v12}, Ls1/u/i;->E(Ljava/util/Collection;)Ls1/d0/i;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ls1/d0/g;->iterator()Ljava/util/Iterator;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v11, v3

    move-object v10, v12

    move-object v3, v1

    :goto_7
    :try_start_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 23
    iget-object v13, v3, Le/a/b/b/c/q$a;->j:Le/a/b/b/c/q;

    .line 24
    iget-object v13, v13, Le/a/b/b/c/q;->k:Le/a/b/l/h;

    .line 25
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v10, v3, Le/a/b/b/c/q$a;->e:Ljava/lang/Object;

    iput-object v11, v3, Le/a/b/b/c/q$a;->f:Ljava/lang/Object;

    iput-object v10, v3, Le/a/b/b/c/q$a;->g:Ljava/lang/Object;

    iput v12, v3, Le/a/b/b/c/q$a;->h:I

    iput v5, v3, Le/a/b/b/c/q$a;->i:I

    invoke-interface {v13, v14, v3}, Le/a/b/l/h;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-ne v13, v0, :cond_e

    return-object v0

    :cond_e
    move-object v14, v11

    move-object v11, v10

    move-object v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move-object v4, v3

    move v3, v12

    move-object v12, v11

    :goto_8
    :try_start_8
    invoke-interface {v11, v3, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v12

    move-object v11, v14

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v3, v4

    move v4, v5

    move v7, v8

    move v8, v9

    move-object v9, v10

    goto :goto_a

    :cond_f
    move-object v12, v10

    goto :goto_d

    :catchall_2
    move-exception v0

    goto :goto_b

    :goto_9
    move-object v3, v1

    :goto_a
    move-object v10, v12

    .line 26
    :goto_b
    :try_start_9
    iget-object v5, v3, Le/a/b/b/c/q$a;->k:Ls1/z/c/c0;

    iget-object v6, v5, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object v11, v6

    check-cast v11, Lcom/truecaller/profile/data/dto/Profile;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 27
    invoke-virtual {v11}, Lcom/truecaller/profile/data/dto/Profile;->getBusinessData()Lcom/truecaller/profile/data/dto/BusinessData;

    move-result-object v15

    if-eqz v15, :cond_11

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 28
    invoke-virtual {v15}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 29
    invoke-virtual/range {v22 .. v22}, Lcom/truecaller/profile/data/dto/Company;->getBranding()Lcom/truecaller/profile/data/dto/Branding;

    move-result-object v6

    if-eqz v10, :cond_10

    .line 30
    invoke-static {v10}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 31
    :cond_10
    invoke-static {v6, v9, v2, v8, v9}, Lcom/truecaller/profile/data/dto/Branding;->copy$default(Lcom/truecaller/profile/data/dto/Branding;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/truecaller/profile/data/dto/Branding;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x17

    const/16 v29, 0x0

    .line 32
    invoke-static/range {v22 .. v29}, Lcom/truecaller/profile/data/dto/Company;->copy$default(Lcom/truecaller/profile/data/dto/Company;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/Address;Lcom/truecaller/profile/data/dto/Branding;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/profile/data/dto/Company;

    move-result-object v22

    const/16 v23, 0x3f

    const/16 v24, 0x0

    .line 33
    invoke-static/range {v15 .. v24}, Lcom/truecaller/profile/data/dto/BusinessData;->copy$default(Lcom/truecaller/profile/data/dto/BusinessData;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/OnlineIds;Lcom/truecaller/profile/data/dto/Company;ILjava/lang/Object;)Lcom/truecaller/profile/data/dto/BusinessData;

    move-result-object v2

    move-object v15, v2

    goto :goto_c

    :cond_11
    move-object v15, v9

    :goto_c
    const/16 v16, 0x7

    const/16 v17, 0x0

    .line 34
    invoke-static/range {v11 .. v17}, Lcom/truecaller/profile/data/dto/Profile;->copy$default(Lcom/truecaller/profile/data/dto/Profile;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/PersonalData;Lcom/truecaller/profile/data/dto/BusinessData;ILjava/lang/Object;)Lcom/truecaller/profile/data/dto/Profile;

    move-result-object v2

    .line 35
    iput-object v2, v5, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 36
    iget-object v2, v3, Le/a/b/b/c/q$a;->j:Le/a/b/b/c/q;

    iget-object v5, v3, Le/a/b/b/c/q$a;->k:Ls1/z/c/c0;

    iget-object v5, v5, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v5, Lcom/truecaller/profile/data/dto/Profile;

    .line 37
    iput-object v5, v2, Le/a/b/b/c/q;->d:Lcom/truecaller/profile/data/dto/Profile;

    .line 38
    throw v0

    :cond_12
    move-object v3, v1

    .line 39
    :goto_d
    iget-object v5, v3, Le/a/b/b/c/q$a;->k:Ls1/z/c/c0;

    iget-object v10, v5, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object v13, v10

    check-cast v13, Lcom/truecaller/profile/data/dto/Profile;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 40
    invoke-virtual {v13}, Lcom/truecaller/profile/data/dto/Profile;->getBusinessData()Lcom/truecaller/profile/data/dto/BusinessData;

    move-result-object v17

    if-eqz v17, :cond_14

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 41
    invoke-virtual/range {v17 .. v17}, Lcom/truecaller/profile/data/dto/BusinessData;->getCompany()Lcom/truecaller/profile/data/dto/Company;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 42
    invoke-virtual/range {v24 .. v24}, Lcom/truecaller/profile/data/dto/Company;->getBranding()Lcom/truecaller/profile/data/dto/Branding;

    move-result-object v10

    if-eqz v12, :cond_13

    .line 43
    invoke-static {v12}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 44
    :cond_13
    invoke-static {v10, v9, v2, v8, v9}, Lcom/truecaller/profile/data/dto/Branding;->copy$default(Lcom/truecaller/profile/data/dto/Branding;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/truecaller/profile/data/dto/Branding;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x17

    const/16 v31, 0x0

    .line 45
    invoke-static/range {v24 .. v31}, Lcom/truecaller/profile/data/dto/Company;->copy$default(Lcom/truecaller/profile/data/dto/Company;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/Address;Lcom/truecaller/profile/data/dto/Branding;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/profile/data/dto/Company;

    move-result-object v24

    const/16 v25, 0x3f

    const/16 v26, 0x0

    .line 46
    invoke-static/range {v17 .. v26}, Lcom/truecaller/profile/data/dto/BusinessData;->copy$default(Lcom/truecaller/profile/data/dto/BusinessData;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/OnlineIds;Lcom/truecaller/profile/data/dto/Company;ILjava/lang/Object;)Lcom/truecaller/profile/data/dto/BusinessData;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_e

    :cond_14
    move-object/from16 v17, v9

    :goto_e
    const/16 v18, 0x7

    const/16 v19, 0x0

    .line 47
    invoke-static/range {v13 .. v19}, Lcom/truecaller/profile/data/dto/Profile;->copy$default(Lcom/truecaller/profile/data/dto/Profile;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/PersonalData;Lcom/truecaller/profile/data/dto/BusinessData;ILjava/lang/Object;)Lcom/truecaller/profile/data/dto/Profile;

    move-result-object v2

    .line 48
    iput-object v2, v5, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 49
    iget-object v2, v3, Le/a/b/b/c/q$a;->j:Le/a/b/b/c/q;

    iget-object v5, v3, Le/a/b/b/c/q$a;->k:Ls1/z/c/c0;

    iget-object v5, v5, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object v10, v5

    check-cast v10, Lcom/truecaller/profile/data/dto/Profile;

    .line 50
    iput-object v10, v2, Le/a/b/b/c/q;->d:Lcom/truecaller/profile/data/dto/Profile;

    .line 51
    iget-object v2, v2, Le/a/b/b/c/q;->k:Le/a/b/l/h;

    .line 52
    check-cast v5, Lcom/truecaller/profile/data/dto/Profile;

    iput-object v9, v3, Le/a/b/b/c/q$a;->e:Ljava/lang/Object;

    iput-object v9, v3, Le/a/b/b/c/q$a;->f:Ljava/lang/Object;

    iput-object v9, v3, Le/a/b/b/c/q$a;->g:Ljava/lang/Object;

    iput v6, v3, Le/a/b/b/c/q$a;->i:I

    invoke-interface {v2, v5, v3}, Le/a/b/l/h;->b(Lcom/truecaller/profile/data/dto/Profile;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_15

    return-object v0

    .line 53
    :cond_15
    :goto_f
    iget-object v0, v3, Le/a/b/b/c/q$a;->j:Le/a/b/b/c/q;

    .line 54
    iget-object v0, v0, Le/a/b/b/c/q;->r:Le/a/d3/h;

    .line 55
    invoke-interface {v0}, Le/a/d3/h;->b()V

    .line 56
    iget-object v0, v3, Le/a/b/b/c/q$a;->k:Ls1/z/c/c0;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/profile/data/dto/Profile;

    invoke-virtual {v0}, Lcom/truecaller/profile/data/dto/Profile;->getBusinessData()Lcom/truecaller/profile/data/dto/BusinessData;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v2, v3, Le/a/b/b/c/q$a;->j:Le/a/b/b/c/q;

    .line 57
    iget-object v5, v2, Le/a/b/b/c/q;->m:Le/a/b/b/c/d;

    .line 58
    iget v2, v2, Le/a/b/b/c/q;->j:I

    .line 59
    invoke-interface {v5, v2, v0}, Le/a/b/b/c/d;->a(ILcom/truecaller/profile/data/dto/BusinessData;)V

    .line 60
    :cond_16
    iget-object v0, v3, Le/a/b/b/c/q$a;->j:Le/a/b/b/c/q;

    .line 61
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/b/c/p;

    if-eqz v0, :cond_2a

    .line 62
    invoke-interface {v0}, Le/a/b/b/c/p;->i2()V
    :try_end_9
    .catch Le/a/b/b/c/r; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_18

    :catch_2
    move-exception v0

    goto :goto_11

    :catch_3
    move-exception v0

    goto :goto_13

    :goto_10
    move-object v3, v1

    .line 63
    :goto_11
    iget-object v2, v3, Le/a/b/b/c/q$a;->j:Le/a/b/b/c/q;

    .line 64
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/b/b/c/p;

    if-eqz v2, :cond_17

    .line 65
    sget v5, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorCreatingProfile:I

    invoke-static {v2, v5, v4, v7, v9}, Le/a/n/g0;->E0(Le/a/b/b/c/p;IZILjava/lang/Object;)V

    .line 66
    :cond_17
    iget-object v2, v3, Le/a/b/b/c/q$a;->j:Le/a/b/b/c/q;

    .line 67
    iget-object v3, v2, Le/a/b/b/c/q;->m:Le/a/b/b/c/d;

    .line 68
    iget v2, v2, Le/a/b/b/c/q;->j:I

    const-string v4, "profile:Exception:"

    .line 69
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Le/a/b/b/c/d;->b(ILjava/lang/String;)V

    goto/16 :goto_18

    :goto_12
    move-object v3, v1

    .line 70
    :goto_13
    instance-of v2, v0, Le/a/b/b/c/r$a;

    if-eqz v2, :cond_19

    iget-object v2, v3, Le/a/b/b/c/q$a;->j:Le/a/b/b/c/q;

    .line 71
    iget v0, v0, Le/a/b/b/c/r;->a:I

    .line 72
    iget-object v3, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/b/b/c/p;

    if-eqz v3, :cond_18

    sget v5, Lcom/truecaller/bizmon/R$string;->BusinessProfile_RemoveLogoErrorMessage:I

    invoke-static {v3, v5, v4, v7, v9}, Le/a/n/g0;->E0(Le/a/b/b/c/p;IZILjava/lang/Object;)V

    .line 73
    :cond_18
    iget-object v3, v2, Le/a/b/b/c/q;->m:Le/a/b/b/c/d;

    iget v2, v2, Le/a/b/b/c/q;->j:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteLogo:ServerError:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Le/a/b/b/c/d;->b(ILjava/lang/String;)V

    goto/16 :goto_18

    .line 74
    :cond_19
    instance-of v2, v0, Le/a/b/b/c/r$b;

    if-eqz v2, :cond_1b

    iget-object v2, v3, Le/a/b/b/c/q$a;->j:Le/a/b/b/c/q;

    .line 75
    iget v0, v0, Le/a/b/b/c/r;->a:I

    .line 76
    iget-object v3, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/b/b/c/p;

    if-eqz v3, :cond_1a

    sget v5, Lcom/truecaller/bizmon/R$string;->BusinessProfile_RemovePictureErrorMessage:I

    invoke-static {v3, v5, v4, v7, v9}, Le/a/n/g0;->E0(Le/a/b/b/c/p;IZILjava/lang/Object;)V

    .line 77
    :cond_1a
    iget-object v3, v2, Le/a/b/b/c/q;->m:Le/a/b/b/c/d;

    iget v2, v2, Le/a/b/b/c/q;->j:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deletePicture:ServerError:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Le/a/b/b/c/d;->b(ILjava/lang/String;)V

    goto/16 :goto_18

    .line 78
    :cond_1b
    instance-of v2, v0, Le/a/b/b/c/r$d;

    const/16 v5, 0x19d

    if-eqz v2, :cond_1e

    iget-object v2, v3, Le/a/b/b/c/q$a;->j:Le/a/b/b/c/q;

    .line 79
    iget v0, v0, Le/a/b/b/c/r;->a:I

    if-eq v0, v5, :cond_1c

    .line 80
    iget-object v3, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/b/b/c/p;

    if-eqz v3, :cond_1d

    sget v5, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorUploadingAvatar:I

    invoke-static {v3, v5, v4, v7, v9}, Le/a/n/g0;->E0(Le/a/b/b/c/p;IZILjava/lang/Object;)V

    goto :goto_14

    .line 81
    :cond_1c
    iget-object v3, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/b/b/c/p;

    if-eqz v3, :cond_1d

    sget v4, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorLargeAvatar:I

    invoke-interface {v3, v4}, Le/a/b/b/c/p;->A7(I)V

    .line 82
    :cond_1d
    :goto_14
    iget-object v3, v2, Le/a/b/b/c/q;->m:Le/a/b/b/c/d;

    iget v2, v2, Le/a/b/b/c/q;->j:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "avatar:ServerError:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Le/a/b/b/c/d;->b(ILjava/lang/String;)V

    goto/16 :goto_18

    .line 83
    :cond_1e
    instance-of v2, v0, Le/a/b/b/c/r$e;

    if-eqz v2, :cond_21

    iget-object v2, v3, Le/a/b/b/c/q$a;->j:Le/a/b/b/c/q;

    .line 84
    iget v0, v0, Le/a/b/b/c/r;->a:I

    if-eq v0, v5, :cond_1f

    .line 85
    iget-object v3, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/b/b/c/p;

    if-eqz v3, :cond_20

    sget v5, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorUploadingPicture:I

    invoke-static {v3, v5, v4, v7, v9}, Le/a/n/g0;->E0(Le/a/b/b/c/p;IZILjava/lang/Object;)V

    goto :goto_15

    .line 86
    :cond_1f
    iget-object v3, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/b/b/c/p;

    if-eqz v3, :cond_20

    sget v4, Lcom/truecaller/bizmon/R$string;->BusinessProfile_ErrorLargePicture:I

    invoke-interface {v3, v4}, Le/a/b/b/c/p;->A7(I)V

    .line 87
    :cond_20
    :goto_15
    iget-object v3, v2, Le/a/b/b/c/q;->m:Le/a/b/b/c/d;

    iget v2, v2, Le/a/b/b/c/q;->j:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "image:ServerError:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Le/a/b/b/c/d;->b(ILjava/lang/String;)V

    goto/16 :goto_18

    .line 88
    :cond_21
    instance-of v2, v0, Le/a/b/b/c/r$c;

    if-eqz v2, :cond_2a

    .line 89
    move-object v2, v0

    check-cast v2, Le/a/b/b/c/r$c;

    .line 90
    iget-object v5, v2, Le/a/b/b/c/r$c;->b:Le/a/b0/n/h;

    .line 91
    sget-object v6, Le/a/b0/n/h$e;->c:Le/a/b0/n/h$e;

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 92
    sget-object v6, Le/a/b0/n/h$b;->c:Le/a/b0/n/h$b;

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    goto :goto_17

    .line 93
    :cond_22
    sget-object v6, Le/a/b0/n/h$a;->c:Le/a/b0/n/h$a;

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    goto :goto_16

    .line 94
    :cond_23
    sget-object v6, Le/a/b0/n/h$c;->c:Le/a/b0/n/h$c;

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    goto :goto_16

    .line 95
    :cond_24
    sget-object v6, Le/a/b0/n/h$d;->c:Le/a/b0/n/h$d;

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    goto :goto_16

    .line 96
    :cond_25
    instance-of v6, v5, Le/a/b0/n/h$f;

    if-eqz v6, :cond_26

    :goto_16
    move v4, v8

    goto :goto_17

    .line 97
    :cond_26
    instance-of v5, v5, Le/a/b0/n/h$g;

    if-eqz v5, :cond_28

    .line 98
    :goto_17
    iget-object v3, v3, Le/a/b/b/c/q$a;->j:Le/a/b/b/c/q;

    .line 99
    iget v0, v0, Le/a/b/b/c/r;->a:I

    .line 100
    iget-object v5, v3, Le/a/b/b/c/q;->s:Le/a/b0/n/b;

    .line 101
    iget-object v2, v2, Le/a/b/b/c/r$c;->b:Le/a/b0/n/h;

    .line 102
    invoke-virtual {v5, v2}, Le/a/b0/n/b;->a(Le/a/b0/n/h;)Ljava/lang/String;

    move-result-object v2

    .line 103
    iget-object v5, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Le/a/b/b/c/p;

    if-eqz v5, :cond_27

    invoke-interface {v5, v2, v4}, Le/a/b/b/c/p;->C9(Ljava/lang/String;Z)V

    .line 104
    :cond_27
    iget-object v2, v3, Le/a/b/b/c/q;->m:Le/a/b/b/c/d;

    iget v3, v3, Le/a/b/b/c/q;->j:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "profile:ServerError:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Le/a/b/b/c/d;->b(ILjava/lang/String;)V

    goto :goto_18

    .line 105
    :cond_28
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 106
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Not an error"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_2a
    :goto_18
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
