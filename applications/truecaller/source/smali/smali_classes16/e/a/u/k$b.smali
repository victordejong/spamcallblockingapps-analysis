.class public final Le/a/u/k$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/u/k;->Q3(Ljava/lang/String;)V
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
    c = "com.truecaller.yearincalling.YearInCallingPresenter$onActivityCreated$1"
    f = "YearInCallingPresenter.kt"
    l = {
        0x2b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/u/k;


# direct methods
.method public constructor <init>(Le/a/u/k;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/u/k$b;->g:Le/a/u/k;

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

    new-instance p1, Le/a/u/k$b;

    iget-object v0, p0, Le/a/u/k$b;->g:Le/a/u/k;

    invoke-direct {p1, v0, p2}, Le/a/u/k$b;-><init>(Le/a/u/k;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/u/k$b;

    iget-object v0, p0, Le/a/u/k$b;->g:Le/a/u/k;

    invoke-direct {p1, v0, p2}, Le/a/u/k$b;-><init>(Le/a/u/k;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/u/k$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 56

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/u/k$b;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Le/a/u/k$b;->e:Ljava/lang/Object;

    check-cast v1, Le/a/u/c;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/u/k$b;->g:Le/a/u/k;

    .line 5
    iget-object v4, v2, Le/a/u/k;->h:Le/a/u/c;

    .line 6
    iput-object v4, v0, Le/a/u/k$b;->e:Ljava/lang/Object;

    iput v3, v0, Le/a/u/k$b;->f:I

    invoke-virtual {v2, v0}, Le/a/u/k;->Ij(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    :cond_2
    move-object v1, v4

    :goto_0
    check-cast v2, Le/a/u/m/a;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "data"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x6

    new-array v5, v4, [Lcom/truecaller/yearincalling/model/StatsUiModel;

    .line 8
    iget-object v6, v1, Le/a/u/c;->a:Le/a/p5/c0;

    const/4 v7, 0x0

    .line 9
    invoke-static {v6, v7}, Le/a/p5/s0/g;->E1(Le/a/p5/c0;Z)Lcom/truecaller/yearincalling/model/StatsUiModel;

    move-result-object v6

    aput-object v6, v5, v7

    .line 10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v14, Lcom/truecaller/yearincalling/model/Detail;

    .line 12
    sget v8, Lcom/truecaller/stats/R$drawable;->img_message_amount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 13
    iget-object v8, v1, Le/a/u/c;->a:Le/a/p5/c0;

    .line 14
    sget v15, Lcom/truecaller/stats/R$string;->year_in_tc_messages_description:I

    const/4 v13, 0x2

    new-array v10, v13, [Ljava/lang/Object;

    .line 15
    iget v11, v2, Le/a/u/m/a;->a:I

    .line 16
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    .line 17
    iget v11, v2, Le/a/u/m/a;->b:I

    .line 18
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    .line 19
    invoke-interface {v8, v15, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "resourceProvider.getStri\u2026unt\n                    )"

    invoke-static {v8, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {v8}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    const/4 v11, 0x0

    .line 21
    iget-object v8, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v12, Lcom/truecaller/stats/R$color;->stats_messages_text_color:I

    invoke-interface {v8, v12}, Le/a/p5/c0;->a(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x4

    move-object v8, v14

    move v4, v12

    move-object/from16 v12, v16

    move/from16 v13, v17

    .line 22
    invoke-direct/range {v8 .. v13}, Lcom/truecaller/yearincalling/model/Detail;-><init>(Ljava/lang/Integer;Landroid/text/Spanned;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 23
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget v8, v2, Le/a/u/m/a;->g:I

    const-string v9, "resourceProvider.getStri\u2026                        )"

    if-lez v8, :cond_3

    .line 25
    new-instance v8, Lcom/truecaller/yearincalling/model/Detail;

    .line 26
    sget v10, Lcom/truecaller/stats/R$drawable;->img_message_inbox_cleaner:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 27
    iget-object v10, v1, Le/a/u/c;->a:Le/a/p5/c0;

    .line 28
    invoke-virtual {v1}, Le/a/u/c;->a()I

    move-result v11

    new-array v12, v3, [Ljava/lang/Object;

    .line 29
    iget v13, v2, Le/a/u/m/a;->g:I

    .line 30
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v7

    .line 31
    invoke-interface {v10, v11, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {v10}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v21

    const/16 v22, 0x0

    .line 33
    iget-object v10, v1, Le/a/u/c;->a:Le/a/p5/c0;

    invoke-interface {v10, v4}, Le/a/p5/c0;->a(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x4

    move-object/from16 v19, v8

    .line 34
    invoke-direct/range {v19 .. v24}, Lcom/truecaller/yearincalling/model/Detail;-><init>(Ljava/lang/Integer;Landroid/text/Spanned;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 35
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_3
    iget v8, v2, Le/a/u/m/a;->f:I

    if-lez v8, :cond_4

    .line 37
    new-instance v8, Lcom/truecaller/yearincalling/model/Detail;

    .line 38
    sget v10, Lcom/truecaller/stats/R$drawable;->img_message_important:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 39
    iget-object v10, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v11, Lcom/truecaller/stats/R$string;->year_in_tc_important_messages_identified:I

    new-array v12, v3, [Ljava/lang/Object;

    .line 40
    iget v13, v2, Le/a/u/m/a;->f:I

    .line 41
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-interface {v10, v11, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "resourceProvider.getStri\u2026ortantMessagesIdentified)"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {v10}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v21

    const/16 v22, 0x0

    .line 43
    iget-object v10, v1, Le/a/u/c;->a:Le/a/p5/c0;

    invoke-interface {v10, v4}, Le/a/p5/c0;->a(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x4

    move-object/from16 v19, v8

    .line 44
    invoke-direct/range {v19 .. v24}, Lcom/truecaller/yearincalling/model/Detail;-><init>(Ljava/lang/Integer;Landroid/text/Spanned;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 45
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 46
    :cond_4
    iget v8, v2, Le/a/u/m/a;->e:I

    if-lez v8, :cond_5

    .line 47
    new-instance v8, Lcom/truecaller/yearincalling/model/Detail;

    .line 48
    sget v10, Lcom/truecaller/stats/R$drawable;->img_message_gifs:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 49
    iget-object v10, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v11, Lcom/truecaller/stats/R$string;->year_in_tc_gifs_sent_and_received:I

    new-array v12, v3, [Ljava/lang/Object;

    .line 50
    iget v13, v2, Le/a/u/m/a;->e:I

    .line 51
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-interface {v10, v11, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "resourceProvider.getStri\u2026, statsRawData.gifsCount)"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {v10}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v21

    const/16 v22, 0x0

    .line 53
    iget-object v10, v1, Le/a/u/c;->a:Le/a/p5/c0;

    invoke-interface {v10, v4}, Le/a/p5/c0;->a(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x4

    move-object/from16 v19, v8

    .line 54
    invoke-direct/range {v19 .. v24}, Lcom/truecaller/yearincalling/model/Detail;-><init>(Ljava/lang/Integer;Landroid/text/Spanned;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 55
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_5
    :goto_1
    invoke-static {v6}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v30

    .line 57
    new-instance v6, Lcom/truecaller/yearincalling/model/StatsUiModel;

    .line 58
    iget v8, v2, Le/a/u/m/a;->c:I

    .line 59
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    .line 60
    iget-object v8, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v10, Lcom/truecaller/stats/R$string;->year_in_tc_messages_title:I

    new-array v11, v7, [Ljava/lang/Object;

    invoke-interface {v8, v10, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "resourceProvider.getStri\u2026ear_in_tc_messages_title)"

    invoke-static {v8, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v10, v1, Le/a/u/c;->a:Le/a/p5/c0;

    invoke-interface {v10, v4}, Le/a/p5/c0;->a(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v31, 0x0

    .line 62
    sget v4, Lcom/truecaller/stats/R$drawable;->message_stats_background:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    .line 63
    sget v4, Lcom/truecaller/stats/R$color;->stats_messages_background_color:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v35, 0x0

    .line 64
    iget-object v4, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v10, Lcom/truecaller/stats/R$color;->stats_messages_share_button_color:I

    invoke-interface {v4, v10}, Le/a/p5/c0;->a(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    const/16 v37, 0x328

    move-object/from16 v25, v6

    move-object/from16 v27, v8

    .line 65
    invoke-direct/range {v25 .. v37}, Lcom/truecaller/yearincalling/model/StatsUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/text/Spanned;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/util/List;Ljava/lang/Integer;I)V

    aput-object v6, v5, v3

    .line 66
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    new-instance v6, Lcom/truecaller/yearincalling/model/Detail;

    .line 68
    sget v8, Lcom/truecaller/stats/R$drawable;->img_calls_amount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 69
    iget-object v8, v1, Le/a/u/c;->a:Le/a/p5/c0;

    .line 70
    sget v10, Lcom/truecaller/stats/R$string;->year_in_tc_calls_description:I

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    .line 71
    iget v13, v2, Le/a/u/m/a;->h:I

    .line 72
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v7

    .line 73
    iget v13, v2, Le/a/u/m/a;->i:I

    .line 74
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v3

    .line 75
    invoke-interface {v8, v10, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "resourceProvider.getStri\u2026lsCount\n                )"

    invoke-static {v8, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {v8}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v21

    const/16 v22, 0x0

    .line 77
    iget-object v8, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v12, Lcom/truecaller/stats/R$color;->stats_calls_text_color:I

    invoke-interface {v8, v12}, Le/a/p5/c0;->a(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x4

    move-object/from16 v19, v6

    .line 78
    invoke-direct/range {v19 .. v24}, Lcom/truecaller/yearincalling/model/Detail;-><init>(Ljava/lang/Integer;Landroid/text/Spanned;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 79
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v6, v2, Le/a/u/m/a;->k:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 81
    new-instance v13, Lcom/truecaller/yearincalling/model/Detail;

    .line 82
    sget v14, Lcom/truecaller/stats/R$drawable;->img_calls_favorite_contact:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget-object v14, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v8, Lcom/truecaller/stats/R$string;->year_in_tc_calls_made_to:I

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v6, v11, v7

    invoke-interface {v14, v8, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "resourceProvider.getStri\u2026lls_made_to, contactName)"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-static {v6}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v18

    const/16 v19, 0x0

    .line 84
    iget-object v6, v1, Le/a/u/c;->a:Le/a/p5/c0;

    invoke-interface {v6, v12}, Le/a/p5/c0;->a(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x4

    move-object/from16 v16, v13

    .line 85
    invoke-direct/range {v16 .. v21}, Lcom/truecaller/yearincalling/model/Detail;-><init>(Ljava/lang/Integer;Landroid/text/Spanned;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 86
    iget-object v6, v2, Le/a/u/m/a;->l:Ljava/lang/Integer;

    if-eqz v6, :cond_6

    .line 87
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 88
    iget-object v8, v1, Le/a/u/c;->a:Le/a/p5/c0;

    new-array v11, v7, [Ljava/lang/Object;

    invoke-interface {v8, v6, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_a

    .line 89
    iget-object v8, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v11, Lcom/truecaller/stats/R$string;->year_in_review_call_period_morning:I

    new-array v14, v7, [Ljava/lang/Object;

    invoke-interface {v8, v11, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x2

    new-array v6, v8, [Lcom/truecaller/yearincalling/model/Detail;

    aput-object v13, v6, v7

    .line 90
    new-instance v8, Lcom/truecaller/yearincalling/model/Detail;

    .line 91
    sget v11, Lcom/truecaller/stats/R$drawable;->img_time_of_day:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 92
    iget-object v11, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v13, Lcom/truecaller/stats/R$string;->year_in_tc_calls_made_in_morning:I

    new-array v14, v7, [Ljava/lang/Object;

    invoke-interface {v11, v13, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "resourceProvider.getStri\u2026tc_calls_made_in_morning)"

    invoke-static {v11, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-static {v11}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v18

    const/16 v19, 0x0

    .line 94
    iget-object v11, v1, Le/a/u/c;->a:Le/a/p5/c0;

    invoke-interface {v11, v12}, Le/a/p5/c0;->a(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x4

    move-object/from16 v16, v8

    .line 95
    invoke-direct/range {v16 .. v21}, Lcom/truecaller/yearincalling/model/Detail;-><init>(Ljava/lang/Integer;Landroid/text/Spanned;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    aput-object v8, v6, v3

    .line 96
    invoke-static {v6}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 97
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 98
    :cond_7
    iget-object v8, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v11, Lcom/truecaller/stats/R$string;->year_in_review_call_period_afternoon:I

    new-array v14, v7, [Ljava/lang/Object;

    invoke-interface {v8, v11, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x2

    new-array v6, v8, [Lcom/truecaller/yearincalling/model/Detail;

    aput-object v13, v6, v7

    .line 99
    new-instance v8, Lcom/truecaller/yearincalling/model/Detail;

    .line 100
    sget v11, Lcom/truecaller/stats/R$drawable;->img_time_of_day:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 101
    iget-object v11, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v13, Lcom/truecaller/stats/R$string;->year_in_tc_calls_made_in_afternoon:I

    new-array v14, v7, [Ljava/lang/Object;

    invoke-interface {v11, v13, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "resourceProvider.getStri\u2026_calls_made_in_afternoon)"

    invoke-static {v11, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-static {v11}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v18

    const/16 v19, 0x0

    .line 103
    iget-object v11, v1, Le/a/u/c;->a:Le/a/p5/c0;

    invoke-interface {v11, v12}, Le/a/p5/c0;->a(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x4

    move-object/from16 v16, v8

    .line 104
    invoke-direct/range {v16 .. v21}, Lcom/truecaller/yearincalling/model/Detail;-><init>(Ljava/lang/Integer;Landroid/text/Spanned;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    aput-object v8, v6, v3

    .line 105
    invoke-static {v6}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 106
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 107
    :cond_8
    iget-object v8, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v11, Lcom/truecaller/stats/R$string;->year_in_review_call_period_evening:I

    new-array v14, v7, [Ljava/lang/Object;

    invoke-interface {v8, v11, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x2

    new-array v8, v6, [Lcom/truecaller/yearincalling/model/Detail;

    aput-object v13, v8, v7

    .line 108
    new-instance v6, Lcom/truecaller/yearincalling/model/Detail;

    .line 109
    sget v11, Lcom/truecaller/stats/R$drawable;->img_time_of_day:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 110
    iget-object v11, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v13, Lcom/truecaller/stats/R$string;->year_in_tc_calls_made_in_evening:I

    new-array v14, v7, [Ljava/lang/Object;

    invoke-interface {v11, v13, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "resourceProvider.getStri\u2026tc_calls_made_in_evening)"

    invoke-static {v11, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-static {v11}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v18

    const/16 v19, 0x0

    .line 112
    iget-object v11, v1, Le/a/u/c;->a:Le/a/p5/c0;

    invoke-interface {v11, v12}, Le/a/p5/c0;->a(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x4

    move-object/from16 v16, v6

    .line 113
    invoke-direct/range {v16 .. v21}, Lcom/truecaller/yearincalling/model/Detail;-><init>(Ljava/lang/Integer;Landroid/text/Spanned;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    aput-object v6, v8, v3

    .line 114
    invoke-static {v8}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 115
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_9
    const/4 v6, 0x2

    new-array v8, v6, [Lcom/truecaller/yearincalling/model/Detail;

    aput-object v13, v8, v7

    .line 116
    new-instance v6, Lcom/truecaller/yearincalling/model/Detail;

    .line 117
    sget v11, Lcom/truecaller/stats/R$drawable;->img_time_of_day:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 118
    iget-object v11, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v13, Lcom/truecaller/stats/R$string;->year_in_tc_calls_made_at_night:I

    new-array v14, v7, [Ljava/lang/Object;

    invoke-interface {v11, v13, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "resourceProvider.getStri\u2026n_tc_calls_made_at_night)"

    invoke-static {v11, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-static {v11}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v18

    const/16 v19, 0x0

    .line 120
    iget-object v11, v1, Le/a/u/c;->a:Le/a/p5/c0;

    invoke-interface {v11, v12}, Le/a/p5/c0;->a(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x4

    move-object/from16 v16, v6

    .line 121
    invoke-direct/range {v16 .. v21}, Lcom/truecaller/yearincalling/model/Detail;-><init>(Ljava/lang/Integer;Landroid/text/Spanned;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    aput-object v6, v8, v3

    .line 122
    invoke-static {v8}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 123
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 124
    :cond_a
    :goto_3
    new-instance v6, Lcom/truecaller/yearincalling/model/StatsUiModel;

    .line 125
    iget v8, v2, Le/a/u/m/a;->j:I

    .line 126
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    .line 127
    iget-object v8, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v11, Lcom/truecaller/stats/R$string;->year_in_tc_calls_title:I

    new-array v13, v7, [Ljava/lang/Object;

    invoke-interface {v8, v11, v13}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "resourceProvider.getStri\u2026g.year_in_tc_calls_title)"

    invoke-static {v8, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v11, v1, Le/a/u/c;->a:Le/a/p5/c0;

    invoke-interface {v11, v12}, Le/a/p5/c0;->a(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    const/16 v42, 0x0

    const/16 v44, 0x0

    .line 129
    sget v11, Lcom/truecaller/stats/R$drawable;->call_stats_background:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    .line 130
    sget v11, Lcom/truecaller/stats/R$color;->stats_calls_background_color:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    const/16 v47, 0x0

    const/16 v48, 0x0

    .line 131
    iget-object v11, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v12, Lcom/truecaller/stats/R$color;->stats_calls_share_button_color:I

    invoke-interface {v11, v12}, Le/a/p5/c0;->a(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    const/16 v50, 0x328

    move-object/from16 v38, v6

    move-object/from16 v40, v8

    move-object/from16 v43, v4

    .line 132
    invoke-direct/range {v38 .. v50}, Lcom/truecaller/yearincalling/model/StatsUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/text/Spanned;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/util/List;Ljava/lang/Integer;I)V

    const/4 v4, 0x2

    aput-object v6, v5, v4

    .line 133
    iget v4, v2, Le/a/u/m/a;->m:I

    int-to-double v11, v4

    const-wide v13, 0x403d666666666666L    # 29.4

    mul-double/2addr v11, v13

    double-to-long v11, v11

    .line 134
    iget-object v4, v1, Le/a/u/c;->b:Landroid/content/Context;

    invoke-static {v4, v11, v12}, Le/a/b0/q/m;->e(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    const-string v6, "DateTimeUtils.getFormatt\u2026ation(context, savedTime)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v16, 0x0

    cmp-long v11, v11, v16

    const-string v12, "resourceProvider.getStri\u2026ime_saved, savedTimeText)"

    if-lez v11, :cond_b

    .line 136
    new-instance v11, Lcom/truecaller/yearincalling/model/Detail;

    .line 137
    sget v18, Lcom/truecaller/stats/R$drawable;->img_spam_time_saved:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 138
    iget-object v13, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v14, Lcom/truecaller/stats/R$string;->year_in_tc_search_time_saved:I

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v4, v0, v7

    invoke-interface {v13, v14, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-static {v0}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v26

    const/16 v27, 0x0

    .line 140
    iget-object v0, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v13, Lcom/truecaller/stats/R$color;->stats_search_text_color:I

    invoke-interface {v0, v13}, Le/a/p5/c0;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x4

    move-object/from16 v24, v11

    .line 141
    invoke-direct/range {v24 .. v29}, Lcom/truecaller/yearincalling/model/Detail;-><init>(Ljava/lang/Integer;Landroid/text/Spanned;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 142
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_b
    iget v0, v2, Le/a/u/m/a;->n:I

    if-lez v0, :cond_c

    .line 144
    new-instance v0, Lcom/truecaller/yearincalling/model/Detail;

    .line 145
    sget v11, Lcom/truecaller/stats/R$drawable;->img_spam_unkown_identified:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 146
    iget-object v11, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v13, Lcom/truecaller/stats/R$string;->year_in_tc_search_unknown_calls_identified:I

    new-array v14, v3, [Ljava/lang/Object;

    .line 147
    iget v3, v2, Le/a/u/m/a;->n:I

    .line 148
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v7

    invoke-interface {v11, v13, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "resourceProvider.getStri\u2026a.unknownCallsIdentified)"

    invoke-static {v3, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-static {v3}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v26

    const/16 v27, 0x0

    .line 150
    iget-object v3, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v11, Lcom/truecaller/stats/R$color;->stats_search_text_color:I

    invoke-interface {v3, v11}, Le/a/p5/c0;->a(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x4

    move-object/from16 v24, v0

    .line 151
    invoke-direct/range {v24 .. v29}, Lcom/truecaller/yearincalling/model/Detail;-><init>(Ljava/lang/Integer;Landroid/text/Spanned;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 152
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_c
    iget v0, v2, Le/a/u/m/a;->d:I

    if-lez v0, :cond_d

    .line 154
    new-instance v0, Lcom/truecaller/yearincalling/model/Detail;

    .line 155
    sget v3, Lcom/truecaller/stats/R$drawable;->img_spam_spam_messages:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 156
    iget-object v3, v1, Le/a/u/c;->a:Le/a/p5/c0;

    .line 157
    sget v11, Lcom/truecaller/stats/R$string;->year_in_tc_messages_moved_to_spam:I

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    .line 158
    iget v13, v2, Le/a/u/m/a;->d:I

    .line 159
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v14, v7

    .line 160
    invoke-interface {v3, v11, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-static {v3}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v26

    const/16 v27, 0x0

    .line 162
    iget-object v3, v1, Le/a/u/c;->a:Le/a/p5/c0;

    .line 163
    sget v9, Lcom/truecaller/stats/R$color;->stats_search_text_color:I

    .line 164
    invoke-interface {v3, v9}, Le/a/p5/c0;->a(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x4

    move-object/from16 v24, v0

    .line 165
    invoke-direct/range {v24 .. v29}, Lcom/truecaller/yearincalling/model/Detail;-><init>(Ljava/lang/Integer;Landroid/text/Spanned;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 166
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_d
    invoke-static {v8}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v35

    .line 168
    new-instance v0, Lcom/truecaller/yearincalling/model/StatsUiModel;

    .line 169
    iget v3, v2, Le/a/u/m/a;->m:I

    .line 170
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    .line 171
    iget-object v3, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v8, Lcom/truecaller/stats/R$string;->year_in_tc_search_title:I

    new-array v9, v7, [Ljava/lang/Object;

    invoke-interface {v3, v8, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "resourceProvider.getStri\u2026.year_in_tc_search_title)"

    invoke-static {v3, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v8, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v9, Lcom/truecaller/stats/R$color;->stats_search_text_color:I

    invoke-interface {v8, v9}, Le/a/p5/c0;->a(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v36, 0x0

    .line 173
    sget v8, Lcom/truecaller/stats/R$drawable;->search_stats_background:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    .line 174
    sget v8, Lcom/truecaller/stats/R$color;->stats_search_background_color:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    const/16 v39, 0x0

    const/4 v8, 0x6

    new-array v8, v8, [Lcom/truecaller/yearincalling/model/ShareImageDetails;

    .line 175
    new-instance v9, Lcom/truecaller/yearincalling/model/ShareImageDetails;

    .line 176
    sget v11, Lcom/truecaller/stats/R$id;->statItem1:I

    .line 177
    iget-object v13, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v14, Lcom/truecaller/stats/R$string;->year_in_tc_search_time_saved:I

    move-object/from16 v21, v6

    move-object/from16 p1, v12

    const/4 v12, 0x1

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-interface {v13, v14, v6}, Le/a/p5/c0;->n(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v6, "resourceProvider.getRich\u2026ime_saved, savedTimeText)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v12, 0x0

    .line 178
    invoke-direct {v9, v11, v4, v12, v6}, Lcom/truecaller/yearincalling/model/ShareImageDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/String;I)V

    aput-object v9, v8, v7

    .line 179
    new-instance v4, Lcom/truecaller/yearincalling/model/ShareImageDetails;

    .line 180
    sget v9, Lcom/truecaller/stats/R$id;->statItem2:I

    .line 181
    iget-object v11, v1, Le/a/u/c;->a:Le/a/p5/c0;

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    .line 182
    iget v12, v2, Le/a/u/m/a;->h:I

    .line 183
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v13, v7

    .line 184
    iget v12, v2, Le/a/u/m/a;->i:I

    .line 185
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    aput-object v12, v13, v14

    .line 186
    invoke-interface {v11, v10, v13}, Le/a/p5/c0;->n(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v10

    const-string v11, "resourceProvider.getRich\u2026g()\n                    )"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 187
    invoke-direct {v4, v9, v10, v12, v6}, Lcom/truecaller/yearincalling/model/ShareImageDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/String;I)V

    aput-object v4, v8, v14

    .line 188
    new-instance v4, Lcom/truecaller/yearincalling/model/ShareImageDetails;

    .line 189
    sget v9, Lcom/truecaller/stats/R$id;->statItem3:I

    .line 190
    iget-object v10, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v12, Lcom/truecaller/stats/R$string;->year_in_tc_square_summary_3:I

    new-array v13, v14, [Ljava/lang/Object;

    .line 191
    iget v14, v2, Le/a/u/m/a;->n:I

    .line 192
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v7

    invoke-interface {v10, v12, v13}, Le/a/p5/c0;->n(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v10

    const-string v12, "resourceProvider.getRich\u2026llsIdentified.toString())"

    invoke-static {v10, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 193
    invoke-direct {v4, v9, v10, v12, v6}, Lcom/truecaller/yearincalling/model/ShareImageDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/String;I)V

    const/4 v9, 0x2

    aput-object v4, v8, v9

    .line 194
    new-instance v4, Lcom/truecaller/yearincalling/model/ShareImageDetails;

    .line 195
    sget v10, Lcom/truecaller/stats/R$id;->statItem4:I

    .line 196
    iget-object v12, v1, Le/a/u/c;->a:Le/a/p5/c0;

    new-array v13, v9, [Ljava/lang/Object;

    .line 197
    iget v9, v2, Le/a/u/m/a;->a:I

    .line 198
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v13, v7

    .line 199
    iget v9, v2, Le/a/u/m/a;->b:I

    .line 200
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x1

    aput-object v9, v13, v14

    .line 201
    invoke-interface {v12, v15, v13}, Le/a/p5/c0;->n(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 202
    invoke-direct {v4, v10, v9, v11, v6}, Lcom/truecaller/yearincalling/model/ShareImageDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/String;I)V

    const/4 v9, 0x3

    aput-object v4, v8, v9

    .line 203
    new-instance v4, Lcom/truecaller/yearincalling/model/ShareImageDetails;

    .line 204
    sget v10, Lcom/truecaller/stats/R$id;->statItem5:I

    .line 205
    iget-object v11, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v12, Lcom/truecaller/stats/R$string;->year_in_tc_messages_moved_to_spam:I

    new-array v13, v14, [Ljava/lang/Object;

    .line 206
    iget v14, v2, Le/a/u/m/a;->d:I

    .line 207
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v7

    invoke-interface {v11, v12, v13}, Le/a/p5/c0;->n(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v11

    const-string v12, "resourceProvider.getRich\u2026esMovedToSpam.toString())"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 208
    invoke-direct {v4, v10, v11, v12, v6}, Lcom/truecaller/yearincalling/model/ShareImageDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/String;I)V

    aput-object v4, v8, v6

    .line 209
    new-instance v4, Lcom/truecaller/yearincalling/model/ShareImageDetails;

    .line 210
    sget v10, Lcom/truecaller/stats/R$id;->statItem6:I

    .line 211
    iget-object v11, v1, Le/a/u/c;->a:Le/a/p5/c0;

    invoke-virtual {v1}, Le/a/u/c;->a()I

    move-result v12

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    .line 212
    iget v13, v2, Le/a/u/m/a;->g:I

    .line 213
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v14, v7

    invoke-interface {v11, v12, v14}, Le/a/p5/c0;->n(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v11

    const-string v12, "resourceProvider.getRich\u2026agesAutomaticallyRemoved)"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 214
    invoke-direct {v4, v10, v11, v12, v6}, Lcom/truecaller/yearincalling/model/ShareImageDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/String;I)V

    const/4 v10, 0x5

    aput-object v4, v8, v10

    .line 215
    invoke-static {v8}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v40

    .line 216
    iget-object v4, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v8, Lcom/truecaller/stats/R$color;->stats_search_share_button_color:I

    invoke-interface {v4, v8}, Le/a/p5/c0;->a(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    const/16 v42, 0x128

    move-object/from16 v30, v0

    move-object/from16 v32, v3

    .line 217
    invoke-direct/range {v30 .. v42}, Lcom/truecaller/yearincalling/model/StatsUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/text/Spanned;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/util/List;Ljava/lang/Integer;I)V

    aput-object v0, v5, v9

    .line 218
    new-instance v0, Lcom/truecaller/yearincalling/model/StatsUiModel;

    .line 219
    iget-object v3, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v4, Lcom/truecaller/stats/R$string;->year_in_tc_community_title:I

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "resourceProvider.getStri\u2026ar_in_tc_community_title)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-object v4, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v8, Lcom/truecaller/stats/R$color;->stats_community_text_color:I

    invoke-interface {v4, v8}, Le/a/p5/c0;->a(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    .line 221
    iget-object v4, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v8, Lcom/truecaller/stats/R$string;->year_in_tc_community_message:I

    new-array v9, v7, [Ljava/lang/Object;

    invoke-interface {v4, v8, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v4

    const-string v8, "SpannableString.valueOf(\u2026in_tc_community_message))"

    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    sget v8, Lcom/truecaller/stats/R$drawable;->community_stats_background:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    .line 223
    sget v8, Lcom/truecaller/stats/R$color;->stats_community_background_color:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    .line 224
    iget-object v8, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v9, Lcom/truecaller/stats/R$color;->stats_community_share_button_color:I

    invoke-interface {v8, v9}, Le/a/p5/c0;->a(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    const/16 v44, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v55, 0x331

    move-object/from16 v43, v0

    move-object/from16 v45, v3

    move-object/from16 v47, v4

    .line 225
    invoke-direct/range {v43 .. v55}, Lcom/truecaller/yearincalling/model/StatsUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/text/Spanned;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/util/List;Ljava/lang/Integer;I)V

    aput-object v0, v5, v6

    .line 226
    iget v0, v2, Le/a/u/m/a;->m:I

    int-to-double v3, v0

    const-wide v8, 0x403d666666666666L    # 29.4

    mul-double/2addr v3, v8

    double-to-long v3, v3

    .line 227
    iget-object v0, v1, Le/a/u/c;->b:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Le/a/b0/q/m;->e(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v21

    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object v6, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v8, Lcom/truecaller/stats/R$color;->stats_summary_text_color:I

    invoke-interface {v6, v8}, Le/a/p5/c0;->a(I)I

    move-result v6

    .line 229
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    cmp-long v3, v3, v16

    if-lez v3, :cond_e

    .line 230
    iget-object v3, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v4, Lcom/truecaller/stats/R$string;->year_in_tc_summary_time_saved:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v0, v11, v7

    invoke-interface {v3, v4, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p1

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-static {v0}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    .line 232
    new-instance v0, Lcom/truecaller/yearincalling/model/Detail;

    sget v3, Lcom/truecaller/stats/R$drawable;->img_summary_time_saved:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x4

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/truecaller/yearincalling/model/Detail;-><init>(Ljava/lang/Integer;Landroid/text/Spanned;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_e
    iget v0, v2, Le/a/u/m/a;->n:I

    if-lez v0, :cond_f

    .line 234
    iget-object v3, v1, Le/a/u/c;->a:Le/a/p5/c0;

    .line 235
    sget v4, Lcom/truecaller/stats/R$string;->year_in_tc_summary_unknown_numbers_identified:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    .line 236
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v7

    .line 237
    invoke-interface {v3, v4, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "resourceProvider.getStri\u2026ntified\n                )"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-static {v0}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    .line 239
    new-instance v0, Lcom/truecaller/yearincalling/model/Detail;

    sget v3, Lcom/truecaller/stats/R$drawable;->img_summary_unknown_identified:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x4

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/truecaller/yearincalling/model/Detail;-><init>(Ljava/lang/Integer;Landroid/text/Spanned;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_f
    iget v0, v2, Le/a/u/m/a;->d:I

    if-lez v0, :cond_10

    .line 241
    iget-object v3, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v4, Lcom/truecaller/stats/R$string;->year_in_tc_summary_messages_moved_to_spam:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v7

    invoke-interface {v3, v4, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "resourceProvider.getStri\u2026data.messagesMovedToSpam)"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-static {v0}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    .line 243
    new-instance v0, Lcom/truecaller/yearincalling/model/Detail;

    sget v3, Lcom/truecaller/stats/R$drawable;->img_summary_spam_messages_moved:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x4

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/truecaller/yearincalling/model/Detail;-><init>(Ljava/lang/Integer;Landroid/text/Spanned;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_10
    iget-object v0, v1, Le/a/u/c;->a:Le/a/p5/c0;

    .line 245
    sget v3, Lcom/truecaller/stats/R$string;->year_in_tc_summary_calls_made_and_received:I

    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/Object;

    .line 246
    iget v4, v2, Le/a/u/m/a;->h:I

    .line 247
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v7

    .line 248
    iget v4, v2, Le/a/u/m/a;->i:I

    .line 249
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v11, 0x1

    aput-object v4, v9, v11

    .line 250
    invoke-interface {v0, v3, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "resourceProvider.getStri\u2026gCallsCount\n            )"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-static {v0}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    .line 252
    new-instance v0, Lcom/truecaller/yearincalling/model/Detail;

    sget v3, Lcom/truecaller/stats/R$drawable;->img_summary_calls_amount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v19, 0x4

    const/4 v14, 0x0

    const/16 v16, 0x4

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/truecaller/yearincalling/model/Detail;-><init>(Ljava/lang/Integer;Landroid/text/Spanned;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, v1, Le/a/u/c;->a:Le/a/p5/c0;

    .line 254
    sget v3, Lcom/truecaller/stats/R$string;->year_in_tc_summary_messages_sent_and_received:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 255
    iget v9, v2, Le/a/u/m/a;->a:I

    .line 256
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v7

    .line 257
    iget v9, v2, Le/a/u/m/a;->b:I

    .line 258
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v4, v11

    .line 259
    invoke-interface {v0, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "resourceProvider.getStri\u2026ssagesCount\n            )"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-static {v0}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v16

    .line 261
    new-instance v0, Lcom/truecaller/yearincalling/model/Detail;

    sget v3, Lcom/truecaller/stats/R$drawable;->img_summary_messages_amount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lcom/truecaller/yearincalling/model/Detail;-><init>(Ljava/lang/Integer;Landroid/text/Spanned;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget v0, v2, Le/a/u/m/a;->g:I

    if-lez v0, :cond_11

    .line 263
    iget-object v0, v1, Le/a/u/c;->a:Le/a/p5/c0;

    invoke-virtual {v1}, Le/a/u/c;->a()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 264
    iget v2, v2, Le/a/u/m/a;->g:I

    .line 265
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-interface {v0, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "resourceProvider.getStri\u2026agesAutomaticallyRemoved)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-static {v0}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    .line 267
    new-instance v0, Lcom/truecaller/yearincalling/model/Detail;

    sget v2, Lcom/truecaller/stats/R$drawable;->img_summary_inbox_cleaner:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x4

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/truecaller/yearincalling/model/Detail;-><init>(Ljava/lang/Integer;Landroid/text/Spanned;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_11
    invoke-static {v8}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v23

    .line 269
    new-instance v0, Lcom/truecaller/yearincalling/model/StatsUiModel;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 270
    iget-object v1, v1, Le/a/u/c;->a:Le/a/p5/c0;

    sget v2, Lcom/truecaller/stats/R$color;->stats_summary_share_button_color:I

    invoke-interface {v1, v2}, Le/a/p5/c0;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x3df

    move-object/from16 v17, v0

    .line 271
    invoke-direct/range {v17 .. v29}, Lcom/truecaller/yearincalling/model/StatsUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/text/Spanned;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/util/List;Ljava/lang/Integer;I)V

    aput-object v0, v5, v10

    .line 272
    invoke-static {v5}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p0

    .line 273
    iget-object v2, v1, Le/a/u/k$b;->g:Le/a/u/k;

    .line 274
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/u/f;

    if-eqz v2, :cond_12

    .line 275
    invoke-interface {v2}, Le/a/u/f;->p()V

    .line 276
    :cond_12
    iget-object v2, v1, Le/a/u/k$b;->g:Le/a/u/k;

    .line 277
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/u/f;

    if-eqz v2, :cond_13

    .line 278
    invoke-interface {v2, v0}, Le/a/u/f;->Gy(Ljava/util/List;)V

    .line 279
    :cond_13
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
