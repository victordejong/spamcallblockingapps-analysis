.class public final Le/a/c/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/e/c;
.implements Lq3/a/i0;


# instance fields
.field public final a:Z

.field public final b:Lq3/a/y;

.field public final c:Le/a/c/c/f/d;

.field public final d:Le/a/q2/a;

.field public final e:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/c/f/d;Le/a/q2/a;Le/a/c/b/j;Ls1/w/f;)V
    .locals 1
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analyticsUseCases"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioCoroutineContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/e/d;->c:Le/a/c/c/f/d;

    iput-object p2, p0, Le/a/c/e/d;->d:Le/a/q2/a;

    iput-object p4, p0, Le/a/c/e/d;->e:Ls1/w/f;

    .line 2
    invoke-interface {p3}, Le/a/c/b/j;->f0()Z

    move-result p1

    iput-boolean p1, p0, Le/a/c/e/d;->a:Z

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 3
    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/c/e/d;->b:Lq3/a/y;

    return-void
.end method


# virtual methods
.method public a(Le/a/c/r/d/b;)V
    .locals 7

    const-string v0, "simpleAnalyticsEvents"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/c/e/d;->a:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    new-instance v4, Le/a/c/e/d$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/c/e/d$c;-><init>(Le/a/c/e/d;Le/a/c/r/d/b;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/r/d/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "simpleAnalyticsEvents"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/c/e/d;->a:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    new-instance v4, Le/a/c/e/d$d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/c/e/d$d;-><init>(Le/a/c/e/d;Ljava/util/List;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/a/c/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Le/a/c/e/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/c/e/d$b;-><init>(Le/a/c/e/d;Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/a/c/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Le/a/c/e/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/c/e/d$a;-><init>(Le/a/c/e/d;Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/e/d;->b:Lq3/a/y;

    iget-object v1, p0, Le/a/c/e/d;->e:Ls1/w/f;

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method
