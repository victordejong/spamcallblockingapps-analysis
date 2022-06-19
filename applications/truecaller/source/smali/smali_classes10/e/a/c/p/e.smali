.class public final Le/a/c/p/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/p/d;


# instance fields
.field public final a:Le/a/c/n/d;

.field public final b:Le/a/c/y/n/d;

.field public final c:Le/a/c/a0/s;


# direct methods
.method public constructor <init>(Le/a/c/n/d;Le/a/c/y/n/d;Le/a/c/a0/s;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "feedbackRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "infoCardDataSource"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/p/e;->a:Le/a/c/n/d;

    iput-object p2, p0, Le/a/c/p/e;->b:Le/a/c/y/n/d;

    iput-object p3, p0, Le/a/c/p/e;->c:Le/a/c/a0/s;

    return-void
.end method


# virtual methods
.method public a(Le/a/c/i/g/c;Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/i/g/c;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/c/y/f;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/p/e$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/p/e$b;

    iget v1, v0, Le/a/c/p/e$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/p/e$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/p/e$b;

    invoke-direct {v0, p0, p2}, Le/a/c/p/e$b;-><init>(Le/a/c/p/e;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/p/e$b;->d:Ljava/lang/Object;

    sget-object v7, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v0, Le/a/c/p/e$b;->e:I

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v8, :cond_1

    iget-object p1, v0, Le/a/c/p/e$b;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, v0, Le/a/c/p/e$b;->g:Ljava/lang/Object;

    check-cast v0, Le/a/c/p/e;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/c/p/e$b;->g:Ljava/lang/Object;

    check-cast p1, Le/a/c/p/e;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    new-array p2, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "InfoCard Flow: getInfoCards: conversationId - "

    .line 4
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5
    iget-wide v4, p1, Le/a/c/i/g/c;->a:J

    .line 6
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v4, p1, Le/a/c/i/g/c;->d:Le/a/c/a0/r;

    if-eqz v4, :cond_4

    .line 8
    iget-object v4, v4, Le/a/c/a0/r;->a:Lw3/b/a/b;

    goto :goto_1

    :cond_4
    move-object v4, v9

    .line 9
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", end: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v4, p1, Le/a/c/i/g/c;->d:Le/a/c/a0/r;

    if-eqz v4, :cond_5

    .line 11
    iget-object v4, v4, Le/a/c/a0/r;->b:Lw3/b/a/b;

    goto :goto_2

    :cond_5
    move-object v4, v9

    .line 12
    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v1

    .line 13
    invoke-static {p2}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Le/a/c/p/e;->c:Le/a/c/a0/s;

    .line 15
    iget-wide v3, p1, Le/a/c/i/g/c;->a:J

    const/16 v5, 0x14

    .line 16
    iget-object p1, p1, Le/a/c/i/g/c;->d:Le/a/c/a0/r;

    .line 17
    iput-object p0, v0, Le/a/c/p/e$b;->g:Ljava/lang/Object;

    iput v2, v0, Le/a/c/p/e$b;->e:I

    .line 18
    move-object v1, p2

    check-cast v1, Le/a/c/a0/t;

    move-wide v2, v3

    move v4, v5

    move-object v5, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Le/a/c/a0/t;->a(JILe/a/c/a0/r;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v7, :cond_6

    return-object v7

    :cond_6
    move-object p1, p0

    .line 19
    :goto_3
    check-cast p2, Ljava/util/List;

    .line 20
    iget-object v1, p1, Le/a/c/p/e;->a:Le/a/c/n/d;

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p2, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 23
    check-cast v4, Lcom/truecaller/insights/models/InsightsDomain;

    .line 24
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgId()J

    move-result-wide v4

    .line 25
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 26
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 27
    :cond_7
    iput-object p1, v0, Le/a/c/p/e$b;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/p/e$b;->h:Ljava/lang/Object;

    iput v8, v0, Le/a/c/p/e$b;->e:I

    .line 28
    invoke-interface {v1, v2, v0}, Le/a/c/n/d;->i(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_8

    return-object v7

    :cond_8
    move-object v10, v0

    move-object v0, p1

    move-object p1, p2

    move-object p2, v10

    .line 29
    :goto_5
    check-cast p2, Ljava/util/Map;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 32
    check-cast v2, Lcom/truecaller/insights/models/InsightsDomain;

    .line 33
    new-instance v3, Le/a/c/p/e$a;

    invoke-direct {v3, v2, v0, p2}, Le/a/c/p/e$a;-><init>(Lcom/truecaller/insights/models/InsightsDomain;Le/a/c/p/e;Ljava/util/Map;)V

    .line 34
    sget-object v2, Le/a/c/o/a;->a:Lkotlinx/coroutines/CoroutineExceptionHandler;

    const-string v2, "block"

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :try_start_0
    invoke-virtual {v3}, Le/a/c/p/e$a;->invoke()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v2

    .line 36
    sget-object v3, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 37
    invoke-virtual {v3, v2, v9}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v2, v9

    .line 38
    :goto_7
    check-cast v2, Le/a/c/y/f;

    if-eqz v2, :cond_9

    .line 39
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    return-object v1
.end method
