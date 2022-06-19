.class public final Le/a/a/r;
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
        "Ls1/o<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/Float;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.GetMessageTranslationContract$maybeTranslate$1"
    f = "GetMessageTranslationContract.kt"
    l = {
        0x3d,
        0x41
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/a/s;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/a/s;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/r;->h:Le/a/a/s;

    iput-object p2, p0, Le/a/a/r;->i:Ljava/lang/String;

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

    new-instance p1, Le/a/a/r;

    iget-object v0, p0, Le/a/a/r;->h:Le/a/a/s;

    iget-object v1, p0, Le/a/a/r;->i:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/r;-><init>(Le/a/a/s;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/r;

    iget-object v0, p0, Le/a/a/r;->h:Le/a/a/s;

    iget-object v1, p0, Le/a/a/r;->i:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/r;-><init>(Le/a/a/s;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/r;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    move-object/from16 v6, p0

    sget-object v7, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v0, v6, Le/a/a/r;->g:I

    const/4 v1, 0x2

    const-string v8, "<set-?>"

    const-string v9, "propertyMap"

    const-string v10, "actionInfo"

    const-string v11, "actionType"

    const-string v12, "context"

    const-string v13, "eventInfo"

    const-string v14, "eventCategory"

    const-string v15, "feature"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v0, v6, Le/a/a/r;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Le/a/a/r;->e:Ljava/lang/Object;

    check-cast v1, Le/a/a/g1/a;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v31, v8

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-object/from16 v32, v11

    move-object v9, v0

    move-object/from16 v0, p1

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v6, Le/a/a/r;->h:Le/a/a/s;

    .line 5
    iget-object v0, v0, Le/a/a/s;->b:Lo3/a;

    .line 6
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->C()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v2

    .line 7
    :cond_3
    iget-object v0, v6, Le/a/a/r;->h:Le/a/a/s;

    .line 8
    iget-object v0, v0, Le/a/a/s;->a:Lo3/a;

    .line 9
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g1/b;

    iget-object v4, v6, Le/a/a/r;->i:Ljava/lang/String;

    iput v3, v6, Le/a/a/r;->g:I

    invoke-interface {v0, v4, v6}, Le/a/a/g1/b;->g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    return-object v7

    .line 10
    :cond_4
    :goto_0
    move-object v5, v0

    check-cast v5, Le/a/a/g1/a;

    .line 11
    iget-object v4, v5, Le/a/a/g1/a;->a:Ljava/lang/String;

    const-string v0, "sv"

    const-string v3, "ar"

    .line 12
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13
    iget-object v0, v6, Le/a/a/r;->h:Le/a/a/s;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ""

    .line 15
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    invoke-static {v2, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "translation_smart_sms"

    .line 17
    invoke-static {v1, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v29, v9

    const-string v9, "message_translation"

    .line 18
    invoke-static {v9, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v30, v10

    const-string v10, "requested_translation"

    .line 19
    invoke-static {v10, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v31, v8

    .line 20
    new-instance v8, Le/a/c/r/d/b;

    move-object/from16 v32, v11

    .line 21
    new-instance v11, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1c0

    const/16 v28, 0x0

    move-object/from16 v16, v11

    move-object/from16 v17, v1

    move-object/from16 v18, v9

    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v22, v10

    invoke-direct/range {v16 .. v28}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 22
    invoke-static {v3}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 23
    invoke-direct {v8, v11, v1}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 24
    iget-object v0, v0, Le/a/a/s;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/e/c;

    invoke-interface {v0, v8}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 25
    iget-object v0, v6, Le/a/a/r;->h:Le/a/a/s;

    .line 26
    iget-object v0, v0, Le/a/a/s;->a:Lo3/a;

    .line 27
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g1/b;

    iget-object v3, v6, Le/a/a/r;->i:Ljava/lang/String;

    iput-object v5, v6, Le/a/a/r;->e:Ljava/lang/Object;

    iput-object v4, v6, Le/a/a/r;->f:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, v6, Le/a/a/r;->g:I

    const/4 v1, 0x0

    new-array v8, v1, [Ljava/lang/String;

    const-string v2, "en"

    move-object v1, v4

    move-object v9, v4

    move-object v4, v8

    move-object v8, v5

    move-object/from16 v5, p0

    .line 28
    invoke-interface/range {v0 .. v5}, Le/a/a/g1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_5

    return-object v7

    :cond_5
    move-object v1, v8

    .line 29
    :goto_1
    check-cast v0, Ljava/lang/String;

    .line 30
    iget-object v2, v6, Le/a/a/r;->h:Le/a/a/s;

    .line 31
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, ""

    .line 32
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 33
    invoke-static {v3, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, v32

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, v30

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, v29

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "translation_smart_sms"

    move-object/from16 v7, v31

    .line 34
    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "message_translation"

    .line 35
    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_6

    const-string v10, "translation_success"

    goto :goto_2

    :cond_6
    const-string v10, "translation_failure"

    .line 36
    :goto_2
    invoke-static {v10, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v7, Le/a/c/r/d/b;

    .line 38
    new-instance v11, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1c0

    const/16 v28, 0x0

    move-object/from16 v16, v11

    move-object/from16 v17, v5

    move-object/from16 v18, v8

    move-object/from16 v19, v10

    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v22, v3

    invoke-direct/range {v16 .. v28}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 39
    invoke-static {v4}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 40
    invoke-direct {v7, v11, v3}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 41
    iget-object v2, v2, Le/a/a/s;->c:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/e/c;

    invoke-interface {v2, v7}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 42
    new-instance v2, Ls1/o;

    .line 43
    iget v1, v1, Le/a/a/g1/a;->b:F

    .line 44
    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, v1}, Ljava/lang/Float;-><init>(F)V

    .line 45
    invoke-direct {v2, v0, v9, v3}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    return-object v2
.end method
