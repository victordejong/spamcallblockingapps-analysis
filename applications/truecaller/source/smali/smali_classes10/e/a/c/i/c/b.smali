.class public final Le/a/c/i/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/i/c/a;


# instance fields
.field public final a:Le/a/c/c/d/d0;

.field public final b:Le/a/c/c/d/h0;

.field public final c:Le/a/q2/a;

.field public final d:Le/a/c/r/h/b;

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c/i/d/a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/c/b0/a;

.field public final g:Le/a/c/w/o0/g;

.field public final h:Le/a/c/e/c;

.field public final i:Le/a/c/b/j;

.field public final j:Le/a/c/b/l;

.field public final k:Le/a/c/u/c;

.field public final l:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/c/d/d0;Le/a/c/c/d/h0;Le/a/q2/a;Le/a/c/r/h/b;Lo3/a;Le/a/c/b0/a;Le/a/c/w/o0/g;Le/a/c/e/c;Le/a/c/b/j;Le/a/c/b/l;Le/a/c/u/c;Ls1/w/f;)V
    .locals 1
    .param p12    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/c/d/d0;",
            "Le/a/c/c/d/h0;",
            "Le/a/q2/a;",
            "Le/a/c/r/h/b;",
            "Lo3/a<",
            "Le/a/c/i/d/a;",
            ">;",
            "Le/a/c/b0/a;",
            "Le/a/c/w/o0/g;",
            "Le/a/c/e/c;",
            "Le/a/c/b/j;",
            "Le/a/c/b/l;",
            "Le/a/c/u/c;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "pdoDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderResolutionDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsBinder"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enrichmentManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateProcessor"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsAnalyticsManager"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsVersionProvider"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reconcileLinkUsecase"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/i/c/b;->a:Le/a/c/c/d/d0;

    iput-object p2, p0, Le/a/c/i/c/b;->b:Le/a/c/c/d/h0;

    iput-object p3, p0, Le/a/c/i/c/b;->c:Le/a/q2/a;

    iput-object p4, p0, Le/a/c/i/c/b;->d:Le/a/c/r/h/b;

    iput-object p5, p0, Le/a/c/i/c/b;->e:Lo3/a;

    iput-object p6, p0, Le/a/c/i/c/b;->f:Le/a/c/b0/a;

    iput-object p7, p0, Le/a/c/i/c/b;->g:Le/a/c/w/o0/g;

    iput-object p8, p0, Le/a/c/i/c/b;->h:Le/a/c/e/c;

    iput-object p9, p0, Le/a/c/i/c/b;->i:Le/a/c/b/j;

    iput-object p10, p0, Le/a/c/i/c/b;->j:Le/a/c/b/l;

    iput-object p11, p0, Le/a/c/i/c/b;->k:Le/a/c/u/c;

    iput-object p12, p0, Le/a/c/i/c/b;->l:Ls1/w/f;

    return-void
.end method

