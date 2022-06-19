.class public final Le/a/a/o/a/j;
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
    c = "com.truecaller.messaging.storagemanager.callrec.CallRecStorageManagerPresenter$deleteCallRecordings$1$1"
    f = "CallRecStorageManagerPresenter.kt"
    l = {
        0xb0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/o/a/k$a;


# direct methods
.method public constructor <init>(Le/a/a/o/a/k$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/o/a/j;->f:Le/a/a/o/a/k$a;

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

    new-instance p1, Le/a/a/o/a/j;

    iget-object v0, p0, Le/a/a/o/a/j;->f:Le/a/a/o/a/k$a;

    invoke-direct {p1, v0, p2}, Le/a/a/o/a/j;-><init>(Le/a/a/o/a/k$a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/o/a/j;

    iget-object v0, p0, Le/a/a/o/a/j;->f:Le/a/a/o/a/k$a;

    invoke-direct {p1, v0, p2}, Le/a/a/o/a/j;-><init>(Le/a/a/o/a/k$a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/o/a/j;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/o/a/j;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

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
    iget-object v2, v0, Le/a/a/o/a/j;->f:Le/a/a/o/a/k$a;

    iget-object v5, v2, Le/a/a/o/a/k$a;->b:Le/a/a/o/a/k;

    iget-object v2, v2, Le/a/a/o/a/k$a;->c:Ljava/util/Set;

    .line 5
    iget-object v6, v5, Le/a/a/o/a/k;->l:Le/a/q2/a;

    const-string v7, "StorageManagerDelete"

    const-string v13, "type"

    .line 6
    invoke-static {v7, v13}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v15

    const-string v14, "callRecording"

    const-string v12, "name"

    const-string v11, "value"

    move-object v8, v13

    move-object v9, v12

    move-object v10, v14

    move-object v4, v12

    move-object v12, v15

    .line 7
    invoke-static/range {v8 .. v14}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v8

    const-string v9, "numItems"

    .line 8
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v10

    .line 9
    invoke-static {v9, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v10, v10

    .line 10
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "totalSize"

    .line 11
    iget-object v10, v5, Le/a/a/o/a/k;->d:Le/a/l0/u/d/b;

    if-eqz v10, :cond_5

    const/4 v11, -0x1

    .line 12
    invoke-interface {v10, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-wide/16 v11, 0x0

    .line 13
    :cond_2
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 14
    invoke-interface {v10}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v13

    const-wide/16 v16, -0x1

    if-eqz v13, :cond_3

    .line 15
    iget-object v13, v13, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    if-eqz v13, :cond_3

    .line 16
    iget-wide v13, v13, Lcom/truecaller/data/entity/CallRecording;->a:J

    goto :goto_1

    :cond_3
    move-wide/from16 v13, v16

    :goto_1
    cmp-long v16, v13, v16

    if-eqz v16, :cond_2

    .line 17
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 18
    invoke-interface {v10}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 19
    iget-object v13, v13, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    if-eqz v13, :cond_2

    .line 20
    iget-object v13, v13, Lcom/truecaller/data/entity/CallRecording;->c:Ljava/lang/String;

    if-eqz v13, :cond_2

    .line 21
    iget-object v14, v5, Le/a/a/o/a/k;->e:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    goto :goto_2

    :cond_4
    const-wide/16 v13, 0x0

    :goto_2
    add-long/2addr v11, v13

    goto :goto_0

    :cond_5
    const-wide/16 v11, 0x0

    .line 22
    :cond_6
    invoke-static {v11, v12}, Le/a/p5/s0/g;->n(J)D

    move-result-wide v10

    const/4 v2, 0x2

    .line 23
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v10, v11}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v10, 0x4

    invoke-virtual {v5, v2, v10}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v10

    .line 24
    invoke-static {v9, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v2

    invoke-virtual {v2, v7}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v2, v8}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v2, v15}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v2}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v2

    const-string v4, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {v6, v2}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 28
    iget-object v2, v0, Le/a/a/o/a/j;->f:Le/a/a/o/a/k$a;

    iget-object v2, v2, Le/a/a/o/a/k$a;->b:Le/a/a/o/a/k;

    .line 29
    iget-object v2, v2, Le/a/a/o/a/k;->g:Ls1/w/f;

    .line 30
    new-instance v4, Le/a/a/o/a/j$a;

    invoke-direct {v4, v0, v3}, Le/a/a/o/a/j$a;-><init>(Le/a/a/o/a/j;Ls1/w/d;)V

    const/4 v5, 0x1

    iput v5, v0, Le/a/a/o/a/j;->e:I

    invoke-static {v2, v4, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    return-object v1

    .line 31
    :cond_7
    :goto_3
    iget-object v1, v0, Le/a/a/o/a/j;->f:Le/a/a/o/a/k$a;

    iget-object v4, v1, Le/a/a/o/a/k$a;->b:Le/a/a/o/a/k;

    .line 32
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v7, Le/a/a/o/a/l;

    invoke-direct {v7, v4, v3}, Le/a/a/o/a/l;-><init>(Le/a/a/o/a/k;Ls1/w/d;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 34
    iget-object v1, v0, Le/a/a/o/a/j;->f:Le/a/a/o/a/k$a;

    iget-object v1, v1, Le/a/a/o/a/k$a;->b:Le/a/a/o/a/k;

    .line 35
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/o/a/i;

    if-eqz v1, :cond_8

    .line 36
    invoke-interface {v1}, Le/a/a/o/a/i;->e()V

    .line 37
    :cond_8
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
