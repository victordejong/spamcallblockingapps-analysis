.class public final Le/a/h/b/d/b/e$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/d/b/e;->i(ZLcom/truecaller/callhistory/data/FilterType;Ljava/lang/Integer;Landroid/os/CancellationSignal;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Le/a/h/b/d/b/i;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.dialer.call_log.data.DialerRepositoryImpl$getCallHistoryInternal$2"
    f = "DialerRepository.kt"
    l = {
        0x10b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/h/b/d/b/e;

.field public final synthetic h:Z

.field public final synthetic i:Ljava/lang/Integer;

.field public final synthetic j:Lcom/truecaller/callhistory/data/FilterType;

.field public final synthetic k:Landroid/os/CancellationSignal;

.field public final synthetic l:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/h/b/d/b/e;ZLjava/lang/Integer;Lcom/truecaller/callhistory/data/FilterType;Landroid/os/CancellationSignal;Ljava/util/List;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/d/b/e$d;->g:Le/a/h/b/d/b/e;

    iput-boolean p2, p0, Le/a/h/b/d/b/e$d;->h:Z

    iput-object p3, p0, Le/a/h/b/d/b/e$d;->i:Ljava/lang/Integer;

    iput-object p4, p0, Le/a/h/b/d/b/e$d;->j:Lcom/truecaller/callhistory/data/FilterType;

    iput-object p5, p0, Le/a/h/b/d/b/e$d;->k:Landroid/os/CancellationSignal;

    iput-object p6, p0, Le/a/h/b/d/b/e$d;->l:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 9
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

    new-instance v0, Le/a/h/b/d/b/e$d;

    iget-object v2, p0, Le/a/h/b/d/b/e$d;->g:Le/a/h/b/d/b/e;

    iget-boolean v3, p0, Le/a/h/b/d/b/e$d;->h:Z

    iget-object v4, p0, Le/a/h/b/d/b/e$d;->i:Ljava/lang/Integer;

    iget-object v5, p0, Le/a/h/b/d/b/e$d;->j:Lcom/truecaller/callhistory/data/FilterType;

    iget-object v6, p0, Le/a/h/b/d/b/e$d;->k:Landroid/os/CancellationSignal;

    iget-object v7, p0, Le/a/h/b/d/b/e$d;->l:Ljava/util/List;

    move-object v1, v0

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Le/a/h/b/d/b/e$d;-><init>(Le/a/h/b/d/b/e;ZLjava/lang/Integer;Lcom/truecaller/callhistory/data/FilterType;Landroid/os/CancellationSignal;Ljava/util/List;Ls1/w/d;)V

    iput-object p1, v0, Le/a/h/b/d/b/e$d;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/h/b/d/b/e$d;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/h/b/d/b/e$d;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/h/b/d/b/e$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/h/b/d/b/e$d;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/h/b/d/b/e$d;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    iget-boolean v1, p0, Le/a/h/b/d/b/e$d;->h:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/a/h/b/d/b/e$d;->g:Le/a/h/b/d/b/e;

    .line 5
    iget-object v1, v1, Le/a/h/b/d/b/e;->c:Le/a/h/b/d/b/h;

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, p0, Le/a/h/b/d/b/e$d;->g:Le/a/h/b/d/b/e;

    .line 7
    iget-object v1, v1, Le/a/h/b/d/b/e;->d:Le/a/h/b/d/b/f;

    .line 8
    :goto_0
    iget-object v3, p0, Le/a/h/b/d/b/e$d;->g:Le/a/h/b/d/b/e;

    .line 9
    iget-object v4, v3, Le/a/h/b/d/b/e;->s:Le/a/q2/s0;

    .line 10
    sget-object v5, Lcom/truecaller/analytics/TimingEvent;->CALL_LOG_FETCH_AND_MERGE:Lcom/truecaller/analytics/TimingEvent;

    const-string v3, "limit:"

    .line 11
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Le/a/h/b/d/b/e$d;->i:Ljava/lang/Integer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v3, "merger:"

    .line 12
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Le/a/h/b/d/b/g;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 13
    new-instance v8, Le/a/h/b/d/b/e$d$a;

    const/4 v3, 0x0

    invoke-direct {v8, p0, p1, v1, v3}, Le/a/h/b/d/b/e$d$a;-><init>(Le/a/h/b/d/b/e$d;Lq3/a/i0;Le/a/h/b/d/b/g;Ls1/w/d;)V

    iput v2, p0, Le/a/h/b/d/b/e$d;->f:I

    move-object v9, p0

    .line 14
    invoke-static/range {v4 .. v9}, Le/m/d/y/n;->C1(Le/a/q2/s0;Lcom/truecaller/analytics/TimingEvent;Ljava/lang/String;Ljava/lang/String;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    return-object p1
.end method
