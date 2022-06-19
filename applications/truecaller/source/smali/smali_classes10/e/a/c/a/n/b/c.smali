.class public final Le/a/c/a/n/b/c;
.super Ln3/z/i0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/z/i0<",
        "Ljava/lang/Long;",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lq3/a/y;

.field public final e:Lq3/a/i0;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Le/a/c/q/i;

.field public final j:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field public final k:Le/a/c/a/n/b/e;

.field public final l:Ls1/w/f;

.field public final m:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/c/a/n/b/e;Ls1/w/f;Ln3/v/k0;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/a/n/b/e;",
            "Ls1/w/f;",
            "Ln3/v/k0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "remindersPageFlowUseCase"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/z/i0;-><init>()V

    iput-object p1, p0, Le/a/c/a/n/b/c;->k:Le/a/c/a/n/b/e;

    iput-object p2, p0, Le/a/c/a/n/b/c;->l:Ls1/w/f;

    iput-object p3, p0, Le/a/c/a/n/b/c;->m:Ln3/v/k0;

    const/4 p1, 0x0

    const/4 p3, 0x1

    .line 2
    invoke-static {p1, p3}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/c/a/n/b/c;->d:Lq3/a/y;

    .line 3
    invoke-interface {p2, p1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object p1

    iput-object p1, p0, Le/a/c/a/n/b/c;->e:Lq3/a/i0;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/c/a/n/b/c;->f:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/c/a/n/b/c;->g:Ljava/util/List;

    .line 7
    sget p1, Lkotlinx/coroutines/CoroutineExceptionHandler;->d0:I

    sget-object p1, Lkotlinx/coroutines/CoroutineExceptionHandler$a;->a:Lkotlinx/coroutines/CoroutineExceptionHandler$a;

    new-instance p2, Le/a/c/a/n/b/c$a;

    invoke-direct {p2, p1}, Le/a/c/a/n/b/c$a;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$a;)V

    .line 8
    iput-object p2, p0, Le/a/c/a/n/b/c;->j:Lkotlinx/coroutines/CoroutineExceptionHandler;

    return-void
.end method

