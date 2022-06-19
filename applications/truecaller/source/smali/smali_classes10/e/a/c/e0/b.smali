.class public final Le/a/c/e0/b;
.super Le/a/y2/k;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Le/a/c/b/j;

.field public final d:Le/a/c/g/y/k;

.field public final e:Le/a/c/g/w;


# direct methods
.method public constructor <init>(Le/a/c/b/j;Le/a/c/g/y/k;Le/a/c/g/w;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsStatusProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsCategorizerSeedManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesModelSyncFeature"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/c/e0/b;->c:Le/a/c/b/j;

    iput-object p2, p0, Le/a/c/e0/b;->d:Le/a/c/g/y/k;

    iput-object p3, p0, Le/a/c/e0/b;->e:Le/a/c/g/w;

    const-string p1, "InsightsSeedUpdateWorkAction"

    .line 2
    iput-object p1, p0, Le/a/c/e0/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 3

    .line 1
    new-instance v0, Le/a/c/e0/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/c/e0/b$a;-><init>(Le/a/c/e0/b;Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "runBlocking {\n          \u2026esult.failure()\n        }"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/work/ListenableWorker$a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/e0/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/e0/b;->c:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->s()Z

    move-result v0

    return v0
.end method

.method public final d(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Le/a/c/e0/b$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/e0/b$b;

    iget v1, v0, Le/a/c/e0/b$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/e0/b$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/e0/b$b;

    invoke-direct {v0, p0, p1}, Le/a/c/e0/b$b;-><init>(Le/a/c/e0/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/e0/b$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/e0/b$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

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
    iget-object p1, p0, Le/a/c/e0/b;->d:Le/a/c/g/y/k;

    iput v3, v0, Le/a/c/e0/b$b;->e:I

    const-string v2, "on_download_worker"

    invoke-interface {p1, v2, v0}, Le/a/c/g/y/k;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p1, Le/a/c/g/y/k$a;

    .line 6
    instance-of p1, p1, Le/a/c/g/y/k$a$a;

    if-eqz p1, :cond_4

    .line 7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 8
    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public final e(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Le/a/c/e0/b$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/e0/b$c;

    iget v1, v0, Le/a/c/e0/b$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/e0/b$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/e0/b$c;

    invoke-direct {v0, p0, p1}, Le/a/c/e0/b$c;-><init>(Le/a/c/e0/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/e0/b$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/e0/b$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

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
    iget-object p1, p0, Le/a/c/e0/b;->e:Le/a/c/g/w;

    iput v3, v0, Le/a/c/e0/b$c;->e:I

    check-cast p1, Le/a/c/g/x;

    invoke-virtual {p1, v0}, Le/a/c/g/x;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p1, Le/a/c/g/w$a;

    .line 6
    instance-of v0, p1, Le/a/c/g/w$a$b;

    if-eqz v0, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    instance-of p1, p1, Le/a/c/g/w$a$a;

    if-eqz p1, :cond_5

    const/4 v3, 0x0

    .line 8
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 9
    :cond_5
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
