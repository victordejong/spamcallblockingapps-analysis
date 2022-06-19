.class public final Le/a/h/b/d/b/e$d$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/d/b/e$d;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/q2/w;",
        "Ls1/w/d<",
        "-",
        "Ljava/util/List<",
        "+",
        "Le/a/h/b/d/b/i;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.dialer.call_log.data.DialerRepositoryImpl$getCallHistoryInternal$2$1"
    f = "DialerRepository.kt"
    l = {
        0x113,
        0x11a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/h/b/d/b/e$d;

.field public final synthetic h:Lq3/a/i0;

.field public final synthetic i:Le/a/h/b/d/b/g;


# direct methods
.method public constructor <init>(Le/a/h/b/d/b/e$d;Lq3/a/i0;Le/a/h/b/d/b/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/d/b/e$d$a;->g:Le/a/h/b/d/b/e$d;

    iput-object p2, p0, Le/a/h/b/d/b/e$d$a;->h:Lq3/a/i0;

    iput-object p3, p0, Le/a/h/b/d/b/e$d$a;->i:Le/a/h/b/d/b/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 4
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

    new-instance v0, Le/a/h/b/d/b/e$d$a;

    iget-object v1, p0, Le/a/h/b/d/b/e$d$a;->g:Le/a/h/b/d/b/e$d;

    iget-object v2, p0, Le/a/h/b/d/b/e$d$a;->h:Lq3/a/i0;

    iget-object v3, p0, Le/a/h/b/d/b/e$d$a;->i:Le/a/h/b/d/b/g;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/h/b/d/b/e$d$a;-><init>(Le/a/h/b/d/b/e$d;Lq3/a/i0;Le/a/h/b/d/b/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/h/b/d/b/e$d$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/h/b/d/b/e$d$a;

    iget-object v1, p0, Le/a/h/b/d/b/e$d$a;->g:Le/a/h/b/d/b/e$d;

    iget-object v2, p0, Le/a/h/b/d/b/e$d$a;->h:Lq3/a/i0;

    iget-object v3, p0, Le/a/h/b/d/b/e$d$a;->i:Le/a/h/b/d/b/g;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/h/b/d/b/e$d$a;-><init>(Le/a/h/b/d/b/e$d;Lq3/a/i0;Le/a/h/b/d/b/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/h/b/d/b/e$d$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/h/b/d/b/e$d$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/h/b/d/b/e$d$a;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/h/b/d/b/e$d$a;->e:Ljava/lang/Object;

    check-cast v0, Le/a/q2/w;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/h/b/d/b/e$d$a;->e:Ljava/lang/Object;

    check-cast v0, Le/a/q2/w;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/h/b/d/b/e$d$a;->e:Ljava/lang/Object;

    check-cast p1, Le/a/q2/w;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 5
    iget-object v1, p0, Le/a/h/b/d/b/e$d$a;->g:Le/a/h/b/d/b/e$d;

    iget-object v6, v1, Le/a/h/b/d/b/e$d;->g:Le/a/h/b/d/b/e;

    .line 6
    iget-object v6, v6, Le/a/h/b/d/b/e;->q:Le/a/l0/g;

    .line 7
    iget-object v7, v1, Le/a/h/b/d/b/e$d;->j:Lcom/truecaller/callhistory/data/FilterType;

    iget-object v8, v1, Le/a/h/b/d/b/e$d;->i:Ljava/lang/Integer;

    iget-object v1, v1, Le/a/h/b/d/b/e$d;->k:Landroid/os/CancellationSignal;

    invoke-interface {v6, v7, v8, v1}, Le/a/l0/g;->p(Lcom/truecaller/callhistory/data/FilterType;Ljava/lang/Integer;Landroid/os/CancellationSignal;)Ljava/util/List;

    move-result-object v1

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 9
    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 10
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    if-eqz v1, :cond_3

    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 12
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 13
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    :cond_3
    iget-object v4, p0, Le/a/h/b/d/b/e$d$a;->g:Le/a/h/b/d/b/e$d;

    iget-object v4, v4, Le/a/h/b/d/b/e$d;->g:Le/a/h/b/d/b/e;

    .line 14
    iget-boolean v4, v4, Le/a/h/b/d/b/e;->v:Z

    if-eqz v1, :cond_9

    if-eqz v4, :cond_6

    .line 15
    iget-object v2, p0, Le/a/h/b/d/b/e$d$a;->h:Lq3/a/i0;

    invoke-static {v2}, Ls1/a/a/a/v0/f/d;->Q1(Lq3/a/i0;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 17
    iget-object v4, p1, Le/a/q2/w;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 18
    iget-object v2, p0, Le/a/h/b/d/b/e$d$a;->g:Le/a/h/b/d/b/e$d;

    iget-object v4, v2, Le/a/h/b/d/b/e$d;->g:Le/a/h/b/d/b/e;

    iget-object v2, v2, Le/a/h/b/d/b/e$d;->i:Ljava/lang/Integer;

    iget-object v5, p0, Le/a/h/b/d/b/e$d$a;->i:Le/a/h/b/d/b/g;

    iput-object p1, p0, Le/a/h/b/d/b/e$d$a;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/h/b/d/b/e$d$a;->f:I

    invoke-virtual {v4, v1, v2, v5, p0}, Le/a/h/b/d/b/e;->j(Ljava/util/List;Ljava/lang/Integer;Le/a/h/b/d/b/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/util/List;

    goto :goto_2

    .line 19
    :cond_5
    iget-object v0, p0, Le/a/h/b/d/b/e$d$a;->g:Le/a/h/b/d/b/e$d;

    iget-object v0, v0, Le/a/h/b/d/b/e$d;->l:Ljava/util/List;

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_2

    .line 20
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 21
    iget-object v5, p1, Le/a/q2/w;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 22
    iget-object v4, p0, Le/a/h/b/d/b/e$d$a;->g:Le/a/h/b/d/b/e$d;

    iget-object v5, v4, Le/a/h/b/d/b/e$d;->g:Le/a/h/b/d/b/e;

    iget-object v4, v4, Le/a/h/b/d/b/e$d;->i:Ljava/lang/Integer;

    iget-object v6, p0, Le/a/h/b/d/b/e$d$a;->i:Le/a/h/b/d/b/g;

    iput-object p1, p0, Le/a/h/b/d/b/e$d$a;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/h/b/d/b/e$d$a;->f:I

    invoke-virtual {v5, v1, v4, v6, p0}, Le/a/h/b/d/b/e;->j(Ljava/util/List;Ljava/lang/Integer;Le/a/h/b/d/b/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v0, p1

    move-object p1, v1

    .line 23
    :goto_1
    check-cast p1, Ljava/util/List;

    :goto_2
    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    move-object p1, v0

    .line 24
    :cond_9
    iput-boolean v3, p1, Le/a/q2/w;->a:Z

    .line 25
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    :goto_3
    return-object p1
.end method
