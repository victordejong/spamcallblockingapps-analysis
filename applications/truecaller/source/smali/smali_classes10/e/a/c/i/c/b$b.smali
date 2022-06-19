.class public final Le/a/c/i/c/b$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/i/c/b;->a(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.insights.core.database.DatabaseManagerImpl$createPdoDataPointsWithBackUp$2"
    f = "DatabaseManager.kt"
    l = {
        0x5a,
        0x5b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/c/i/c/b;

.field public final synthetic i:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/c/i/c/b;Ljava/util/List;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/i/c/b$b;->h:Le/a/c/i/c/b;

    iput-object p2, p0, Le/a/c/i/c/b$b;->i:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance v0, Le/a/c/i/c/b$b;

    iget-object v1, p0, Le/a/c/i/c/b$b;->h:Le/a/c/i/c/b;

    iget-object v2, p0, Le/a/c/i/c/b$b;->i:Ljava/util/List;

    invoke-direct {v0, v1, v2, p2}, Le/a/c/i/c/b$b;-><init>(Le/a/c/i/c/b;Ljava/util/List;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/i/c/b$b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/i/c/b$b;

    iget-object v1, p0, Le/a/c/i/c/b$b;->h:Le/a/c/i/c/b;

    iget-object v2, p0, Le/a/c/i/c/b$b;->i:Ljava/util/List;

    invoke-direct {v0, v1, v2, p2}, Le/a/c/i/c/b$b;-><init>(Le/a/c/i/c/b;Ljava/util/List;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/i/c/b$b;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/i/c/b$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/i/c/b$b;->g:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/c/i/c/b$b;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v5, p0, Le/a/c/i/c/b$b;->e:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/i/c/b$b;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    iget-object v1, p0, Le/a/c/i/c/b$b;->h:Le/a/c/i/c/b;

    .line 5
    iget-object v1, v1, Le/a/c/i/c/b;->d:Le/a/c/r/h/b;

    .line 6
    invoke-interface {v1}, Le/a/c/r/h/b;->getBinder()Lcom/truecaller/insights/models/pdo/PdoBinderType;

    move-result-object v1

    .line 7
    instance-of v5, v1, Lcom/truecaller/insights/models/pdo/PdoBinderType$PdoBinder;

    if-eqz v5, :cond_e

    .line 8
    :try_start_2
    iget-object v1, p0, Le/a/c/i/c/b$b;->i:Ljava/util/List;

    .line 9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Le/a/c/c/c$a;

    .line 11
    iget-object v7, v7, Le/a/c/c/c$a;->a:Le/a/c/r/h/f$b;

    .line 12
    iget-object v7, v7, Le/a/c/r/h/f$b;->d:Le/a/c/r/h/i;

    .line 13
    instance-of v7, v7, Le/a/c/r/h/i$b;

    .line 14
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 15
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_4
    iget-object v1, p0, Le/a/c/i/c/b$b;->h:Le/a/c/i/c/b;

    invoke-static {v1, v5}, Le/a/c/i/c/b;->b(Le/a/c/i/c/b;Ljava/util/List;)V

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v11, 0x0

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Le/a/c/c/c$a;

    .line 19
    iget-object v8, p0, Le/a/c/i/c/b$b;->h:Le/a/c/i/c/b;

    .line 20
    iget-object v8, v8, Le/a/c/i/c/b;->i:Le/a/c/b/j;

    .line 21
    invoke-interface {v8}, Le/a/c/b/j;->z()Z

    move-result v8

    if-nez v8, :cond_6

    .line 22
    iget-object v8, v7, Le/a/c/c/c$a;->a:Le/a/c/r/h/f$b;

    .line 23
    iget-object v8, v8, Le/a/c/r/h/f$b;->c:Ljava/lang/String;

    .line 24
    invoke-static {v8}, Le/a/c/c0/q;->c(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 25
    iget-object v7, v7, Le/a/c/c/c$a;->a:Le/a/c/r/h/f$b;

    .line 26
    iget-object v7, v7, Le/a/c/r/h/f$b;->a:Le/a/c/h/m/c;

    .line 27
    invoke-static {v7}, Le/a/m0/a1$k;->A0(Le/a/c/h/m/c;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    move v11, v3

    .line 28
    :cond_7
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 29
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 30
    :cond_8
    new-instance v12, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 32
    check-cast v6, Le/a/c/c/c$a;

    .line 33
    iget-object v7, p0, Le/a/c/i/c/b$b;->h:Le/a/c/i/c/b;

    .line 34
    iget-object v7, v7, Le/a/c/i/c/b;->d:Le/a/c/r/h/b;

    .line 35
    iget-object v6, v6, Le/a/c/c/c$a;->a:Le/a/c/r/h/f$b;

    .line 36
    invoke-interface {v7, v6}, Le/a/c/r/h/b;->d(Le/a/c/r/h/f$b;)Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 37
    :cond_9
    invoke-static {v12, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Le/q/f/a/d/a;->Y1(I)I

    move-result v1

    const/16 v5, 0x10

    if-ge v1, v5, :cond_a

    move v1, v5

    .line 38
    :cond_a
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 39
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 40
    move-object v6, v5

    check-cast v6, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 41
    invoke-virtual {v6}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v6

    .line 42
    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 43
    invoke-interface {v13, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    const/4 v1, 0x3

    new-array v1, v1, [Lq3/a/n0;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 44
    new-instance v8, Le/a/c/i/c/b$b$a;

    invoke-direct {v8, p0, v12, v4}, Le/a/c/i/c/b$b$a;-><init>(Le/a/c/i/c/b$b;Ljava/util/List;Ls1/w/d;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v5

    aput-object v5, v1, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 45
    new-instance v8, Le/a/c/i/c/b$b$b;

    invoke-direct {v8, p0, v13, v4}, Le/a/c/i/c/b$b$b;-><init>(Le/a/c/i/c/b$b;Ljava/util/Map;Ls1/w/d;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v5

    aput-object v5, v1, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 46
    new-instance v8, Le/a/c/i/c/b$b$c;

    invoke-direct {v8, p0, v4}, Le/a/c/i/c/b$b$c;-><init>(Le/a/c/i/c/b$b;Ls1/w/d;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    aput-object p1, v1, v2

    .line 47
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v5, v12

    :cond_c
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq3/a/n0;

    .line 49
    iput-object v5, p0, Le/a/c/i/c/b$b;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/c/i/c/b$b;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/c/i/c/b$b;->g:I

    invoke-interface {p1, p0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    return-object v0

    .line 50
    :cond_d
    iget-object p1, p0, Le/a/c/i/c/b$b;->h:Le/a/c/i/c/b;

    .line 51
    iget-object p1, p1, Le/a/c/i/c/b;->k:Le/a/c/u/c;

    .line 52
    iput-object v4, p0, Le/a/c/i/c/b$b;->e:Ljava/lang/Object;

    iput-object v4, p0, Le/a/c/i/c/b$b;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/c/i/c/b$b;->g:I

    invoke-virtual {p1, v5, p0}, Le/a/c/u/c;->c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p1, v0, :cond_f

    return-object v0

    .line 53
    :catch_0
    sget-object p1, Le/a/c/o/a;->a:Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 54
    sget-object p1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v0, Lcom/truecaller/log/UnmutedException$InsightsExceptions;

    sget-object v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->BINDER_EXCEPTION:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    invoke-direct {v0, v1}, Lcom/truecaller/log/UnmutedException$InsightsExceptions;-><init>(Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;)V

    const-string v1, "Error while binding"

    invoke-virtual {p1, v0, v1}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_5

    .line 55
    :cond_e
    instance-of p1, v1, Lcom/truecaller/insights/models/pdo/PdoBinderType$a;

    if-eqz p1, :cond_f

    .line 56
    sget-object p1, Le/a/c/o/a;->a:Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 57
    sget-object p1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v0, Lcom/truecaller/log/UnmutedException$InsightsExceptions;

    sget-object v1, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->BINDER_EXCEPTION:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    invoke-direct {v0, v1}, Lcom/truecaller/log/UnmutedException$InsightsExceptions;-><init>(Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;)V

    const-string v1, "Empty insights binder"

    invoke-virtual {p1, v0, v1}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 58
    :cond_f
    :goto_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