.method public static final synthetic i(Le/a/c/a/n/b/c;)Le/a/c/q/i;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/c/a/n/b/c;->i:Le/a/c/q/i;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "boundary"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final j(Le/a/c/a/n/b/c;Ljava/util/List;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of p0, p1, Ljava/util/Collection;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem;

    .line 4
    instance-of v2, p1, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    if-eqz v2, :cond_3

    .line 5
    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    .line 6
    iget-object p1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    .line 7
    instance-of v2, p1, Le/a/c/a/l/b$e;

    if-nez v2, :cond_2

    .line 8
    instance-of p1, p1, Le/a/c/a/l/b$g;

    if-eqz p1, :cond_3

    :cond_2
    move p1, v0

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v1

    :goto_2
    return v0
.end method

.method public static final k(Le/a/c/a/n/b/c;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/c/a/n/b/c;->i:Le/a/c/q/i;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/a/c/q/i;

    .line 3
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1}, Lw3/b/a/b;-><init>()V

    const/4 v2, 0x5

    .line 4
    iget-object v3, v1, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 5
    invoke-virtual {v3}, Lw3/b/a/a;->V()Lw3/b/a/j;

    move-result-object v3

    .line 6
    iget-wide v4, v1, Lw3/b/a/e0/e;->a:J

    .line 7
    invoke-virtual {v3, v4, v5, v2}, Lw3/b/a/j;->j(JI)J

    move-result-wide v2

    .line 8
    invoke-virtual {v1, v2, v3}, Lw3/b/a/b;->N(J)Lw3/b/a/b;

    move-result-object v1

    const-string v2, "DateTime.now().minusYears(5)"

    .line 9
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-wide v1, v1, Lw3/b/a/e0/e;->a:J

    .line 11
    new-instance v3, Lw3/b/a/b;

    invoke-direct {v3}, Lw3/b/a/b;-><init>()V

    const-string v4, "DateTime.now()"

    .line 12
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-wide v3, v3, Lw3/b/a/e0/e;->a:J

    .line 14
    invoke-direct {v0, v1, v2, v3, v4}, Le/a/c/q/i;-><init>(JJ)V

    iput-object v0, p0, Le/a/c/a/n/b/c;->i:Le/a/c/q/i;

    :cond_0
    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem;

    const-string v0, "item"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Le/a/c/a/i/i;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Le/a/c/a/i/i;

    invoke-interface {p1}, Le/a/c/a/i/i;->a()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Item that needs to be considered an index should implement PagedKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Ln3/z/i0$d;Ln3/z/i0$a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/i0$d<",
            "Ljava/lang/Long;",
            ">;",
            "Ln3/z/i0$a<",
            "Lcom/truecaller/insights/ui/models/AdapterItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Ln3/z/i0$d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p1, Ln3/z/i0$d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    const-string v1, "DateTime.now()"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    :goto_0
    move-wide v4, v0

    .line 5
    iget-object v0, p0, Le/a/c/a/n/b/c;->e:Lq3/a/i0;

    iget-object v1, p0, Le/a/c/a/n/b/c;->j:Lkotlinx/coroutines/CoroutineExceptionHandler;

    const/4 v9, 0x0

    new-instance v10, Le/a/c/a/n/b/c$b;

    const/4 v8, 0x0

    move-object v2, v10

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v8}, Le/a/c/a/n/b/c$b;-><init>(Le/a/c/a/n/b/c;JLn3/z/i0$d;Ln3/z/i0$a;Ls1/w/d;)V

    const/4 p1, 0x2

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, v1

    move-object v8, v9

    move-object v9, v10

    move v10, p1

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public g(Ln3/z/i0$d;Ln3/z/i0$a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/i0$d<",
            "Ljava/lang/Long;",
            ">;",
            "Ln3/z/i0$a<",
            "Lcom/truecaller/insights/ui/models/AdapterItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Ln3/z/i0$d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p1, Ln3/z/i0$d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    const-string v1, "DateTime.now()"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    :goto_0
    move-wide v4, v0

    .line 5
    iget-object v0, p0, Le/a/c/a/n/b/c;->e:Lq3/a/i0;

    iget-object v1, p0, Le/a/c/a/n/b/c;->j:Lkotlinx/coroutines/CoroutineExceptionHandler;

    const/4 v9, 0x0

    new-instance v10, Le/a/c/a/n/b/c$c;

    const/4 v8, 0x0

    move-object v2, v10

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v8}, Le/a/c/a/n/b/c$c;-><init>(Le/a/c/a/n/b/c;JLn3/z/i0$d;Ln3/z/i0$a;Ls1/w/d;)V

    const/4 p1, 0x2

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, v1

    move-object v8, v9

    move-object v9, v10

    move v10, p1

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public h(Ln3/z/i0$c;Ln3/z/i0$b;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/i0$c<",
            "Ljava/lang/Long;",
            ">;",
            "Ln3/z/i0$b<",
            "Lcom/truecaller/insights/ui/models/AdapterItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lw3/b/a/b;

    invoke-direct {p1}, Lw3/b/a/b;-><init>()V

    const-string v0, "DateTime.now()"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-wide v3, p1, Lw3/b/a/e0/e;->a:J

    .line 4
    iget-object p1, p0, Le/a/c/a/n/b/c;->e:Lq3/a/i0;

    iget-object v0, p0, Le/a/c/a/n/b/c;->j:Lkotlinx/coroutines/CoroutineExceptionHandler;

    new-instance v8, Le/a/c/a/n/b/c$d;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Le/a/c/a/n/b/c$d;-><init>(Le/a/c/a/n/b/c;JLn3/z/i0$b;Ls1/w/d;)V

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v5, p1

    move-object v6, v0

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
