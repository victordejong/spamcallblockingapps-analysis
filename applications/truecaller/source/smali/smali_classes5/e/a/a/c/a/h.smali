.class public final Le/a/a/c/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/a/n;
.implements Lq3/a/i0;


# instance fields
.field public final a:Lq3/a/y;

.field public b:I

.field public final c:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Le/a/c/r/j/s;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/c/r/j/s;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Le/a/c/i/e/b;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:Z

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/c/a0/r;",
            ">;"
        }
    .end annotation
.end field

.field public m:Le/a/c/i/g/c;

.field public n:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/concurrent/atomic/AtomicInteger;

.field public p:J

.field public final q:Ls1/w/f;

.field public final r:Ls1/w/f;

.field public final s:Le/a/c/i/g/a;

.field public final t:Le/a/c/e/e;

.field public final u:Le/a/c/i/e/c;

.field public final v:Le/a/c/b/j;

.field public final w:Le/a/a/c/a/o;

.field public final x:Le/a/c/i/j/c/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/c/i/g/a;Le/a/c/e/e;Le/a/c/i/e/c;Le/a/c/b/j;Le/a/a/c/a/o;Le/a/c/i/j/c/a;)V
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

    const-string v0, "infoCardManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsSmartCardAnalyticsManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedbackManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateCategoriesManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "importantSendersManager"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/a/h;->q:Ls1/w/f;

    iput-object p2, p0, Le/a/a/c/a/h;->r:Ls1/w/f;

    iput-object p3, p0, Le/a/a/c/a/h;->s:Le/a/c/i/g/a;

    iput-object p4, p0, Le/a/a/c/a/h;->t:Le/a/c/e/e;

    iput-object p5, p0, Le/a/a/c/a/h;->u:Le/a/c/i/e/c;

    iput-object p6, p0, Le/a/a/c/a/h;->v:Le/a/c/b/j;

    iput-object p7, p0, Le/a/a/c/a/h;->w:Le/a/a/c/a/o;

    iput-object p8, p0, Le/a/a/c/a/h;->x:Le/a/c/i/j/c/a;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/a/h;->a:Lq3/a/y;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Le/a/a/c/a/h;->b:I

    .line 4
    sget p1, Lkotlinx/coroutines/CoroutineExceptionHandler;->d0:I

    sget-object p1, Lkotlinx/coroutines/CoroutineExceptionHandler$a;->a:Lkotlinx/coroutines/CoroutineExceptionHandler$a;

    new-instance p3, Le/a/a/c/a/h$a;

    invoke-direct {p3, p1}, Le/a/a/c/a/h$a;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$a;)V

    .line 5
    iput-object p3, p0, Le/a/a/c/a/h;->c:Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/a/c/a/h;->d:Ljava/util/Map;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a/c/a/h;->e:Ljava/util/List;

    .line 8
    iput-boolean p2, p0, Le/a/a/c/a/h;->f:Z

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Le/a/a/c/a/h;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a/c/a/h;->l:Ljava/util/List;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Le/a/a/c/a/h;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 p1, -0x1

    .line 12
    iput-wide p1, p0, Le/a/a/c/a/h;->p:J

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
    iget-object v0, p0, Le/a/a/c/a/h;->t:Le/a/c/e/e;

    invoke-interface {v0, p1}, Le/a/c/e/e;->a(Ljava/util/Set;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/a/h;->t:Le/a/c/e/e;

    invoke-interface {v0}, Le/a/c/e/e;->h()V

    .line 2
    iget-object v0, p0, Le/a/a/c/a/h;->t:Le/a/c/e/e;

    invoke-interface {v0}, Le/a/c/e/e;->b()V

    .line 3
    invoke-virtual {p0}, Le/a/a/c/a/h;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->X(Ls1/w/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/a/c/a/h;->u()V

    return-void
.end method

.method public c(Ljava/lang/String;Ls1/k;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/k<",
            "+",
            "Le/a/c/r/j/r;",
            "+",
            "Le/a/c/r/j/p;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/a/h;->t:Le/a/c/e/e;

    invoke-interface {v0, p1, p2, p3}, Le/a/c/e/e;->c(Ljava/lang/String;Ls1/k;Z)V

    return-void
.end method

.method public d(Lcom/truecaller/messaging/data/types/Message;)Le/a/c/r/j/s;
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
    iget-object v0, p0, Le/a/a/c/a/h;->d:Ljava/util/Map;

    .line 3
    iget-wide v1, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/r/j/s;

    :goto_1
    return-object p1
.end method

.method public e(JLw3/b/a/b;)Le/a/c/r/j/s;
    .locals 11

    const-string v0, "dateTime"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/a/h;->d:Ljava/util/Map;

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
    iget-object v0, p0, Le/a/a/c/a/h;->d:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/r/j/s;

    if-eqz p1, :cond_3

    return-object p1

    .line 3
    :cond_3
    iget-object p1, p0, Le/a/a/c/a/h;->l:Ljava/util/List;

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
    iget-object v4, p0, Le/a/a/c/a/h;->m:Le/a/c/i/g/c;

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
    iget-object p2, p0, Le/a/a/c/a/h;->n:Ls1/z/b/a;

    .line 14
    invoke-virtual {p0, p1, v1, p2}, Le/a/a/c/a/h;->i(Le/a/c/i/g/c;ZLs1/z/b/a;)V

    :cond_9
    return-object v3
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/a/h;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/a/c/a/h;->w:Le/a/a/c/a/o;

    invoke-interface {v0}, Le/a/a/c/a/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public g(Ls1/k;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/k<",
            "+",
            "Le/a/c/r/j/r;",
            "+",
            "Le/a/c/r/j/p;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/a/h;->t:Le/a/c/e/e;

    invoke-interface {v0, p1, p2}, Le/a/c/e/e;->g(Ls1/k;Z)V

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/a/h;->q:Ls1/w/f;

    iget-object v1, p0, Le/a/a/c/a/h;->a:Lq3/a/y;

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/a/h;->d:Ljava/util/Map;

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
    iput-object p1, p0, Le/a/a/c/a/h;->m:Le/a/c/i/g/c;

    .line 2
    iput-object p3, p0, Le/a/a/c/a/h;->n:Ls1/z/b/a;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/a/a/c/a/h;->j:Z

    .line 4
    iget-object v0, p0, Le/a/a/c/a/h;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 5
    iget-object v2, p0, Le/a/a/c/a/h;->c:Lkotlinx/coroutines/CoroutineExceptionHandler;

    new-instance v0, Le/a/a/c/a/h$d;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Le/a/a/c/a/h$d;-><init>(Le/a/a/c/a/h;Le/a/c/i/g/c;ZLs1/z/b/a;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/a/h;->t:Le/a/c/e/e;

    invoke-virtual {p0}, Le/a/a/c/a/h;->s()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Le/a/c/e/e;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public k(JLe/a/c/r/j/i;)V
    .locals 1

    const-string v0, "feedbackCard"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/a/h;->t:Le/a/c/e/e;

    invoke-interface {v0, p1, p2, p3}, Le/a/c/e/e;->j(JLe/a/c/r/j/i;)V

    return-void
.end method

.method public l(JILs1/z/b/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/a/h;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iput p3, p0, Le/a/a/c/a/h;->b:I

    .line 3
    iget-object v3, p0, Le/a/a/c/a/h;->c:Lkotlinx/coroutines/CoroutineExceptionHandler;

    new-instance p3, Le/a/a/c/a/h$c;

    const/4 v9, 0x0

    move-object v4, p3

    move-object v5, p0

    move-wide v6, p1

    move-object v8, p4

    invoke-direct/range {v4 .. v9}, Le/a/a/c/a/h$c;-><init>(Le/a/a/c/a/h;JLs1/z/b/a;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/a/h;->v:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->V()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/a/h;->v:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->D()Z

    move-result v0

    return v0
.end method

.method public o(Ljava/util/List;Ljava/lang/String;Ls1/z/b/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls1/o<",
            "Le/a/c/i/e/a;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/lang/String;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msgs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedbackType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "listener"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/a/h;->m()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    new-instance v3, Le/a/a/c/a/h$e;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p1, p3, p2}, Le/a/a/c/a/h$e;-><init>(Le/a/a/c/a/h;Ljava/util/List;Ls1/z/b/a;Ls1/w/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void
.end method

.method public p(JLjava/lang/String;)Le/a/c/r/j/s;
    .locals 7

    const-string v0, "address"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/a/h;->x:Le/a/c/i/j/c/a;

    invoke-interface {v0, p3}, Le/a/c/i/j/c/a;->a(Ljava/lang/String;)Z

    move-result v4

    .line 2
    iget p3, p0, Le/a/a/c/a/h;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    .line 3
    :cond_0
    iget-object p3, p0, Le/a/a/c/a/h;->h:Ljava/util/Map;

    if-eqz p3, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Le/a/c/i/e/b;

    if-eqz v2, :cond_1

    iget v3, p0, Le/a/a/c/a/h;->b:I

    move-object v1, p0

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Le/a/a/c/a/h;->v(Le/a/c/i/e/b;IZJ)Le/a/c/r/j/s;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public q(Le/a/c/i/e/a;JJLjava/lang/String;)Le/a/c/r/j/s;
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v0, p6

    const-string v1, "feedbackMessage"

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "rawAddress"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v1, v6, Le/a/a/c/a/h;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 2
    :cond_0
    iget-object v1, v6, Le/a/a/c/a/h;->d:Ljava/util/Map;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v6, Le/a/a/c/a/h;->w:Le/a/a/c/a/o;

    invoke-interface {v1, v8, v9}, Le/a/a/c/a/o;->g(J)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    if-nez v1, :cond_3

    .line 3
    iget-boolean v1, v6, Le/a/a/c/a/h;->j:Z

    if-nez v1, :cond_3

    .line 4
    iget-object v1, v6, Le/a/a/c/a/h;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    const/4 v10, 0x0

    if-nez v1, :cond_4

    return-object v10

    .line 5
    :cond_4
    iget-object v1, v6, Le/a/a/c/a/h;->v:Le/a/c/b/j;

    invoke-interface {v1}, Le/a/c/b/j;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v6, Le/a/a/c/a/h;->x:Le/a/c/i/j/c/a;

    invoke-interface {v1, v0}, Le/a/c/i/j/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    if-eqz v3, :cond_6

    .line 6
    iget-object v0, v6, Le/a/a/c/a/h;->w:Le/a/a/c/a/o;

    invoke-interface {v0, v8, v9}, Le/a/a/c/a/o;->c(J)V

    .line 7
    iget-object v0, v6, Le/a/a/c/a/h;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object v10

    .line 8
    :cond_6
    iget-object v0, v6, Le/a/a/c/a/h;->h:Ljava/util/Map;

    if-eqz v0, :cond_7

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/c/i/e/b;

    if-eqz v1, :cond_7

    iget v2, v6, Le/a/a/c/a/h;->b:I

    move-object/from16 v0, p0

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Le/a/a/c/a/h;->v(Le/a/c/i/e/b;IZJ)Le/a/c/r/j/s;

    move-result-object v0

    if-eqz v0, :cond_7

    goto/16 :goto_7

    .line 9
    :cond_7
    sget-object v0, Lcom/truecaller/insights/models/feedback/FeedbackType;->ROW_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    const-string v1, "$this$toInsightFeedback"

    .line 10
    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "userFeedback"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "feedbackType"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v2, Le/a/c/i/e/b;

    .line 12
    iget-object v3, v7, Le/a/c/i/e/a;->b:Ljava/lang/String;

    .line 13
    iget-boolean v4, v7, Le/a/c/i/e/a;->f:Z

    if-eqz v3, :cond_9

    .line 14
    invoke-static {v3}, Le/a/c/c0/q;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v4, :cond_8

    const-string v10, "10_digit"

    goto :goto_4

    :cond_8
    move-object v12, v3

    goto :goto_5

    :cond_9
    :goto_4
    move-object v12, v10

    .line 15
    :goto_5
    iget-object v13, v7, Le/a/c/i/e/a;->a:Ljava/lang/String;

    .line 16
    iget-object v14, v7, Le/a/c/i/e/a;->d:Lw3/b/a/b;

    .line 17
    iget-object v15, v7, Le/a/c/i/e/a;->c:Ljava/lang/String;

    .line 18
    iget-object v3, v7, Le/a/c/i/e/a;->e:Le/a/c/r/j/p;

    .line 19
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    .line 20
    iget-boolean v3, v7, Le/a/c/i/e/a;->f:Z

    const/16 v21, 0x80

    move-object v11, v2

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    move/from16 v20, v3

    .line 21
    invoke-direct/range {v11 .. v21}, Le/a/c/i/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lw3/b/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/feedback/FeedbackType;Le/a/c/b0/c;ZI)V

    .line 22
    iget-object v0, v6, Le/a/a/c/a/h;->x:Le/a/c/i/j/c/a;

    .line 23
    iget-object v1, v7, Le/a/c/i/e/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    const-string v1, ""

    .line 24
    :goto_6
    invoke-interface {v0, v1}, Le/a/c/i/j/c/a;->a(Ljava/lang/String;)Z

    move-result v3

    .line 25
    iget-object v0, v6, Le/a/a/c/a/h;->h:Ljava/util/Map;

    if-eqz v0, :cond_b

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/i/e/b;

    .line 26
    :cond_b
    iget v4, v6, Le/a/a/c/a/h;->b:I

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v4

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Le/a/a/c/a/h;->v(Le/a/c/i/e/b;IZJ)Le/a/c/r/j/s;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 27
    iget-object v1, v0, Le/a/c/r/j/s;->d:Le/a/c/r/j/h;

    if-eqz v1, :cond_c

    .line 28
    iget-object v1, v6, Le/a/a/c/a/h;->t:Le/a/c/e/e;

    .line 29
    iget-object v2, v7, Le/a/c/i/e/a;->b:Ljava/lang/String;

    .line 30
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/a/h;->s()Ljava/lang/String;

    move-result-object v3

    .line 31
    iget-boolean v4, v0, Le/a/c/r/j/s;->k:Z

    .line 32
    invoke-interface {v1, v2, v3, v4}, Le/a/c/e/e;->k(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_c
    :goto_7
    return-object v0
.end method

.method public r(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/a/h;->x:Le/a/c/i/j/c/a;

    invoke-interface {v0, p1}, Le/a/c/i/j/c/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final s()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/c/a/h;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "spam_tab"

    goto :goto_0

    :cond_1
    const-string v0, "others_tab"

    :goto_0
    return-object v0
.end method

.method public final synthetic t(JLs1/w/d;)Ljava/lang/Object;
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

    instance-of v0, p3, Le/a/a/c/a/h$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/a/c/a/h$b;

    iget v1, v0, Le/a/a/c/a/h$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/c/a/h$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/c/a/h$b;

    invoke-direct {v0, p0, p3}, Le/a/a/c/a/h$b;-><init>(Le/a/a/c/a/h;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/a/c/a/h$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/c/a/h$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p1, v0, Le/a/a/c/a/h$b;->i:J

    iget-object v1, v0, Le/a/a/c/a/h$b;->h:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/a/h;

    iget-object v0, v0, Le/a/a/c/a/h$b;->g:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/a/h;

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
    iget-wide v4, p0, Le/a/a/c/a/h;->p:J

    cmp-long p3, v4, p1

    if-eqz p3, :cond_4

    .line 5
    iget-object p3, p0, Le/a/a/c/a/h;->u:Le/a/c/i/e/c;

    iput-object p0, v0, Le/a/a/c/a/h$b;->g:Ljava/lang/Object;

    iput-object p0, v0, Le/a/a/c/a/h$b;->h:Ljava/lang/Object;

    iput-wide p1, v0, Le/a/a/c/a/h$b;->i:J

    iput v3, v0, Le/a/a/c/a/h$b;->e:I

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

    iput-object p3, v1, Le/a/a/c/a/h;->k:Ljava/util/Map;

    .line 7
    iput-wide p1, v0, Le/a/a/c/a/h;->p:J

    .line 8
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final u()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/a/h;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Le/a/a/c/a/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Le/a/a/c/a/h;->b:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/a/a/c/a/h;->h:Ljava/util/Map;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Le/a/a/c/a/h;->i:Z

    .line 6
    iput-boolean v1, p0, Le/a/a/c/a/h;->j:Z

    .line 7
    iget-object v2, p0, Le/a/a/c/a/h;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 8
    iput-object v0, p0, Le/a/a/c/a/h;->m:Le/a/c/i/g/c;

    .line 9
    iput-object v0, p0, Le/a/a/c/a/h;->n:Ls1/z/b/a;

    .line 10
    iget-object v0, p0, Le/a/a/c/a/h;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Le/a/a/c/a/h;->f:Z

    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Le/a/a/c/a/h;->p:J

    return-void
.end method

.method public final v(Le/a/c/i/e/b;IZJ)Le/a/c/r/j/s;
    .locals 29
    .param p2    # I
        .annotation runtime Le/a/c/r/l/a;
        .end annotation
    .end param

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 1
    sget-object v2, Le/a/c/r/j/p$f;->b:Le/a/c/r/j/p$f;

    move-object/from16 v13, p0

    iget-object v3, v13, Le/a/a/c/a/h;->k:Ljava/util/Map;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    float-to-double v6, v3

    const-wide v8, 0x3fe3333333333333L    # 0.6

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    const/4 v6, 0x0

    if-eqz v3, :cond_2

    return-object v6

    .line 2
    :cond_2
    sget v3, Le/a/c/r/l/a;->a:I

    const/4 v3, 0x3

    const/4 v7, 0x6

    const/4 v8, -0x1

    const-string v9, "datetime"

    const-string v10, "insightsFeedback"

    if-ne v1, v3, :cond_5

    .line 3
    iget-object v1, v0, Le/a/c/i/e/b;->c:Lw3/b/a/b;

    .line 4
    invoke-static {v0, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v14, Le/a/c/r/j/s;

    .line 6
    iget-object v3, v0, Le/a/c/i/e/b;->f:Ljava/lang/String;

    const-string v9, "reported_not_spam"

    .line 7
    invoke-static {v3, v9, v5}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v10, v0

    goto :goto_2

    :cond_3
    move-object v10, v6

    .line 8
    :goto_2
    iget-object v0, v0, Le/a/c/i/e/b;->f:Ljava/lang/String;

    .line 9
    invoke-static {v0, v9, v5}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 10
    :cond_4
    sget-object v0, Le/a/c/r/j/h$d;->d:Le/a/c/r/j/h$d;

    move-object v6, v0

    .line 11
    :goto_3
    new-instance v3, Le/a/c/r/j/n;

    .line 12
    new-instance v0, Le/a/c/r/j/m;

    invoke-direct {v0, v8, v4, v4, v7}, Le/a/c/r/j/m;-><init>(IIII)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0xff8

    const-string v17, ""

    const-string v18, ""

    move-object v15, v3

    move-object/from16 v16, v0

    .line 13
    invoke-direct/range {v15 .. v28}, Le/a/c/r/j/n;-><init>(Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/k;Ls1/k;Ls1/k;Ls1/k;Ljava/util/List;Ljava/lang/Integer;Lcom/truecaller/insights/models/smartcards/InfocardUiType;I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 14
    new-instance v5, Le/a/c/r/j/q;

    invoke-direct {v5, v1}, Le/a/c/r/j/q;-><init>(Lw3/b/a/b;)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v15, 0x760

    const/4 v4, 0x0

    move-object v0, v14

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v10

    move-object v10, v11

    move v11, v12

    move v12, v15

    .line 15
    invoke-direct/range {v0 .. v12}, Le/a/c/r/j/s;-><init>(Le/a/c/r/j/p;Le/a/c/r/j/n;Le/a/c/r/j/a;Le/a/c/r/j/h;Le/a/c/r/j/q;Le/a/c/r/j/r;Le/a/c/r/j/o;Le/a/c/i/e/b;Lcom/truecaller/insights/repository/filters/InfoCardType;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;ZI)V

    :goto_4
    move-object v6, v14

    goto/16 :goto_8

    :cond_5
    const/4 v3, 0x2

    if-ne v1, v3, :cond_9

    if-nez p3, :cond_9

    .line 16
    iget-object v1, v0, Le/a/c/i/e/b;->c:Lw3/b/a/b;

    .line 17
    invoke-static {v0, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v14, Le/a/c/r/j/s;

    .line 19
    iget-object v3, v0, Le/a/c/i/e/b;->f:Ljava/lang/String;

    .line 20
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    move v3, v5

    goto :goto_5

    :cond_6
    move v3, v4

    :goto_5
    if-eqz v3, :cond_7

    move-object v9, v0

    goto :goto_6

    :cond_7
    move-object v9, v6

    .line 21
    :goto_6
    iget-object v0, v0, Le/a/c/i/e/b;->f:Ljava/lang/String;

    const-string v3, "reported_spam"

    .line 22
    invoke-static {v0, v3, v5}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_7

    .line 23
    :cond_8
    sget-object v0, Le/a/c/r/j/h$f;->d:Le/a/c/r/j/h$f;

    move-object v6, v0

    .line 24
    :goto_7
    new-instance v3, Le/a/c/r/j/n;

    .line 25
    new-instance v0, Le/a/c/r/j/m;

    invoke-direct {v0, v8, v4, v4, v7}, Le/a/c/r/j/m;-><init>(IIII)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0xff8

    const-string v17, ""

    const-string v18, ""

    move-object v15, v3

    move-object/from16 v16, v0

    .line 26
    invoke-direct/range {v15 .. v28}, Le/a/c/r/j/n;-><init>(Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/k;Ls1/k;Ls1/k;Ls1/k;Ljava/util/List;Ljava/lang/Integer;Lcom/truecaller/insights/models/smartcards/InfocardUiType;I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 27
    new-instance v5, Le/a/c/r/j/q;

    invoke-direct {v5, v1}, Le/a/c/r/j/q;-><init>(Lw3/b/a/b;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v15, 0x760

    const/4 v4, 0x0

    move-object v0, v14

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move v12, v15

    .line 28
    invoke-direct/range {v0 .. v12}, Le/a/c/r/j/s;-><init>(Le/a/c/r/j/p;Le/a/c/r/j/n;Le/a/c/r/j/a;Le/a/c/r/j/h;Le/a/c/r/j/q;Le/a/c/r/j/r;Le/a/c/r/j/o;Le/a/c/i/e/b;Lcom/truecaller/insights/repository/filters/InfoCardType;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;ZI)V

    goto :goto_4

    :cond_9
    :goto_8
    return-object v6
.end method
