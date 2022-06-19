.class public final Le/a/a/c/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/a/g;
.implements Lq3/a/i0;


# instance fields
.field public final a:Lq3/a/y;

.field public final b:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Le/a/c/y/f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/c/y/f;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/c/a0/r;",
            ">;"
        }
    .end annotation
.end field

.field public g:Le/a/c/i/g/c;

.field public h:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public j:J

.field public final k:Ls1/w/f;

.field public final l:Ls1/w/f;

.field public final m:Le/a/c/e/a;

.field public final n:Le/a/c/i/e/c;

.field public final o:Le/a/c/p/d;

.field public final p:Le/a/c/w/o0/g;

.field public final q:Le/a/c/a0/e;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/c/e/a;Le/a/c/i/e/c;Le/a/c/p/d;Le/a/c/w/o0/g;Le/a/c/a0/e;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiCoroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundCoroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "infoCardAnalyticsManagerRevamp"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedbackManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "infoCardRepository"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionDataSource"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/a/e;->k:Ls1/w/f;

    iput-object p2, p0, Le/a/a/c/a/e;->l:Ls1/w/f;

    iput-object p3, p0, Le/a/a/c/a/e;->m:Le/a/c/e/a;

    iput-object p4, p0, Le/a/a/c/a/e;->n:Le/a/c/i/e/c;

    iput-object p5, p0, Le/a/a/c/a/e;->o:Le/a/c/p/d;

    iput-object p6, p0, Le/a/a/c/a/e;->p:Le/a/c/w/o0/g;

    iput-object p7, p0, Le/a/a/c/a/e;->q:Le/a/c/a0/e;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/a/e;->a:Lq3/a/y;

    .line 3
    sget p1, Lkotlinx/coroutines/CoroutineExceptionHandler;->d0:I

    sget-object p1, Lkotlinx/coroutines/CoroutineExceptionHandler$a;->a:Lkotlinx/coroutines/CoroutineExceptionHandler$a;

    new-instance p2, Le/a/a/c/a/e$a;

    invoke-direct {p2, p1}, Le/a/a/c/a/e$a;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$a;)V

    .line 4
    iput-object p2, p0, Le/a/a/c/a/e;->b:Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/a/c/a/e;->c:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a/c/a/e;->d:Ljava/util/List;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a/c/a/e;->f:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Le/a/a/c/a/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 p1, -0x1

    .line 9
    iput-wide p1, p0, Le/a/a/c/a/e;->j:J

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "idList"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/a/e;->m:Le/a/c/e/a;

    invoke-interface {v0, p1}, Le/a/c/e/a;->a(Ljava/util/Set;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/a/e;->m:Le/a/c/e/a;

    invoke-interface {v0}, Le/a/c/e/a;->h()V

    .line 2
    iget-object v0, p0, Le/a/a/c/a/e;->m:Le/a/c/e/a;

    invoke-interface {v0}, Le/a/c/e/a;->b()V

    .line 3
    invoke-virtual {p0}, Le/a/a/c/a/e;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->X(Ls1/w/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/a/c/a/e;->m()V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsCategory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/a/e;->m:Le/a/c/e/a;

    invoke-interface {v0, p1, p2, p3}, Le/a/c/e/a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public d(Lcom/truecaller/messaging/data/types/Message;)Le/a/c/y/f;
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v1, "message.participant"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Le/a/a/c/a/e;->c:Ljava/util/Map;

    .line 3
    iget-wide v1, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/y/f;

    :goto_1
    return-object p1
.end method

.method public e(JLw3/b/a/b;)Le/a/c/y/f;
    .locals 11

    const-string v0, "dateTime"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/a/e;->c:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    return-object v3

    .line 2
    :cond_2
    iget-object v0, p0, Le/a/a/c/a/e;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/y/f;

    if-eqz p1, :cond_3

    return-object p1

    .line 3
    :cond_3
    iget-object p1, p0, Le/a/a/c/a/e;->f:Ljava/util/List;

    .line 4
    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_3

    .line 5
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/c/a0/r;

    .line 6
    iget-object v0, p2, Le/a/c/a0/r;->a:Lw3/b/a/b;

    .line 7
    invoke-virtual {p3, v0}, Lw3/b/a/e0/c;->a(Lw3/b/a/z;)I

    move-result v0

    if-lez v0, :cond_6

    .line 8
    iget-object p2, p2, Le/a/c/a0/r;->b:Lw3/b/a/b;

    .line 9
    invoke-virtual {p3, p2}, Lw3/b/a/e0/c;->a(Lw3/b/a/z;)I

    move-result p2

    if-gez p2, :cond_6

    move p2, v2

    goto :goto_2

    :cond_6
    move p2, v1

    :goto_2
    if-eqz p2, :cond_5

    move p1, v2

    goto :goto_4

    :cond_7
    :goto_3
    move p1, v1

    :goto_4
    if-eqz p1, :cond_8

    return-object v3

    .line 10
    :cond_8
    invoke-virtual {p3, v2}, Lw3/b/a/b;->z(I)Lw3/b/a/b;

    move-result-object p1

    .line 11
    invoke-virtual {p3, v2}, Lw3/b/a/b;->H(I)Lw3/b/a/b;

    move-result-object p2

    .line 12
    iget-object v4, p0, Le/a/a/c/a/e;->g:Le/a/c/i/g/c;

    if-eqz v4, :cond_9

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Le/a/c/a0/r;

    const-string p3, "fromDate"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "toDate"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, p1, p2}, Le/a/c/a0/r;-><init>(Lw3/b/a/b;Lw3/b/a/b;)V

    const/4 v10, 0x7

    invoke-static/range {v4 .. v10}, Le/a/c/i/g/c;->a(Le/a/c/i/g/c;JLjava/lang/String;Ljava/lang/String;Le/a/c/a0/r;I)Le/a/c/i/g/c;

    move-result-object p1

    .line 13
    iget-object p2, p0, Le/a/a/c/a/e;->h:Ls1/z/b/a;

    .line 14
    invoke-virtual {p0, p1, v1, p2}, Le/a/a/c/a/e;->i(Le/a/c/i/g/c;ZLs1/z/b/a;)V

    :cond_9
    return-object v3
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/a/e;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public g(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "analyticsCategory"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/a/e;->m:Le/a/c/e/a;

    invoke-interface {v0, p1, p2}, Le/a/c/e/a;->g(Ljava/lang/String;Z)V

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/a/e;->k:Ls1/w/f;

    iget-object v1, p0, Le/a/a/c/a/e;->a:Lq3/a/y;

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/a/e;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public i(Le/a/c/i/g/c;ZLs1/z/b/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/i/g/c;",
            "Z",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "requestInfocard"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/a/c/a/e;->g:Le/a/c/i/g/c;

    .line 2
    iput-object p3, p0, Le/a/a/c/a/e;->h:Ls1/z/b/a;

    .line 3
    iget-object v0, p0, Le/a/a/c/a/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    iget-object v2, p0, Le/a/a/c/a/e;->b:Lkotlinx/coroutines/CoroutineExceptionHandler;

    new-instance v0, Le/a/a/c/a/e$c;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Le/a/a/c/a/e$c;-><init>(Le/a/a/c/a/e;Le/a/c/i/g/c;ZLs1/z/b/a;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public j(JLe/a/c/y/f;)V
    .locals 1

    const-string v0, "infoCardUiModel"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/a/e;->m:Le/a/c/e/a;

    invoke-interface {v0, p1, p2, p3}, Le/a/c/e/a;->j(JLe/a/c/y/f;)V

    return-void
.end method

.method public final synthetic k(JLs1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/a/c/a/e$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/a/c/a/e$b;

    iget v1, v0, Le/a/a/c/a/e$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/c/a/e$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/c/a/e$b;

    invoke-direct {v0, p0, p3}, Le/a/a/c/a/e$b;-><init>(Le/a/a/c/a/e;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/a/c/a/e$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/c/a/e$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p1, v0, Le/a/a/c/a/e$b;->i:J

    iget-object v1, v0, Le/a/a/c/a/e$b;->h:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/a/e;

    iget-object v0, v0, Le/a/a/c/a/e$b;->g:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/a/e;

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

    .line 4
    iget-wide v4, p0, Le/a/a/c/a/e;->j:J

    cmp-long p3, v4, p1

    if-eqz p3, :cond_4

    .line 5
    iget-object p3, p0, Le/a/a/c/a/e;->n:Le/a/c/i/e/c;

    iput-object p0, v0, Le/a/a/c/a/e$b;->g:Ljava/lang/Object;

    iput-object p0, v0, Le/a/a/c/a/e$b;->h:Ljava/lang/Object;

    iput-wide p1, v0, Le/a/a/c/a/e$b;->i:J

    iput v3, v0, Le/a/a/c/a/e$b;->e:I

    invoke-interface {p3, p1, p2, v0}, Le/a/c/i/e/c;->a(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, v0

    .line 6
    :goto_1
    check-cast p3, Ljava/util/Map;

    iput-object p3, v1, Le/a/a/c/a/e;->e:Ljava/util/Map;

    .line 7
    iput-wide p1, v0, Le/a/a/c/a/e;->j:J

    .line 8
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final l(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/y/f;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/c/y/f;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Le/a/c/r/j/p$d;->b:Le/a/c/r/j/p$d;

    sget-object v3, Le/a/c/r/j/p$b;->b:Le/a/c/r/j/p$b;

    instance-of v4, v1, Le/a/a/c/a/e$d;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Le/a/a/c/a/e$d;

    iget v5, v4, Le/a/a/c/a/e$d;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/a/c/a/e$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/a/c/a/e$d;

    invoke-direct {v4, v0, v1}, Le/a/a/c/a/e$d;-><init>(Le/a/a/c/a/e;Ls1/w/d;)V

    :goto_0
    iget-object v1, v4, Le/a/a/c/a/e$d;->d:Ljava/lang/Object;

    sget-object v5, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v6, v4, Le/a/a/c/a/e$d;->e:I

    const/4 v7, 0x2

    const/16 v8, 0xa

    const/4 v9, 0x1

    if-eqz v6, :cond_2

    if-ne v6, v9, :cond_1

    iget-object v5, v4, Le/a/a/c/a/e$d;->h:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v4, v4, Le/a/a/c/a/e$d;->g:Ljava/lang/Object;

    check-cast v4, Le/a/a/c/a/e;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Le/a/c/y/f;

    new-array v12, v7, [Le/a/c/r/j/p;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    aput-object v2, v12, v9

    .line 6
    invoke-static {v12}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 7
    iget-object v11, v11, Le/a/c/y/f;->h:Le/a/c/r/j/p;

    .line 8
    invoke-interface {v12, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 9
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 10
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v1, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 13
    check-cast v10, Le/a/c/y/f;

    .line 14
    iget-wide v10, v10, Le/a/c/y/f;->a:J

    .line 15
    new-instance v12, Ljava/lang/Long;

    invoke-direct {v12, v10, v11}, Ljava/lang/Long;-><init>(J)V

    .line 16
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_5
    iget-object v1, v0, Le/a/a/c/a/e;->q:Le/a/c/a0/e;

    iput-object v0, v4, Le/a/a/c/a/e$d;->g:Ljava/lang/Object;

    move-object/from16 v10, p1

    iput-object v10, v4, Le/a/a/c/a/e$d;->h:Ljava/lang/Object;

    iput v9, v4, Le/a/a/c/a/e$d;->e:I

    check-cast v1, Le/a/c/a0/f;

    invoke-virtual {v1, v6, v4}, Le/a/c/a0/f;->b(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_6

    return-object v5

    :cond_6
    move-object v4, v0

    move-object v5, v10

    .line 18
    :goto_3
    check-cast v1, Ljava/lang/Iterable;

    .line 19
    invoke-static {v1, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {v6}, Le/q/f/a/d/a;->Y1(I)I

    move-result v6

    const/16 v9, 0x10

    if-ge v6, v9, :cond_7

    move v6, v9

    .line 20
    :cond_7
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 22
    move-object v10, v6

    check-cast v10, Le/a/c/r/j/b;

    .line 23
    iget-wide v10, v10, Le/a/c/r/j/b;->b:J

    .line 24
    new-instance v12, Ljava/lang/Long;

    invoke-direct {v12, v10, v11}, Ljava/lang/Long;-><init>(J)V

    .line 25
    invoke-interface {v9, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 26
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v5, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 28
    move-object v10, v6

    check-cast v10, Le/a/c/y/f;

    .line 29
    iget-wide v11, v10, Le/a/c/y/f;->a:J

    .line 30
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v11, v12}, Ljava/lang/Long;-><init>(J)V

    .line 31
    invoke-virtual {v9, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/c/r/j/b;

    if-eqz v6, :cond_9

    .line 32
    iget v6, v6, Le/a/c/r/j/b;->d:I

    .line 33
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    .line 34
    :goto_6
    iget-object v6, v10, Le/a/c/y/f;->h:Le/a/c/r/j/p;

    .line 35
    invoke-static {v6, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    if-nez v8, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v7, :cond_c

    :goto_7
    const/4 v6, 0x4

    if-nez v8, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v6, :cond_e

    :cond_c
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 36
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v6, v7, :cond_d

    .line 37
    sget-object v6, Lcom/truecaller/insights/smartcards/SmartCardStatus;->BillPaid:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_8

    :cond_d
    sget-object v6, Lcom/truecaller/insights/smartcards/SmartCardStatus;->BillRecharged:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    :goto_8
    move-object v13, v6

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    .line 38
    iget-object v11, v10, Le/a/c/y/f;->c:Le/a/c/y/l;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v31, 0x0

    .line 39
    sget-object v21, Ls1/u/s;->a:Ls1/u/s;

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v24, 0x0

    const/16 v34, 0x0

    const/16 v26, 0x3dfd

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    .line 40
    invoke-static/range {v11 .. v26}, Le/a/c/y/l;->a(Le/a/c/y/l;Lcom/truecaller/insights/smartcards/SmartCardCategory;Lcom/truecaller/insights/smartcards/SmartCardStatus;Ljava/lang/String;Ljava/lang/String;ILe/a/c/r/j/b0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Le/a/c/y/i;ZLjava/lang/String;I)Le/a/c/y/l;

    move-result-object v15

    const/16 v22, 0x1fb

    move-wide/from16 v11, v27

    move-wide/from16 v13, v29

    move/from16 v16, v6

    move-object/from16 v17, v8

    move-object/from16 v18, v32

    move-object/from16 v19, v33

    move-object/from16 v20, v31

    move-object/from16 v21, v34

    .line 41
    invoke-static/range {v10 .. v22}, Le/a/c/y/f;->a(Le/a/c/y/f;JJLe/a/c/y/l;ZLe/a/c/r/j/h;Le/a/c/i/e/b;Lw3/b/a/b;Le/a/c/r/j/p;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;I)Le/a/c/y/f;

    move-result-object v10

    goto :goto_a

    .line 42
    :cond_e
    :goto_9
    iget-object v6, v10, Le/a/c/y/f;->h:Le/a/c/r/j/p;

    .line 43
    invoke-static {v6, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v6, 0x5

    if-nez v8, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v6, :cond_10

    .line 44
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v11, v10, Le/a/c/y/f;->c:Le/a/c/y/l;

    const/4 v12, 0x0

    .line 46
    sget-object v13, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryPickupComplete:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x3ffd

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 47
    invoke-static/range {v11 .. v26}, Le/a/c/y/l;->a(Le/a/c/y/l;Lcom/truecaller/insights/smartcards/SmartCardCategory;Lcom/truecaller/insights/smartcards/SmartCardStatus;Ljava/lang/String;Ljava/lang/String;ILe/a/c/r/j/b0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Le/a/c/y/i;ZLjava/lang/String;I)Le/a/c/y/l;

    move-result-object v15

    const/16 v22, 0x1fb

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move/from16 v16, v6

    move-object/from16 v17, v8

    move-object/from16 v18, v27

    move-object/from16 v19, v28

    move-object/from16 v20, v29

    move-object/from16 v21, v30

    .line 48
    invoke-static/range {v10 .. v22}, Le/a/c/y/f;->a(Le/a/c/y/f;JJLe/a/c/y/l;ZLe/a/c/r/j/h;Le/a/c/i/e/b;Lw3/b/a/b;Le/a/c/r/j/p;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;I)Le/a/c/y/f;

    move-result-object v10

    .line 49
    :cond_10
    :goto_a
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_11
    return-object v1
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/a/e;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Le/a/a/c/a/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Le/a/a/c/a/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/a/a/c/a/e;->g:Le/a/c/i/g/c;

    .line 5
    iput-object v0, p0, Le/a/a/c/a/e;->h:Ls1/z/b/a;

    .line 6
    iget-object v0, p0, Le/a/a/c/a/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Le/a/a/c/a/e;->j:J

    return-void
.end method
