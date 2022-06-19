.class public final Le/a/c/i/h/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/i/h/a;
.implements Lq3/a/i0;


# instance fields
.field public final a:Lq3/a/y;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Landroid/content/Context;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c/b/l;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c/i/m/f;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/q/f/a/f/e;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c/i/i/a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c/g/f;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c/i/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c/i/d/a;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c/i/j/a;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c/b/e;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c/w/o0/i;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Le/a/c/g/w;

.field public final o:Ls1/w/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/c/g/w;Ls1/w/f;)V
    .locals 1
    .param p13    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo3/a<",
            "Le/a/c/b/l;",
            ">;",
            "Lo3/a<",
            "Le/a/c/i/m/f;",
            ">;",
            "Lo3/a<",
            "Le/q/f/a/f/e;",
            ">;",
            "Lo3/a<",
            "Le/a/c/i/i/a;",
            ">;",
            "Lo3/a<",
            "Le/a/c/g/f;",
            ">;",
            "Lo3/a<",
            "Le/a/c/i/a/b;",
            ">;",
            "Lo3/a<",
            "Le/a/c/i/d/a;",
            ">;",
            "Lo3/a<",
            "Le/a/c/i/j/a;",
            ">;",
            "Lo3/a<",
            "Le/a/c/b/e;",
            ">;",
            "Lo3/a<",
            "Le/a/c/w/o0/i;",
            ">;",
            "Le/a/c/g/w;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsVersionProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsSyncStatusManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "malanaSeed"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parseManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsAndroidCategorizer"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountInformationParityLogger"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mInsightsEnrichmentManager"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderInfoSyncFeature"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentHelper"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesFilterManagerLazy"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesModelSyncFeature"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioCoroutineContext"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/i/h/b;->c:Landroid/content/Context;

    iput-object p2, p0, Le/a/c/i/h/b;->d:Lo3/a;

    iput-object p3, p0, Le/a/c/i/h/b;->e:Lo3/a;

    iput-object p4, p0, Le/a/c/i/h/b;->f:Lo3/a;

    iput-object p5, p0, Le/a/c/i/h/b;->g:Lo3/a;

    iput-object p6, p0, Le/a/c/i/h/b;->h:Lo3/a;

    iput-object p7, p0, Le/a/c/i/h/b;->i:Lo3/a;

    iput-object p8, p0, Le/a/c/i/h/b;->j:Lo3/a;

    iput-object p9, p0, Le/a/c/i/h/b;->k:Lo3/a;

    iput-object p10, p0, Le/a/c/i/h/b;->l:Lo3/a;

    iput-object p11, p0, Le/a/c/i/h/b;->m:Lo3/a;

    iput-object p12, p0, Le/a/c/i/h/b;->n:Le/a/c/g/w;

    iput-object p13, p0, Le/a/c/i/h/b;->o:Ls1/w/f;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/c/i/h/b;->a:Lq3/a/y;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Le/a/c/i/h/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/a/c/i/h/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/c/i/h/b;->h:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/g/f;

    invoke-interface {v0}, Le/a/c/g/f;->a()V

    .line 4
    iget-object v0, p0, Le/a/c/i/h/b;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/q/f/a/f/e;

    invoke-interface {v0}, Le/q/f/a/f/e;->m()V

    .line 5
    iget-object v0, p0, Le/a/c/i/h/b;->g:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/i/i/a;

    invoke-interface {v0}, Le/a/c/i/i/a;->a()V

    .line 6
    iget-object v0, p0, Le/a/c/i/h/b;->m:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/w/o0/i;

    invoke-interface {v0}, Le/a/c/i/b/c;->a()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7
    new-instance v4, Le/a/c/i/h/b$e;

    const/4 v0, 0x0

    invoke-direct {v4, v0, p0}, Le/a/c/i/h/b$e;-><init>(Ls1/w/d;Le/a/c/i/h/b;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8
    new-instance v10, Le/a/c/i/h/b$f;

    invoke-direct {v10, v0, p0}, Le/a/c/i/h/b$f;-><init>(Ls1/w/d;Le/a/c/i/h/b;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 9
    new-instance v4, Le/a/c/i/h/b$g;

    invoke-direct {v4, v0, p0}, Le/a/c/i/h/b$g;-><init>(Ls1/w/d;Le/a/c/i/h/b;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ls1/w/d;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p1, Le/a/c/i/h/b$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/i/h/b$a;

    iget v1, v0, Le/a/c/i/h/b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/h/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/h/b$a;

    invoke-direct {v0, p0, p1}, Le/a/c/i/h/b$a;-><init>(Le/a/c/i/h/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/i/h/b$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/h/b$a;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/c/i/h/b$a;->h:Ljava/lang/Object;

    check-cast v2, Le/a/c/b/n;

    iget-object v5, v0, Le/a/c/i/h/b$a;->g:Ljava/lang/Object;

    check-cast v5, Le/a/c/i/h/b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Le/a/c/i/h/b$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/i/h/b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/i/h/b;->d:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/b/l;

    iput-object p0, v0, Le/a/c/i/h/b$a;->g:Ljava/lang/Object;

    iput v5, v0, Le/a/c/i/h/b$a;->e:I

    invoke-interface {p1, v0}, Le/a/c/b/l;->f(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 5
    :goto_1
    check-cast p1, Le/a/c/b/n;

    .line 6
    invoke-virtual {p1}, Le/a/c/b/n;->a()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 7
    iget v6, p1, Le/a/c/b/n;->b:I

    if-lt v6, v5, :cond_7

    .line 8
    iget-object v5, v2, Le/a/c/i/h/b;->j:Lo3/a;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/c/i/d/a;

    iput-object v2, v0, Le/a/c/i/h/b$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/i/h/b$a;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/c/i/h/b$a;->e:I

    invoke-interface {v5, v0}, Le/a/c/i/d/a;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_6

    return-object v1

    :cond_6
    move-object v5, v2

    move-object v2, p1

    :goto_2
    move-object p1, v2

    move-object v2, v5

    .line 9
    :cond_7
    iget p1, p1, Le/a/c/b/n;->b:I

    if-lt p1, v4, :cond_8

    .line 10
    iget-object p1, v2, Le/a/c/i/h/b;->j:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/i/d/a;

    const/4 v2, 0x0

    iput-object v2, v0, Le/a/c/i/h/b$a;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/c/i/h/b$a;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/c/i/h/b$a;->e:I

    invoke-interface {p1, v0}, Le/a/c/i/d/a;->h(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 11
    :cond_8
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final synthetic c(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p1, Le/a/c/i/h/b$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/i/h/b$b;

    iget v1, v0, Le/a/c/i/h/b$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/h/b$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/h/b$b;

    invoke-direct {v0, p0, p1}, Le/a/c/i/h/b$b;-><init>(Le/a/c/i/h/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/i/h/b$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/h/b$b;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/c/i/h/b$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/i/h/b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/i/h/b;->d:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/b/l;

    iput-object p0, v0, Le/a/c/i/h/b$b;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/c/i/h/b$b;->e:I

    invoke-interface {p1, v0}, Le/a/c/b/l;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p1, Le/a/c/b/n;

    invoke-virtual {p1}, Le/a/c/b/n;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 5
    iget-object p1, v2, Le/a/c/i/h/b;->i:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/i/a/b;

    const/4 v2, 0x0

    iput-object v2, v0, Le/a/c/i/h/b$b;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/i/h/b$b;->e:I

    invoke-interface {p1, v0}, Le/a/c/i/a/b;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 6
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final d(Ls1/w/d;)Ljava/lang/Object;
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

    instance-of v0, p1, Le/a/c/i/h/b$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/i/h/b$c;

    iget v1, v0, Le/a/c/i/h/b$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/h/b$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/h/b$c;

    invoke-direct {v0, p0, p1}, Le/a/c/i/h/b$c;-><init>(Le/a/c/i/h/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/i/h/b$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/h/b$c;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/c/i/h/b$c;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/i/h/b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/i/h/b;->d:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/b/l;

    iput-object p0, v0, Le/a/c/i/h/b$c;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/c/i/h/b$c;->e:I

    invoke-interface {p1, v0}, Le/a/c/b/l;->h(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    check-cast p1, Le/a/c/b/n;

    .line 6
    invoke-virtual {p1}, Le/a/c/b/n;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 7
    iget-object v2, v2, Le/a/c/i/h/b;->j:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/i/d/a;

    .line 8
    iget-object v4, p1, Le/a/c/b/n;->a:Ljava/lang/Integer;

    .line 9
    iget p1, p1, Le/a/c/b/n;->b:I

    const/4 v5, 0x0

    .line 10
    iput-object v5, v0, Le/a/c/i/h/b$c;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/i/h/b$c;->e:I

    invoke-interface {v2, v4, p1, v0}, Le/a/c/i/d/a;->g(Ljava/lang/Integer;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 11
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final synthetic e(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Le/a/c/i/h/b$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/i/h/b$d;

    iget v1, v0, Le/a/c/i/h/b$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/h/b$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/h/b$d;

    invoke-direct {v0, p0, p1}, Le/a/c/i/h/b$d;-><init>(Le/a/c/i/h/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/i/h/b$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/h/b$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/c/i/h/b$d;->g:Ljava/lang/Object;

    check-cast v0, Le/a/c/i/h/b;

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
    iput-object p0, v0, Le/a/c/i/h/b$d;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/i/h/b$d;->e:I

    invoke-virtual {p0, v0}, Le/a/c/i/h/b;->f(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    iget-object p1, v0, Le/a/c/i/h/b;->e:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/i/m/f;

    invoke-interface {p1}, Le/a/c/i/m/f;->a()V

    .line 6
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final f(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/i/h/b$h;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/i/h/b$h;

    iget v1, v0, Le/a/c/i/h/b$h;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/h/b$h;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/h/b$h;

    invoke-direct {v0, p0, p1}, Le/a/c/i/h/b$h;-><init>(Le/a/c/i/h/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/i/h/b$h;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/h/b$h;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/c/i/h/b$h;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/i/h/b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/i/h/b;->d:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/b/l;

    iput-object p0, v0, Le/a/c/i/h/b$h;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/c/i/h/b$h;->e:I

    invoke-interface {p1, v0}, Le/a/c/b/l;->g(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p1, Le/a/c/b/n;

    invoke-virtual {p1}, Le/a/c/b/n;->a()Z

    move-result p1

    if-nez p1, :cond_6

    .line 5
    iget-object v4, v2, Le/a/c/i/h/b;->l:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/b/e;

    invoke-interface {v4}, Le/a/c/b/e;->a()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6
    iget-object p1, v2, Le/a/c/i/h/b;->d:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/b/l;

    const/4 v2, 0x0

    iput-object v2, v0, Le/a/c/i/h/b$h;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/i/h/b$h;->e:I

    invoke-interface {p1, v0}, Le/a/c/b/l;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p1, Le/a/c/b/n;

    invoke-virtual {p1}, Le/a/c/b/n;->a()Z

    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 8
    :cond_6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/i/h/b;->o:Ls1/w/f;

    iget-object v1, p0, Le/a/c/i/h/b;->a:Lq3/a/y;

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method
