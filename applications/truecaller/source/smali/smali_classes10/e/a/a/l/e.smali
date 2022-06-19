.class public final Le/a/a/l/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/b0/q/z;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c1/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/e4/p;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ls1/w/f;

.field public final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/k/t;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/q2/a;

.field public final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/g1/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ls1/w/f;Ljavax/inject/Provider;Le/a/q2/a;Ljavax/inject/Provider;)V
    .locals 1
    .param p5    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Le/a/b0/q/z;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/a/c1/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/e4/p;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/a/g/w;",
            ">;",
            "Ls1/w/f;",
            "Ljavax/inject/Provider<",
            "Le/a/a/k/t;",
            ">;",
            "Le/a/q2/a;",
            "Ljavax/inject/Provider<",
            "Le/a/a/g1/b;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "phoneNumberHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draftSender"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMessageStorage"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transportManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translator"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/l/e;->a:Ljavax/inject/Provider;

    iput-object p2, p0, Le/a/a/l/e;->b:Ljavax/inject/Provider;

    iput-object p3, p0, Le/a/a/l/e;->c:Ljavax/inject/Provider;

    iput-object p4, p0, Le/a/a/l/e;->d:Ljavax/inject/Provider;

    iput-object p5, p0, Le/a/a/l/e;->e:Ls1/w/f;

    iput-object p6, p0, Le/a/a/l/e;->f:Ljavax/inject/Provider;

    iput-object p7, p0, Le/a/a/l/e;->g:Le/a/q2/a;

    iput-object p8, p0, Le/a/a/l/e;->h:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ls1/w/d<",
            "-",
            "Ls1/o<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v2, Ls1/z/c/c0;

    invoke-direct {v2}, Ls1/z/c/c0;-><init>()V

    iget-object v0, p0, Le/a/a/l/e;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/q/z;

    iget-object v1, p0, Le/a/a/l/e;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/q/z;

    invoke-interface {v1}, Le/a/b0/q/z;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/truecaller/data/entity/messaging/Participant;->a(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p2

    const-string v0, "Participant.buildFromAdd\u2026t().getDefaultSimToken())"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Le/a/a/l/e;->e:Ls1/w/f;

    new-instance v8, Le/a/a/l/e$a;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Le/a/a/l/e$a;-><init>(Le/a/a/l/e;Ls1/z/c/c0;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/w/d;)V

    invoke-static {p2, v8, p6}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Le/a/a/l/e$b;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/a/l/e$b;

    iget v3, v2, Le/a/a/l/e$b;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/a/l/e$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/a/l/e$b;

    invoke-direct {v2, v0, v1}, Le/a/a/l/e$b;-><init>(Le/a/a/l/e;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/a/l/e$b;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/a/l/e$b;->e:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v2, Le/a/a/l/e$b;->j:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Le/a/a/l/e$b;->i:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Le/a/a/l/e$b;->h:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v2, v2, Le/a/a/l/e$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/a/l/e;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v9, v3

    move-object/from16 v22, v4

    move-object/from16 v16, v5

    goto :goto_4

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const/4 v1, 0x2

    move/from16 v4, p2

    if-ne v4, v1, :cond_3

    const-string v1, "im"

    goto :goto_1

    :cond_3
    const-string v1, "sms"

    .line 4
    :goto_1
    sget-object v4, Lcom/truecaller/acs/analytics/AnalyticsContext;->PACS:Lcom/truecaller/acs/analytics/AnalyticsContext;

    invoke-virtual {v4}, Lcom/truecaller/acs/analytics/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, p3

    invoke-static {v6, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "popup"

    goto :goto_2

    :cond_4
    const-string v4, "fullScreen"

    :goto_2
    if-eqz p4, :cond_5

    .line 5
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    const-string v6, "custom"

    .line 6
    :goto_3
    iget-object v7, v0, Le/a/a/l/e;->h:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/a/g1/b;

    iput-object v0, v2, Le/a/a/l/e$b;->g:Ljava/lang/Object;

    iput-object v1, v2, Le/a/a/l/e$b;->h:Ljava/lang/Object;

    iput-object v4, v2, Le/a/a/l/e$b;->i:Ljava/lang/Object;

    iput-object v6, v2, Le/a/a/l/e$b;->j:Ljava/lang/Object;

    iput v5, v2, Le/a/a/l/e$b;->e:I

    move-object/from16 v5, p1

    invoke-interface {v7, v5, v2}, Le/a/a/g1/b;->g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_6

    return-object v3

    :cond_6
    move-object/from16 v16, v1

    move-object v1, v2

    move-object/from16 v22, v4

    move-object v9, v6

    move-object v2, v0

    .line 7
    :goto_4
    check-cast v1, Le/a/a/g1/a;

    .line 8
    iget-object v3, v2, Le/a/a/l/e;->g:Le/a/q2/a;

    .line 9
    iget v4, v1, Le/a/a/g1/a;->b:F

    .line 10
    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v4}, Ljava/lang/Float;-><init>(F)V

    .line 11
    invoke-static {v5}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 12
    iget-object v5, v1, Le/a/a/g1/a;->a:Ljava/lang/String;

    .line 13
    iget-object v6, v1, Le/a/a/g1/a;->c:Ljava/lang/String;

    .line 14
    invoke-static {v3, v4, v5, v6}, Le/a/c/p/a;->N1(Le/a/q2/a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "MessageReplyFromAcs"

    const-string v3, "type"

    .line 15
    invoke-static {v8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v15, "messageType"

    const-string v24, "name"

    const-string v26, "value"

    const-string v21, "acsStyle"

    move-object v10, v15

    move-object/from16 v11, v24

    move-object/from16 v12, v16

    move-object/from16 v13, v26

    move-object v14, v7

    move-object/from16 v17, v21

    move-object/from16 v18, v24

    move-object/from16 v19, v22

    move-object/from16 v20, v26

    .line 17
    invoke-static/range {v10 .. v22}, Le/d/c/a/a;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v31

    const-string v10, "answerIndex"

    move-object v3, v10

    move-object/from16 v4, v24

    move-object v5, v9

    move-object/from16 v6, v26

    move-object v11, v7

    move-object v12, v8

    move-object v8, v10

    .line 18
    invoke-static/range {v3 .. v9}, Le/d/c/a/a;->K0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v28, "customReplyLang"

    .line 19
    iget-object v1, v1, Le/a/a/g1/a;->a:Ljava/lang/String;

    move-object/from16 v23, v28

    move-object/from16 v25, v1

    move-object/from16 v27, v11

    move-object/from16 v29, v1

    move-object/from16 v30, v12

    .line 20
    invoke-static/range {v23 .. v31}, Le/d/c/a/a;->v1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Le/a/l5/a/p3$b;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v11}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v1

    const-string v3, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v2, v2, Le/a/a/l/e;->g:Le/a/q2/a;

    invoke-interface {v2, v1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 23
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
