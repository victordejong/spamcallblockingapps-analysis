.class public final Le/a/c/g/y/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/g/y/q;


# instance fields
.field public final a:Le/a/c/c/f/n;

.field public final b:Le/a/c/c0/a;


# direct methods
.method public constructor <init>(Le/a/c/c/f/n;Le/a/c/c0/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "stateUseCases"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsReader"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/g/y/r;->a:Le/a/c/c/f/n;

    iput-object p2, p0, Le/a/c/g/y/r;->b:Le/a/c/c0/a;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/c/g/a0/f;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/c/g/y/r;->b:Le/a/c/c0/a;

    check-cast p1, Le/a/c/c0/b;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p1, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    const-string v2, "classifier/cls_model_medium.json"

    invoke-interface {v1, v2}, Le/a/c/c0/m;->b(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    .line 4
    iget-object v1, p1, Le/a/c/c0/b;->a:Le/m/e/k;

    const-class v2, Lcom/truecaller/insights/categorizer/model/AndroidMultiClassClassifierModel;

    invoke-virtual {v1, v0, v2}, Le/m/e/k;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "gson.fromJson(bufferedRe\u2026ssifierModel::class.java)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Le/a/c/g/a0/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p1, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {p1, v0}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    iget-object p1, p1, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {p1, v0}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/c/g/a0/f;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/g/y/r$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/g/y/r$a;

    iget v1, v0, Le/a/c/g/y/r$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/g/y/r$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/g/y/r$a;

    invoke-direct {v0, p0, p1}, Le/a/c/g/y/r$a;-><init>(Le/a/c/g/y/r;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/g/y/r$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/g/y/r$a;->e:I

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
    iget-object v2, v0, Le/a/c/g/y/r$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/g/y/r;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/g/y/r;->a:Le/a/c/c/f/n;

    iput-object p0, v0, Le/a/c/g/y/r$a;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/c/g/y/r$a;->e:I

    invoke-interface {p1, v0}, Le/a/c/c/f/n;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p1, Le/a/c/g/a0/f;

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    iput-object p1, v0, Le/a/c/g/y/r$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/g/y/r$a;->e:I

    invoke-virtual {v2, v0}, Le/a/c/g/y/r;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    check-cast p1, Le/a/c/g/a0/f;

    :goto_3
    return-object p1
.end method

.method public final synthetic c(Le/a/c/g/a0/f;ILs1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/g/a0/f;",
            "I",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/c/g/y/r$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/c/g/y/r$b;

    iget v1, v0, Le/a/c/g/y/r$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/g/y/r$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/g/y/r$b;

    invoke-direct {v0, p0, p3}, Le/a/c/g/y/r$b;-><init>(Le/a/c/g/y/r;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/c/g/y/r$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/g/y/r$b;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget p2, v0, Le/a/c/g/y/r$b;->h:I

    iget-object p1, v0, Le/a/c/g/y/r$b;->g:Ljava/lang/Object;

    check-cast p1, Le/a/c/g/y/r;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/c/g/y/r;->a:Le/a/c/c/f/n;

    iput-object p0, v0, Le/a/c/g/y/r$b;->g:Ljava/lang/Object;

    iput p2, v0, Le/a/c/g/y/r$b;->h:I

    iput v4, v0, Le/a/c/g/y/r$b;->e:I

    invoke-interface {p3, p1, v0}, Le/a/c/c/f/n;->h(Le/a/c/g/a0/f;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 5
    :goto_1
    iget-object p1, p1, Le/a/c/g/y/r;->a:Le/a/c/c/f/n;

    const/4 p3, 0x0

    iput-object p3, v0, Le/a/c/g/y/r$b;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/g/y/r$b;->e:I

    invoke-interface {p1, p2, v0}, Le/a/c/c/f/n;->s(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 6
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final synthetic d(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/g/y/r$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/g/y/r$c;

    iget v1, v0, Le/a/c/g/y/r$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/g/y/r$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/g/y/r$c;

    invoke-direct {v0, p0, p2}, Le/a/c/g/y/r$c;-><init>(Le/a/c/g/y/r;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/g/y/r$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/g/y/r$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iput v3, v0, Le/a/c/g/y/r$c;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    check-cast p1, Le/a/c/g/y/s;

    :try_start_2
    invoke-virtual {p1, v0}, Le/a/c/g/y/s;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p1, v1, :cond_3

    return-object v1

    .line 5
    :catch_0
    sget-object p1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance p2, Lcom/truecaller/log/UnmutedException$InsightsExceptions;

    sget-object v0, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->MALFORMED_MODEL_RECEIVED:Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;

    invoke-direct {p2, v0}, Lcom/truecaller/log/UnmutedException$InsightsExceptions;-><init>(Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, p2, v0}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 7
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
