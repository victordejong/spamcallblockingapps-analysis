.class public final Le/a/c/a/q/b/e;
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

.field public final k:Le/a/c/a/q/b/f;

.field public final l:Ls1/w/f;

.field public final m:Le/a/c/a/q/b/a;

.field public final n:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/c/a/q/b/f;Ls1/w/f;Le/a/c/a/q/b/a;Ln3/v/k0;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/a/q/b/f;",
            "Ls1/w/f;",
            "Le/a/c/a/q/b/a;",
            "Ln3/v/k0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "updatesPageFlowUseCase"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesBoundaryUseCase"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emptyStateLv"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/z/i0;-><init>()V

    iput-object p1, p0, Le/a/c/a/q/b/e;->k:Le/a/c/a/q/b/f;

    iput-object p2, p0, Le/a/c/a/q/b/e;->l:Ls1/w/f;

    iput-object p3, p0, Le/a/c/a/q/b/e;->m:Le/a/c/a/q/b/a;

    iput-object p4, p0, Le/a/c/a/q/b/e;->n:Ln3/v/k0;

    const/4 p1, 0x0

    const/4 p3, 0x1

    .line 2
    invoke-static {p1, p3}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/c/a/q/b/e;->d:Lq3/a/y;

    .line 3
    invoke-interface {p2, p1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object p1

    iput-object p1, p0, Le/a/c/a/q/b/e;->e:Lq3/a/i0;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/c/a/q/b/e;->f:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/c/a/q/b/e;->g:Ljava/util/List;

    .line 7
    sget p1, Lkotlinx/coroutines/CoroutineExceptionHandler;->d0:I

    sget-object p1, Lkotlinx/coroutines/CoroutineExceptionHandler$a;->a:Lkotlinx/coroutines/CoroutineExceptionHandler$a;

    new-instance p2, Le/a/c/a/q/b/e$a;

    invoke-direct {p2, p1}, Le/a/c/a/q/b/e$a;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$a;)V

    .line 8
    iput-object p2, p0, Le/a/c/a/q/b/e;->j:Lkotlinx/coroutines/CoroutineExceptionHandler;

    return-void
.end method

.method public static final synthetic i(Le/a/c/a/q/b/e;)Le/a/c/q/i;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/c/a/q/b/e;->i:Le/a/c/q/i;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "boundary"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
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
    .locals 7
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
    iget-object v1, p0, Le/a/c/a/q/b/e;->e:Lq3/a/i0;

    iget-object v2, p0, Le/a/c/a/q/b/e;->j:Lkotlinx/coroutines/CoroutineExceptionHandler;

    new-instance v4, Le/a/c/a/q/b/e$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Le/a/c/a/q/b/e$c;-><init>(Le/a/c/a/q/b/e;Ln3/z/i0$d;Ln3/z/i0$a;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public g(Ln3/z/i0$d;Ln3/z/i0$a;)V
    .locals 7
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
    iget-object v1, p0, Le/a/c/a/q/b/e;->e:Lq3/a/i0;

    iget-object v2, p0, Le/a/c/a/q/b/e;->j:Lkotlinx/coroutines/CoroutineExceptionHandler;

    new-instance v4, Le/a/c/a/q/b/e$d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Le/a/c/a/q/b/e$d;-><init>(Le/a/c/a/q/b/e;Ln3/z/i0$d;Ln3/z/i0$a;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public h(Ln3/z/i0$c;Ln3/z/i0$b;)V
    .locals 12
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

    const-string v0, "callback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Ln3/z/i0$c;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lw3/b/a/b;

    invoke-direct {p1}, Lw3/b/a/b;-><init>()V

    const-string v0, "DateTime.now()"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-wide v0, p1, Lw3/b/a/e0/e;->a:J

    :goto_0
    move-wide v4, v0

    .line 5
    iget-object p1, p0, Le/a/c/a/q/b/e;->e:Lq3/a/i0;

    iget-object v0, p0, Le/a/c/a/q/b/e;->j:Lkotlinx/coroutines/CoroutineExceptionHandler;

    const/4 v8, 0x0

    new-instance v9, Le/a/c/a/q/b/e$e;

    const/4 v7, 0x0

    move-object v2, v9

    move-object v3, p0

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Le/a/c/a/q/b/e$e;-><init>(Le/a/c/a/q/b/e;JLn3/z/i0$b;Ls1/w/d;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, p1

    move-object v7, v0

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final j(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p1, Le/a/c/a/q/b/e$b;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/c/a/q/b/e$b;

    iget v2, v1, Le/a/c/a/q/b/e$b;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/c/a/q/b/e$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/c/a/q/b/e$b;

    invoke-direct {v1, p0, p1}, Le/a/c/a/q/b/e$b;-><init>(Le/a/c/a/q/b/e;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/c/a/q/b/e$b;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/c/a/q/b/e$b;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v1, v1, Le/a/c/a/q/b/e$b;->g:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/q/b/e;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/a/q/b/e;->i:Le/a/c/q/i;

    if-nez p1, :cond_4

    .line 5
    iget-object p1, p0, Le/a/c/a/q/b/e;->m:Le/a/c/a/q/b/a;

    iput-object p0, v1, Le/a/c/a/q/b/e$b;->g:Ljava/lang/Object;

    iput v4, v1, Le/a/c/a/q/b/e$b;->e:I

    .line 6
    iget-object v3, p1, Le/a/c/a/i/k;->a:Ls1/w/f;

    new-instance v4, Le/a/c/a/i/k$a;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v0, v5}, Le/a/c/a/i/k$a;-><init>(Le/a/c/a/i/k;Ljava/lang/Object;Ls1/w/d;)V

    invoke-static {v3, v4, v1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_3

    return-object v2

    :cond_3
    move-object v1, p0

    .line 7
    :goto_1
    check-cast p1, Le/a/c/q/i;

    iput-object p1, v1, Le/a/c/a/q/b/e;->i:Le/a/c/q/i;

    :cond_4
    return-object v0
.end method
