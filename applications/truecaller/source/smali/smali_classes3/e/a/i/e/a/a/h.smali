.class public final Le/a/i/e/a/a/h;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.offline.adtype.leadgen.OfflineLeadGenPresenterImpl$fetchLeadGenForm$1"
    f = "OfflineLeadGenPresenter.kt"
    l = {
        0x94,
        0x95,
        0x96
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/i/e/a/a/g;


# direct methods
.method public constructor <init>(Le/a/i/e/a/a/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/e/a/a/h;->g:Le/a/i/e/a/a/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/i/e/a/a/h;

    iget-object v0, p0, Le/a/i/e/a/a/h;->g:Le/a/i/e/a/a/g;

    invoke-direct {p1, v0, p2}, Le/a/i/e/a/a/h;-><init>(Le/a/i/e/a/a/g;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/e/a/a/h;

    iget-object v0, p0, Le/a/i/e/a/a/h;->g:Le/a/i/e/a/a/g;

    invoke-direct {p1, v0, p2}, Le/a/i/e/a/a/h;-><init>(Le/a/i/e/a/a/g;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/e/a/a/h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Ls1/s;->a:Ls1/s;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v0, Le/a/i/e/a/a/h;->f:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_2
    iget-object v3, v0, Le/a/i/e/a/a/h;->e:Ljava/lang/Object;

    check-cast v3, Le/a/i/e/a/a/g;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v3, v0, Le/a/i/e/a/a/h;->g:Le/a/i/e/a/a/g;

    iput-object v3, v0, Le/a/i/e/a/a/h;->e:Ljava/lang/Object;

    iput v7, v0, Le/a/i/e/a/a/h;->f:I

    .line 5
    iget-object v8, v3, Le/a/i/e/a/a/g;->p:Ls1/w/f;

    new-instance v9, Le/a/i/e/a/a/i;

    invoke-direct {v9, v3, v6}, Le/a/i/e/a/a/i;-><init>(Le/a/i/e/a/a/g;Ls1/w/d;)V

    invoke-static {v8, v9, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v2, :cond_4

    return-object v2

    .line 6
    :cond_4
    :goto_0
    check-cast v8, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;

    .line 7
    iput-object v8, v3, Le/a/i/e/a/a/g;->e:Lcom/truecaller/ads/offline/dto/OfflineAdsDto;

    if-nez v8, :cond_5

    .line 8
    iget-object v3, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/i/e/a/a/k;

    if-eqz v3, :cond_18

    .line 9
    invoke-interface {v3}, Le/a/i/e/a/a/k;->finish()V

    goto/16 :goto_b

    .line 10
    :cond_5
    iget-object v8, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v8, Le/a/i/e/a/a/k;

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    .line 11
    invoke-interface {v8, v9}, Le/a/i/e/a/a/k;->z4(Z)V

    .line 12
    :cond_6
    iget-object v8, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v8, Le/a/i/e/a/a/k;

    if-eqz v8, :cond_7

    invoke-interface {v8}, Le/a/i/e/a/a/k;->mx()V

    .line 13
    :cond_7
    iget-object v8, v3, Le/a/i/e/a/a/g;->e:Lcom/truecaller/ads/offline/dto/OfflineAdsDto;

    if-eqz v8, :cond_18

    .line 14
    iget-object v10, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v10, Le/a/i/e/a/a/k;

    if-eqz v10, :cond_8

    .line 15
    invoke-virtual {v8}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->getTheme()Lcom/truecaller/ads/offline/dto/Theme;

    move-result-object v11

    invoke-interface {v10, v11}, Le/a/i/e/a/a/k;->Fx(Lcom/truecaller/ads/offline/dto/Theme;)V

    .line 16
    :cond_8
    invoke-static {v8}, Le/m/d/y/n;->E0(Lcom/truecaller/ads/offline/dto/OfflineAdsDto;)Lcom/truecaller/ads/offline/dto/OfflineLeadGenViewDto;

    move-result-object v8

    iput-object v8, v3, Le/a/i/e/a/a/g;->f:Lcom/truecaller/ads/offline/dto/OfflineLeadGenViewDto;

    if-eqz v8, :cond_18

    .line 17
    iget-object v8, v8, Lcom/truecaller/ads/offline/dto/OfflineLeadGenViewDto;->a:Ljava/util/List;

    if-eqz v8, :cond_18

    .line 18
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/truecaller/ads/offline/dto/UiComponent;

    .line 19
    instance-of v11, v10, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;

    if-eqz v11, :cond_a

    goto :goto_2

    :cond_a
    instance-of v11, v10, Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;

    if-eqz v11, :cond_b

    .line 20
    :goto_2
    iget-object v11, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v11, Le/a/i/e/a/a/k;

    if-eqz v11, :cond_9

    .line 21
    invoke-interface {v11, v10}, Le/a/i/e/a/a/k;->ob(Lcom/truecaller/ads/offline/dto/UiComponent;)V

    goto :goto_1

    .line 22
    :cond_b
    instance-of v11, v10, Lcom/truecaller/ads/offline/dto/InputItemUiComponent;

    if-eqz v11, :cond_17

    .line 23
    move-object v11, v10

    check-cast v11, Lcom/truecaller/ads/offline/dto/InputItemUiComponent;

    invoke-virtual {v11}, Lcom/truecaller/ads/offline/dto/InputItemUiComponent;->b()Ljava/lang/String;

    move-result-object v12

    const-string v13, "email"

    invoke-static {v12, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 24
    instance-of v12, v10, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;

    if-nez v12, :cond_c

    move-object v10, v6

    :cond_c
    check-cast v10, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;

    if-eqz v10, :cond_d

    .line 25
    iget-object v12, v3, Le/a/i/e/a/a/g;->k:Ls1/g;

    invoke-interface {v12}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    const-string v14, "<set-?>"

    .line 26
    invoke-static {v12, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object v12, v10, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;->p:Ljava/util/List;

    .line 28
    :cond_d
    iget-object v10, v3, Le/a/i/e/a/a/g;->g:Ljava/util/Map;

    invoke-virtual {v11}, Lcom/truecaller/ads/offline/dto/InputItemUiComponent;->b()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16

    .line 29
    iget-object v10, v3, Le/a/i/e/a/a/g;->g:Ljava/util/Map;

    invoke-virtual {v11}, Lcom/truecaller/ads/offline/dto/InputItemUiComponent;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/truecaller/ads/offline/dto/InputItemUiComponent;->b()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Lcom/truecaller/ads/offline/dto/InputItemUiComponent;->d()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_f

    .line 30
    invoke-static {v15}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_e

    goto :goto_3

    :cond_e
    move/from16 v16, v9

    goto :goto_4

    :cond_f
    :goto_3
    move/from16 v16, v7

    :goto_4
    if-nez v16, :cond_10

    goto :goto_5

    :cond_10
    move-object v15, v6

    :goto_5
    if-eqz v15, :cond_11

    goto/16 :goto_a

    .line 31
    :cond_11
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    goto :goto_9

    :sswitch_0
    const-string v13, "firstName"

    .line 32
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    iget-object v13, v3, Le/a/i/e/a/a/g;->r:Le/a/b0/o/a;

    const-string v14, "profileFirstName"

    invoke-interface {v13, v14}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_a

    :sswitch_1
    const-string v13, "phone"

    .line 33
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    iget-object v13, v3, Le/a/i/e/a/a/g;->s:Le/a/b0/e/r/a;

    const-string v14, "profileNumber"

    invoke-interface {v13, v14}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_a

    .line 34
    :sswitch_2
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 35
    iget-object v13, v3, Le/a/i/e/a/a/g;->k:Ls1/g;

    invoke-interface {v13}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    if-eqz v13, :cond_13

    .line 36
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_12

    goto :goto_6

    :cond_12
    move v14, v9

    goto :goto_7

    :cond_13
    :goto_6
    move v14, v7

    :goto_7
    if-nez v14, :cond_14

    goto :goto_8

    :cond_14
    move-object v13, v6

    :goto_8
    if-eqz v13, :cond_15

    invoke-static {v13}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Ljava/lang/String;

    goto :goto_a

    :sswitch_3
    const-string v13, "lastName"

    .line 37
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    iget-object v13, v3, Le/a/i/e/a/a/g;->r:Le/a/b0/o/a;

    const-string v14, "profileLastName"

    invoke-interface {v13, v14}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_a

    :cond_15
    :goto_9
    move-object v15, v6

    .line 38
    :goto_a
    invoke-interface {v10, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_16
    iget-object v10, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v10, Le/a/i/e/a/a/k;

    if-eqz v10, :cond_9

    .line 40
    iget-object v12, v3, Le/a/i/e/a/a/g;->g:Ljava/util/Map;

    invoke-virtual {v11}, Lcom/truecaller/ads/offline/dto/InputItemUiComponent;->b()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v10, v11, v12, v3}, Le/a/i/e/a/a/k;->Gg(Lcom/truecaller/ads/offline/dto/InputItemUiComponent;Ljava/lang/String;Le/a/i/e/g/a/f/b/h;)V

    goto/16 :goto_1

    .line 41
    :cond_17
    instance-of v11, v10, Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent;

    if-eqz v11, :cond_9

    .line 42
    iget-object v11, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v11, Le/a/i/e/a/a/k;

    if-eqz v11, :cond_9

    .line 43
    invoke-interface {v11, v10, v3}, Le/a/i/e/a/a/k;->ul(Lcom/truecaller/ads/offline/dto/UiComponent;Le/a/i/e/g/a/f/b/e;)V

    goto/16 :goto_1

    .line 44
    :cond_18
    :goto_b
    iget-object v3, v0, Le/a/i/e/a/a/h;->g:Le/a/i/e/a/a/g;

    iput-object v6, v0, Le/a/i/e/a/a/h;->e:Ljava/lang/Object;

    iput v5, v0, Le/a/i/e/a/a/h;->f:I

    const-string v5, "view"

    invoke-virtual {v3, v5, v0}, Le/a/i/e/a/a/g;->Lj(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_19

    return-object v2

    .line 45
    :cond_19
    :goto_c
    iget-object v3, v0, Le/a/i/e/a/a/h;->g:Le/a/i/e/a/a/g;

    .line 46
    iget-object v5, v3, Le/a/i/e/a/a/g;->m:Ljava/lang/String;

    if-eqz v5, :cond_1c

    .line 47
    iput v4, v0, Le/a/i/e/a/a/h;->f:I

    .line 48
    iget-object v4, v3, Le/a/i/e/a/a/g;->t:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/p5/u;

    invoke-interface {v4}, Le/a/p5/u;->d()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 49
    invoke-virtual {v3}, Le/a/i/e/a/a/g;->Kj()V

    :cond_1a
    move-object v3, v1

    goto :goto_d

    .line 50
    :cond_1b
    iget-object v4, v3, Le/a/i/e/a/a/g;->x:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/i/e0/a;

    invoke-interface {v4}, Le/a/i/e0/a;->c()Lq3/a/x2/f;

    move-result-object v4

    .line 51
    new-instance v5, Le/a/i/e/a/a/f;

    invoke-direct {v5, v3}, Le/a/i/e/a/a/f;-><init>(Le/a/i/e/a/a/g;)V

    invoke-interface {v4, v5, v0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1a

    :goto_d
    if-ne v3, v2, :cond_1c

    return-object v2

    :cond_1c
    :goto_e
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x56ffb9bf -> :sswitch_3
        0x5c24b9c -> :sswitch_2
        0x65b3d6e -> :sswitch_1
        0x7eae95b -> :sswitch_0
    .end sparse-switch
.end method
