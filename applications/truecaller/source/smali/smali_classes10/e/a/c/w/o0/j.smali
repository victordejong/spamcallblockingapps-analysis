.class public final Le/a/c/w/o0/j;
.super Le/a/c/i/b/e;
.source "SourceFile"

# interfaces
.implements Le/a/c/w/o0/i;


# instance fields
.field public final e:Ljava/lang/String;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/c/r/g/c;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/c/c0/a;

.field public final h:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/c0/a;Ls1/w/f;Le/a/c/b/e;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "assetsReader"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/c/i/b/e;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/c/w/o0/j;->g:Le/a/c/c0/a;

    iput-object p2, p0, Le/a/c/w/o0/j;->h:Ls1/w/f;

    .line 2
    invoke-interface {p3}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/c/w/o0/j;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public B(Ls1/w/d;)Ljava/lang/Object;
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

    .line 1
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    iget-object v0, p0, Le/a/c/w/o0/j;->g:Le/a/c/c0/a;

    check-cast v0, Le/a/c/c0/b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, v0, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    const-string v3, "classifier/updates_whitelisting.json"

    invoke-interface {v2, v3}, Le/a/c/c0/m;->b(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 4
    :try_start_1
    iget-object v3, v0, Le/a/c/c0/b;->a:Le/m/e/k;

    const-class v4, Le/a/c/r/g/b;

    invoke-virtual {v3, v2, v4}, Le/m/e/k;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/r/g/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    iget-object v0, v0, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {v0, v2}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_0
    iget-object v0, v0, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {v0, v1}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    :goto_0
    move-object v3, v1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    .line 6
    :goto_1
    :try_start_2
    sget-object v4, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 7
    invoke-virtual {v4, v3, v1}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    iget-object v0, v0, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {v0, v2}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :goto_2
    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v3}, Le/a/c/r/g/b;->a()Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/c/r/g/a;

    .line 11
    invoke-virtual {v3}, Le/a/c/r/g/a;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Le/a/c/w/o0/j;->e:Ljava/lang/String;

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 12
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 14
    :cond_2
    check-cast v1, Le/a/c/r/g/a;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Le/a/c/r/g/a;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object p1, v0

    .line 15
    :cond_3
    iput-object p1, p0, Le/a/c/w/o0/j;->f:Ljava/util/List;

    .line 16
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :catchall_1
    move-exception p1

    move-object v1, v2

    .line 17
    :goto_3
    iget-object v0, v0, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {v0, v1}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public w(Le/a/c/g/v;)Z
    .locals 2

    const-string v0, "updates"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/w/o0/j$a;

    invoke-direct {v0, p0, p1}, Le/a/c/w/o0/j$a;-><init>(Le/a/c/w/o0/j;Le/a/c/g/v;)V

    const-string p1, "block"

    .line 2
    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Le/a/c/i/b/f;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Le/a/c/i/b/f;-><init>(Le/a/c/i/b/e;Ls1/z/b/a;Ls1/w/d;)V

    const/4 v0, 0x1

    invoke-static {v1, p1, v0, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