.method public static final b(Le/a/c/i/c/b;Ljava/util/List;)V
    .locals 21

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "null cannot be cast to non-null type com.truecaller.insights.models.pdo.SmsDetailedResponseType.SmsDetailedResponse"

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/c/c/c$a;

    .line 4
    iget-object v5, v5, Le/a/c/c/c$a;->a:Le/a/c/r/h/f$b;

    .line 5
    iget-object v6, v5, Le/a/c/r/h/f$b;->a:Le/a/c/h/m/c;

    .line 6
    iget-boolean v6, v6, Le/a/c/h/m/c;->j:Z

    if-eqz v6, :cond_1

    .line 7
    iget-object v5, v5, Le/a/c/r/h/f$b;->d:Le/a/c/r/h/i;

    .line 8
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Le/a/c/r/h/i$b;

    .line 9
    iget-object v3, v5, Le/a/c/r/h/i$b;->a:Le/q/f/a/f/j;

    .line 10
    iget-object v3, v3, Le/q/f/a/f/j;->b:Ljava/lang/String;

    const-string v5, "GRM_VOID"

    .line 11
    invoke-static {v3, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 14
    check-cast v2, Le/a/c/c/c$a;

    const-string v10, ""

    .line 15
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "feature"

    .line 16
    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "eventCategory"

    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "eventInfo"

    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "actionType"

    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "actionInfo"

    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "propertyMap"

    invoke-static {v15, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "translation_smart_sms"

    const-string v4, "<set-?>"

    .line 17
    invoke-static {v5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "translated_parsing"

    .line 18
    invoke-static {v6, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "translated_parsing_success"

    .line 19
    invoke-static {v7, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v2, v2, Le/a/c/c/c$a;->a:Le/a/c/r/h/f$b;

    .line 21
    iget-object v2, v2, Le/a/c/r/h/f$b;->d:Le/a/c/r/h/i;

    .line 22
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Le/a/c/r/h/i$b;

    .line 23
    iget-object v2, v2, Le/a/c/r/h/i$b;->a:Le/q/f/a/f/j;

    .line 24
    iget-object v8, v2, Le/q/f/a/f/j;->b:Ljava/lang/String;

    const-string v2, "(it.parseResponse.detail\u2026sponse).response.category"

    .line 25
    invoke-static {v8, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {v8, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v2, Le/a/c/r/d/b;

    .line 28
    new-instance v14, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1c0

    const/16 v18, 0x0

    move-object v4, v14

    move-object v9, v10

    move-object/from16 v19, v14

    move/from16 v14, v16

    move-object/from16 v20, v15

    move/from16 v15, v17

    move-object/from16 v16, v18

    invoke-direct/range {v4 .. v16}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 29
    invoke-static/range {v20 .. v20}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    move-object/from16 v5, v19

    .line 30
    invoke-direct {v2, v5, v4}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    move-object/from16 v4, p0

    .line 31
    iget-object v5, v4, Le/a/c/i/c/b;->h:Le/a/c/e/c;

    invoke-interface {v5, v2}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/c/c$a;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/i/c/b$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/i/c/b$a;

    iget v1, v0, Le/a/c/i/c/b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/c/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/c/b$a;

    invoke-direct {v0, p0, p2}, Le/a/c/i/c/b$a;-><init>(Le/a/c/i/c/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/i/c/b$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/c/b$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/c/i/c/b;->l:Ls1/w/f;

    new-instance v2, Le/a/c/i/c/b$b;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Le/a/c/i/c/b$b;-><init>(Le/a/c/i/c/b;Ljava/util/List;Ls1/w/d;)V

    iput v3, v0, Le/a/c/i/c/b$a;->e:I

    invoke-static {p2, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final c(Ljava/util/List;Ljava/util/Map;ILs1/w/d;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/c/c$a;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;I",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Le/a/c/i/c/b$c;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/i/c/b$c;

    iget v3, v2, Le/a/c/i/c/b$c;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/i/c/b$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/i/c/b$c;

    invoke-direct {v2, v0, v1}, Le/a/c/i/c/b$c;-><init>(Le/a/c/i/c/b;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/c/i/c/b$c;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/c/i/c/b$c;->e:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v12, 0x3

    if-eqz v4, :cond_6

    if-eq v4, v5, :cond_5

    if-eq v4, v6, :cond_4

    if-eq v4, v12, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v7, :cond_1

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget v4, v2, Le/a/c/i/c/b$c;->q:I

    iget-object v6, v2, Le/a/c/i/c/b$c;->i:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v8, v2, Le/a/c/i/c/b$c;->h:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v2, Le/a/c/i/c/b$c;->g:Ljava/lang/Object;

    check-cast v9, Le/a/c/i/c/b;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v0, v5

    const/4 v5, 0x0

    goto/16 :goto_10

    :cond_3
    iget v4, v2, Le/a/c/i/c/b$c;->q:I

    iget-object v13, v2, Le/a/c/i/c/b$c;->n:Ljava/lang/Object;

    check-cast v13, Ljava/util/Collection;

    iget-object v14, v2, Le/a/c/i/c/b$c;->m:Ljava/lang/Object;

    check-cast v14, Le/a/c/c/c$a;

    iget-object v15, v2, Le/a/c/i/c/b$c;->l:Ljava/lang/Object;

    check-cast v15, Ljava/util/Iterator;

    iget-object v7, v2, Le/a/c/i/c/b$c;->k:Ljava/lang/Object;

    check-cast v7, Ljava/util/Collection;

    iget-object v11, v2, Le/a/c/i/c/b$c;->j:Ljava/lang/Object;

    check-cast v11, Le/a/c/b/n;

    iget-object v9, v2, Le/a/c/i/c/b$c;->i:Ljava/lang/Object;

    check-cast v9, Ljava/util/Map;

    iget-object v10, v2, Le/a/c/i/c/b$c;->h:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v8, v2, Le/a/c/i/c/b$c;->g:Ljava/lang/Object;

    check-cast v8, Le/a/c/i/c/b;

    :try_start_0
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v3

    move-object v12, v15

    const/4 v3, 0x0

    move-object v15, v9

    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_4
    iget v4, v2, Le/a/c/i/c/b$c;->q:I

    iget-object v7, v2, Le/a/c/i/c/b$c;->p:Ljava/lang/Object;

    check-cast v7, Ljava/util/Collection;

    iget-object v8, v2, Le/a/c/i/c/b$c;->o:Ljava/lang/Object;

    check-cast v8, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    iget-object v9, v2, Le/a/c/i/c/b$c;->n:Ljava/lang/Object;

    check-cast v9, Le/a/c/h/m/c;

    iget-object v10, v2, Le/a/c/i/c/b$c;->m:Ljava/lang/Object;

    check-cast v10, Le/a/c/c/c$a;

    iget-object v11, v2, Le/a/c/i/c/b$c;->l:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v13, v2, Le/a/c/i/c/b$c;->k:Ljava/lang/Object;

    check-cast v13, Ljava/util/Collection;

    iget-object v14, v2, Le/a/c/i/c/b$c;->j:Ljava/lang/Object;

    check-cast v14, Le/a/c/b/n;

    iget-object v15, v2, Le/a/c/i/c/b$c;->i:Ljava/lang/Object;

    check-cast v15, Ljava/util/Map;

    iget-object v12, v2, Le/a/c/i/c/b$c;->h:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v6, v2, Le/a/c/i/c/b$c;->g:Ljava/lang/Object;

    check-cast v6, Le/a/c/i/c/b;

    :try_start_1
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_a

    move-object v5, v8

    move-object v8, v6

    move-object v6, v10

    move-object v10, v12

    move-object v12, v11

    move-object v11, v14

    const/4 v14, 0x2

    move-object/from16 v20, v13

    move-object v13, v7

    move-object/from16 v7, v20

    goto/16 :goto_4

    :cond_5
    iget v4, v2, Le/a/c/i/c/b$c;->q:I

    iget-object v6, v2, Le/a/c/i/c/b$c;->i:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v2, Le/a/c/i/c/b$c;->h:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, v2, Le/a/c/i/c/b$c;->g:Ljava/lang/Object;

    check-cast v8, Le/a/c/i/c/b;

    :try_start_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v20, v7

    move v7, v4

    move-object/from16 v4, v20

    goto :goto_1

    :catch_0
    move-object v9, v6

    move-object v10, v7

    :catch_1
    move-object v6, v9

    const/4 v0, 0x3

    move-object v9, v8

    move-object v8, v10

    goto/16 :goto_e

    :cond_6
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_3
    iget-object v1, v0, Le/a/c/i/c/b;->j:Le/a/c/b/l;

    iput-object v0, v2, Le/a/c/i/c/b$c;->g:Ljava/lang/Object;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_b

    move-object/from16 v4, p1

    :try_start_4
    iput-object v4, v2, Le/a/c/i/c/b$c;->h:Ljava/lang/Object;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_c

    move-object/from16 v6, p2

    :try_start_5
    iput-object v6, v2, Le/a/c/i/c/b$c;->i:Ljava/lang/Object;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_d

    move/from16 v7, p3

    :try_start_6
    iput v7, v2, Le/a/c/i/c/b$c;->q:I

    iput v5, v2, Le/a/c/i/c/b$c;->e:I

    invoke-interface {v1, v2}, Le/a/c/b/l;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6 .. :try_end_6} :catch_e

    if-ne v1, v3, :cond_7

    return-object v3

    :cond_7
    move-object v8, v0

    .line 5
    :goto_1
    :try_start_7
    check-cast v1, Le/a/c/b/n;

    .line 6
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v4, v10}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 8
    check-cast v11, Le/a/c/c/c$a;

    .line 9
    iget-object v12, v11, Le/a/c/c/c$a;->a:Le/a/c/r/h/f$b;

    .line 10
    iget-object v12, v12, Le/a/c/r/h/f$b;->a:Le/a/c/h/m/c;

    .line 11
    iget-wide v13, v12, Le/a/c/h/m/c;->a:J

    .line 12
    new-instance v15, Ljava/lang/Long;

    invoke-direct {v15, v13, v14}, Ljava/lang/Long;-><init>(J)V

    .line 13
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    if-eqz v13, :cond_8

    .line 14
    iget-wide v14, v12, Le/a/c/h/m/c;->e:J

    .line 15
    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v14, v15}, Ljava/lang/Long;-><init>(J)V

    .line 16
    invoke-static {v12}, Le/a/m0/a1$k;->A0(Le/a/c/h/m/c;)Z

    move-result v14

    invoke-static {v13, v5, v14}, Le/a/c/p/a;->W2(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/lang/Long;Z)Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    move-result-object v5

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    .line 17
    :goto_3
    iget v13, v12, Le/a/c/h/m/c;->h:I

    .line 18
    iput-object v8, v2, Le/a/c/i/c/b$c;->g:Ljava/lang/Object;

    iput-object v4, v2, Le/a/c/i/c/b$c;->h:Ljava/lang/Object;

    iput-object v6, v2, Le/a/c/i/c/b$c;->i:Ljava/lang/Object;

    iput-object v1, v2, Le/a/c/i/c/b$c;->j:Ljava/lang/Object;

    iput-object v9, v2, Le/a/c/i/c/b$c;->k:Ljava/lang/Object;

    iput-object v10, v2, Le/a/c/i/c/b$c;->l:Ljava/lang/Object;

    iput-object v11, v2, Le/a/c/i/c/b$c;->m:Ljava/lang/Object;

    iput-object v12, v2, Le/a/c/i/c/b$c;->n:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/i/c/b$c;->o:Ljava/lang/Object;

    iput-object v9, v2, Le/a/c/i/c/b$c;->p:Ljava/lang/Object;

    iput v7, v2, Le/a/c/i/c/b$c;->q:I

    const/4 v14, 0x2

    iput v14, v2, Le/a/c/i/c/b$c;->e:I

    invoke-virtual {v8, v13, v5, v2}, Le/a/c/i/c/b;->g(ILcom/truecaller/insights/models/pdo/ExtendedPdo;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v13
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_7 .. :try_end_7} :catch_f

    if-ne v13, v3, :cond_9

    return-object v3

    :cond_9
    move-object v15, v6

    move-object v6, v11

    move-object v11, v1

    move-object v1, v13

    move-object v13, v9

    move-object v9, v12

    move-object v12, v10

    move-object v10, v4

    move v4, v7

    move-object v7, v13

    :goto_4
    :try_start_8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 19
    iget-object v1, v8, Le/a/c/i/c/b;->f:Le/a/c/b0/a;
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_8 .. :try_end_8} :catch_8

    .line 20
    :try_start_9
    iget-object v14, v9, Le/a/c/h/m/c;->c:Ljava/lang/String;

    .line 21
    iget v9, v9, Le/a/c/h/m/c;->h:I
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_9 .. :try_end_9} :catch_5

    const/4 v0, 0x3

    if-eq v9, v0, :cond_b

    const/4 v0, 0x4

    if-eq v9, v0, :cond_a

    .line 22
    :try_start_a
    new-instance v0, Le/a/c/g/a$a;
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_a .. :try_end_a} :catch_2

    move-object/from16 v17, v1

    move-object/from16 v16, v3

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v9, 0x0

    :try_start_b
    invoke-direct {v0, v9, v3, v1}, Le/a/c/g/a$a;-><init>(FII)V

    goto :goto_5

    :catch_2
    move-object/from16 v16, v3

    const/4 v1, 0x3

    goto/16 :goto_7

    :cond_a
    move-object/from16 v17, v1

    move-object/from16 v16, v3

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 23
    new-instance v0, Le/a/c/g/a$b;

    invoke-direct {v0, v9, v3, v1}, Le/a/c/g/a$b;-><init>(FII)V

    goto :goto_5

    :cond_b
    move-object/from16 v17, v1

    move-object/from16 v16, v3

    const/4 v3, 0x0

    const/4 v9, 0x0

    move v1, v0

    .line 24
    new-instance v0, Le/a/c/g/a$b;

    invoke-direct {v0, v9, v3, v1}, Le/a/c/g/a$b;-><init>(FII)V

    .line 25
    :goto_5
    iput-object v8, v2, Le/a/c/i/c/b$c;->g:Ljava/lang/Object;

    iput-object v10, v2, Le/a/c/i/c/b$c;->h:Ljava/lang/Object;

    iput-object v15, v2, Le/a/c/i/c/b$c;->i:Ljava/lang/Object;

    iput-object v11, v2, Le/a/c/i/c/b$c;->j:Ljava/lang/Object;

    iput-object v7, v2, Le/a/c/i/c/b$c;->k:Ljava/lang/Object;

    iput-object v12, v2, Le/a/c/i/c/b$c;->l:Ljava/lang/Object;

    iput-object v6, v2, Le/a/c/i/c/b$c;->m:Ljava/lang/Object;

    iput-object v13, v2, Le/a/c/i/c/b$c;->n:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v2, Le/a/c/i/c/b$c;->o:Ljava/lang/Object;

    iput-object v1, v2, Le/a/c/i/c/b$c;->p:Ljava/lang/Object;

    iput v4, v2, Le/a/c/i/c/b$c;->q:I
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_b .. :try_end_b} :catch_4

    const/4 v1, 0x3

    :try_start_c
    iput v1, v2, Le/a/c/i/c/b$c;->e:I
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_c .. :try_end_c} :catch_3

    move-object/from16 v1, v17

    :try_start_d
    invoke-virtual {v1, v14, v5, v0, v2}, Le/a/c/b0/a;->a(Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ExtendedPdo;Le/a/c/g/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_d .. :try_end_d} :catch_4

    move-object/from16 v0, v16

    if-ne v1, v0, :cond_c

    return-object v0

    :cond_c
    move-object v14, v6

    :goto_6
    :try_start_e
    check-cast v1, Le/a/c/b0/c;
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_e .. :try_end_e} :catch_9

    move-object/from16 v16, v7

    move-object v5, v10

    move-object/from16 v17, v12

    move-object v6, v14

    move-object v7, v15

    move-object v15, v8

    move-object v14, v13

    move v8, v4

    move-object v4, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_8

    :catch_3
    move-object/from16 v0, v16

    move-object v3, v0

    move-object v9, v8

    move-object v8, v10

    move-object v6, v15

    const/4 v0, 0x3

    goto/16 :goto_e

    :catch_4
    :goto_7
    move-object/from16 v0, v16

    goto/16 :goto_b

    :catch_5
    move-object v0, v3

    goto/16 :goto_b

    :cond_d
    move-object v0, v3

    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object/from16 v16, v7

    move-object v5, v10

    move-object v1, v11

    move-object/from16 v17, v12

    move-object v14, v13

    move-object v7, v15

    move-object v15, v8

    move v8, v4

    move-object v4, v0

    const/4 v0, 0x0

    .line 26
    :goto_8
    :try_start_f
    iget-object v10, v6, Le/a/c/c/c$a;->a:Le/a/c/r/h/f$b;

    .line 27
    iget-object v10, v10, Le/a/c/r/h/f$b;->e:Le/a/c/g/a;

    if-eqz v10, :cond_e

    .line 28
    iget v10, v10, Le/a/c/g/a;->a:F

    .line 29
    new-instance v11, Ljava/lang/Float;

    invoke-direct {v11, v10}, Ljava/lang/Float;-><init>(F)V

    .line 30
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v10

    move/from16 v18, v10

    goto :goto_9

    :cond_e
    move/from16 v18, v9

    .line 31
    :goto_9
    iget-object v10, v6, Le/a/c/c/c$a;->a:Le/a/c/r/h/f$b;

    .line 32
    iget-object v10, v10, Le/a/c/r/h/f$b;->e:Le/a/c/g/a;

    if-eqz v10, :cond_f

    .line 33
    iget v10, v10, Le/a/c/g/a;->b:I

    .line 34
    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 35
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move/from16 v19, v10

    goto :goto_a

    :cond_f
    move/from16 v19, v3

    .line 36
    :goto_a
    iget-object v10, v6, Le/a/c/c/c$a;->a:Le/a/c/r/h/f$b;

    .line 37
    iget-object v11, v10, Le/a/c/r/h/f$b;->f:Le/a/l5/a/b2$b;

    .line 38
    iget v10, v1, Le/a/c/b/n;->b:I

    .line 39
    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v10}, Ljava/lang/Integer;-><init>(I)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_f .. :try_end_f} :catch_6

    move-object v10, v15

    move-object v12, v0

    move-object v3, v14

    move/from16 v14, v18

    move-object v9, v15

    move/from16 v15, v19

    .line 40
    :try_start_10
    invoke-virtual/range {v10 .. v15}, Le/a/c/i/c/b;->f(Le/a/l5/a/b2$b;Le/a/c/b0/c;Ljava/lang/Integer;FI)V

    .line 41
    iget-object v10, v9, Le/a/c/i/c/b;->d:Le/a/c/r/h/b;

    .line 42
    iget-object v6, v6, Le/a/c/c/c$a;->a:Le/a/c/r/h/f$b;

    .line 43
    invoke-interface {v10, v6, v0}, Le/a/c/r/h/b;->a(Le/a/c/r/h/f$b;Le/a/c/b0/c;)Lcom/truecaller/insights/models/pdo/SmsBackup;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_10 .. :try_end_10} :catch_7

    move-object/from16 v0, p0

    move-object v3, v4

    move-object v4, v5

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    const/4 v5, 0x1

    goto/16 :goto_2

    :catch_6
    move-object v9, v15

    :catch_7
    move-object v3, v4

    move-object v12, v5

    move-object v15, v7

    move v4, v8

    move-object v6, v9

    goto :goto_c

    :catch_8
    move-object v0, v3

    :catch_9
    :goto_b
    move-object v3, v0

    move-object v6, v8

    move-object v12, v10

    :catch_a
    :goto_c
    move v7, v4

    move-object v8, v6

    move-object v4, v12

    move-object v6, v15

    goto :goto_d

    .line 44
    :cond_10
    :try_start_11
    check-cast v9, Ljava/util/List;

    .line 45
    iget-object v0, v8, Le/a/c/i/c/b;->a:Le/a/c/c/d/d0;

    invoke-virtual {v0, v9}, Le/a/c/c/d/d0;->Q(Ljava/util/List;)V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_11 .. :try_end_11} :catch_f

    goto :goto_11

    :catch_b
    move-object/from16 v4, p1

    :catch_c
    move-object/from16 v6, p2

    :catch_d
    move/from16 v7, p3

    :catch_e
    move-object/from16 v8, p0

    :catch_f
    :goto_d
    move-object v9, v8

    const/4 v0, 0x3

    move-object v8, v4

    move v4, v7

    :goto_e
    if-gt v4, v0, :cond_13

    .line 46
    sget-object v0, Le/a/c/c0/q;->b:Le/a/c/c0/q;

    const-wide/16 v0, 0x64

    if-nez v4, :cond_11

    goto :goto_f

    :cond_11
    mul-int v5, v4, v4

    int-to-long v10, v5

    mul-long/2addr v0, v10

    :goto_f
    iput-object v9, v2, Le/a/c/i/c/b$c;->g:Ljava/lang/Object;

    iput-object v8, v2, Le/a/c/i/c/b$c;->h:Ljava/lang/Object;

    iput-object v6, v2, Le/a/c/i/c/b$c;->i:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v2, Le/a/c/i/c/b$c;->j:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/i/c/b$c;->k:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/i/c/b$c;->l:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/i/c/b$c;->m:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/i/c/b$c;->n:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/i/c/b$c;->o:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/i/c/b$c;->p:Ljava/lang/Object;

    iput v4, v2, Le/a/c/i/c/b$c;->q:I

    const/4 v7, 0x4

    iput v7, v2, Le/a/c/i/c/b$c;->e:I

    invoke-static {v0, v1, v2}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_12

    return-object v3

    :cond_12
    const/4 v0, 0x1

    :goto_10
    add-int/2addr v4, v0

    .line 47
    iput-object v5, v2, Le/a/c/i/c/b$c;->g:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/i/c/b$c;->h:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/i/c/b$c;->i:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v2, Le/a/c/i/c/b$c;->e:I

    invoke-virtual {v9, v8, v6, v4, v2}, Le/a/c/i/c/b;->c(Ljava/util/List;Ljava/util/Map;ILs1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_14

    return-object v3

    :cond_13
    const/4 v5, 0x0

    .line 48
    sget-object v0, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions;

    sget-object v2, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->INSIGHTS_DB_ERROR:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    invoke-direct {v1, v2}, Lcom/truecaller/log/UnmutedException$InsightsExceptions;-><init>(Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;)V

    .line 49
    invoke-virtual {v0, v1, v5}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 50
    :cond_14
    :goto_11
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method

.method public final d(Ljava/util/List;ILs1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;I",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/c/i/c/b$d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/c/i/c/b$d;

    iget v1, v0, Le/a/c/i/c/b$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/c/b$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/c/b$d;

    invoke-direct {v0, p0, p3}, Le/a/c/i/c/b$d;-><init>(Le/a/c/i/c/b;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/c/i/c/b$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/c/b$d;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v5, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget p1, v0, Le/a/c/i/c/b$d;->i:I

    iget-object p2, v0, Le/a/c/i/c/b$d;->h:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    iget-object v2, v0, Le/a/c/i/c/b$d;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/i/c/b;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget p2, v0, Le/a/c/i/c/b$d;->i:I

    iget-object p1, v0, Le/a/c/i/c/b$d;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v2, v0, Le/a/c/i/c/b$d;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/i/c/b;

    :try_start_0
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_4
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p3, p0, Le/a/c/i/c/b;->e:Lo3/a;

    invoke-interface {p3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/c/i/d/a;

    iput-object p0, v0, Le/a/c/i/c/b$d;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/i/c/b$d;->h:Ljava/lang/Object;

    iput p2, v0, Le/a/c/i/c/b$d;->i:I

    iput v6, v0, Le/a/c/i/c/b$d;->e:I

    invoke-interface {p3, p1, v0}, Le/a/c/i/d/a;->e(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 5
    :goto_1
    :try_start_2
    iget-object p3, v2, Le/a/c/i/c/b;->a:Le/a/c/c/d/d0;

    invoke-virtual {p3, p1}, Le/a/c/c/d/d0;->U(Ljava/util/List;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_0
    move-object v2, p0

    :catch_1
    if-gt p2, v5, :cond_8

    .line 6
    sget-object p3, Le/a/c/c0/q;->b:Le/a/c/c0/q;

    const-wide/16 v7, 0x64

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    mul-int p3, p2, p2

    int-to-long v9, p3

    mul-long/2addr v7, v9

    :goto_2
    iput-object v2, v0, Le/a/c/i/c/b$d;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/i/c/b$d;->h:Ljava/lang/Object;

    iput p2, v0, Le/a/c/i/c/b$d;->i:I

    iput v3, v0, Le/a/c/i/c/b$d;->e:I

    invoke-static {v7, v8, v0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    return-object v1

    :cond_7
    move v11, p2

    move-object p2, p1

    move p1, v11

    :goto_3
    add-int/2addr p1, v6

    .line 7
    iput-object v4, v0, Le/a/c/i/c/b$d;->g:Ljava/lang/Object;

    iput-object v4, v0, Le/a/c/i/c/b$d;->h:Ljava/lang/Object;

    iput v5, v0, Le/a/c/i/c/b$d;->e:I

    invoke-virtual {v2, p2, p1, v0}, Le/a/c/i/c/b;->d(Ljava/util/List;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    .line 8
    :cond_8
    sget-object p1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance p2, Lcom/truecaller/log/UnmutedException$InsightsExceptions;

    sget-object p3, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->INSIGHTS_DB_ERROR:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    invoke-direct {p2, p3}, Lcom/truecaller/log/UnmutedException$InsightsExceptions;-><init>(Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;)V

    .line 9
    invoke-virtual {p1, p2, v4}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 10
    :cond_9
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final e(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/c/c$a;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/i/c/b$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/i/c/b$e;

    iget v1, v0, Le/a/c/i/c/b$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/c/b$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/c/b$e;

    invoke-direct {v0, p0, p2}, Le/a/c/i/c/b$e;-><init>(Le/a/c/i/c/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/i/c/b$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/c/b$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Le/a/c/c/c$a;

    .line 7
    new-instance v12, Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;

    .line 8
    iget-object v2, v2, Le/a/c/c/c$a;->a:Le/a/c/r/h/f$b;

    .line 9
    iget-object v5, v2, Le/a/c/r/h/f$b;->c:Ljava/lang/String;

    .line 10
    iget-object v2, v2, Le/a/c/r/h/f$b;->a:Le/a/c/h/m/c;

    .line 11
    iget-object v6, v2, Le/a/c/h/m/c;->k:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1c

    const/4 v11, 0x0

    move-object v4, v12

    .line 12
    invoke-direct/range {v4 .. v11}, Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ILs1/z/c/f;)V

    invoke-virtual {p2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_3
    iget-object p1, p0, Le/a/c/i/c/b;->b:Le/a/c/c/d/h0;

    iput v3, v0, Le/a/c/i/c/b$e;->e:I

    invoke-virtual {p1, p2, v0}, Le/a/c/c/d/h0;->e(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_4

    return-object v1

    .line 14
    :catchall_0
    sget-object p1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance p2, Lcom/truecaller/log/UnmutedException$InsightsExceptions;

    sget-object v0, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->INSIGHTS_DB_ERROR:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    invoke-direct {p2, v0}, Lcom/truecaller/log/UnmutedException$InsightsExceptions;-><init>(Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;)V

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, p2, v0}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 16
    :cond_4
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final f(Le/a/l5/a/b2$b;Le/a/c/b0/c;Ljava/lang/Integer;FI)V
    .locals 5

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Le/a/c/i/c/b;->c:Le/a/q2/a;

    if-eqz p2, :cond_0

    .line 2
    iget-object v1, p2, Le/a/c/b0/c;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "not_run"

    .line 3
    :goto_0
    invoke-virtual {p1, v1}, Le/a/l5/a/b2$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/b2$b;

    .line 4
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const-string p3, "0"

    :goto_1
    invoke-virtual {p1, p3}, Le/a/l5/a/b2$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/b2$b;

    .line 5
    iget-object p3, p1, Le/a/l5/a/b2$b;->g:Ljava/util/Map;

    const-string v1, "properties"

    .line 6
    invoke-static {p3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ls1/k;

    .line 7
    sget-object v2, Lcom/truecaller/insights/models/pdo/ClassifierType;->Companion:Lcom/truecaller/insights/models/pdo/ClassifierType$a;

    if-eqz p2, :cond_2

    .line 8
    iget-object p2, p2, Le/a/c/b0/c;->b:Lcom/truecaller/insights/models/pdo/ClassifierType;

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    .line 9
    :goto_2
    invoke-virtual {v2, p2}, Lcom/truecaller/insights/models/pdo/ClassifierType$a;->a(Lcom/truecaller/insights/models/pdo/ClassifierType;)Ljava/lang/String;

    move-result-object p2

    .line 10
    new-instance v2, Ls1/k;

    const-string v3, "updatesModelType"

    invoke-direct {v2, v3, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x0

    aput-object v2, v1, p2

    .line 11
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    aput-object p4, v4, p2

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string p4, "%.3f"

    invoke-static {v2, p4, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "java.lang.String.format(locale, format, *args)"

    invoke-static {p2, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance p4, Ls1/k;

    const-string v2, "categorizer_confidence_score"

    invoke-direct {p4, v2, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p4, v1, v3

    const/4 p2, 0x2

    .line 13
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    .line 14
    new-instance p5, Ls1/k;

    const-string v2, "categorizer_no_of_words"

    invoke-direct {p5, v2, p4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p5, v1, p2

    .line 15
    invoke-static {v1}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object p2

    .line 16
    invoke-static {p3, p2}, Ls1/u/i;->o0(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/a/l5/a/b2$b;->b(Ljava/util/Map;)Le/a/l5/a/b2$b;

    .line 17
    invoke-virtual {p1}, Le/a/l5/a/b2$b;->a()Le/a/l5/a/b2;

    move-result-object p1

    const-string p2, "logData.apply {\n        \u2026  )\n            }.build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {v0, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    :cond_3
    return-void
.end method

.method public final g(ILcom/truecaller/insights/models/pdo/ExtendedPdo;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/c/i/c/b$f;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/c/i/c/b$f;

    iget v1, v0, Le/a/c/i/c/b$f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/c/b$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/c/b$f;

    invoke-direct {v0, p0, p3}, Le/a/c/i/c/b$f;-><init>(Le/a/c/i/c/b;Ls1/w/d;)V

    :goto_0
    move-object v4, v0

    iget-object p3, v4, Le/a/c/i/c/b$f;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v4, Le/a/c/i/c/b$f;->e:I

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v7, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_4

    if-eqz p2, :cond_5

    .line 4
    iget-object v1, p0, Le/a/c/i/c/b;->g:Le/a/c/w/o0/g;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    iput v7, v4, Le/a/c/i/c/b$f;->e:I

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Le/a/c/p/a;->F(Le/a/c/w/o0/g;Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    .line 5
    :cond_5
    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
