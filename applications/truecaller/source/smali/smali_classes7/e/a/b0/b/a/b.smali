.class public final Le/a/b0/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lu3/a0;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu3/b0;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu3/b0;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lx3/j$a;

.field public f:Lu3/e0;

.field public g:I

.field public h:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/common/network/util/KnownEndpoints;)Le/a/b0/b/a/b;
    .locals 1

    const-string v0, "endpoint"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/common/network/util/KnownEndpoints;->url()Lu3/a0;

    move-result-object p1

    iput-object p1, p0, Le/a/b0/b/a/b;->a:Lu3/a0;

    return-object p0
.end method

.method public final b(Lx3/j$a;)Le/a/b0/b/a/b;
    .locals 1

    const-string v0, "factory"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/b0/b/a/b;->e:Lx3/j$a;

    return-object p0
.end method

.method public final c(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "api"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lx3/b0$b;

    invoke-direct {v0}, Lx3/b0$b;-><init>()V

    .line 2
    iget-object v1, p0, Le/a/b0/b/a/b;->a:Lu3/a0;

    if-eqz v1, :cond_9

    invoke-virtual {v0, v1}, Lx3/b0$b;->b(Lu3/a0;)Lx3/b0$b;

    .line 3
    iget-object v1, p0, Le/a/b0/b/a/b;->e:Lx3/j$a;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lx3/g0/a/a;->c()Lx3/g0/a/a;

    move-result-object v1

    .line 4
    :goto_0
    iget-object v2, v0, Lx3/b0$b;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Retrofit.Builder()\n     \u2026onverterFactory.create())"

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Le/a/b0/b/a/b;->f:Lu3/e0;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Le/a/b0/b/a/a;->f:Le/a/b0/b/a/a;

    .line 7
    sget-object v1, Le/a/b0/b/a/a;->b:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu3/e0;

    .line 8
    :goto_1
    iget v2, p0, Le/a/b0/b/a/b;->g:I

    if-lez v2, :cond_2

    iget-object v2, p0, Le/a/b0/b/a/b;->h:Ljava/util/concurrent/TimeUnit;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 9
    :goto_2
    iget-object v3, p0, Le/a/b0/b/a/b;->c:Ljava/util/List;

    if-nez v3, :cond_3

    iget-object v3, p0, Le/a/b0/b/a/b;->d:Ljava/util/List;

    if-nez v3, :cond_3

    iget-object v3, p0, Le/a/b0/b/a/b;->b:Ljava/lang/String;

    if-nez v3, :cond_3

    if-eqz v2, :cond_8

    .line 10
    :cond_3
    invoke-virtual {v1}, Lu3/e0;->b()Lu3/e0$a;

    move-result-object v1

    .line 11
    iget-object v3, p0, Le/a/b0/b/a/b;->b:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 12
    invoke-static {v3}, Le/a/n/g0;->F(Ljava/lang/String;)Ljava/util/List;

    .line 13
    new-instance v3, Le/a/b0/b/j/a;

    invoke-direct {v3}, Le/a/b0/b/j/a;-><init>()V

    invoke-virtual {v1, v3}, Lu3/e0$a;->a(Lu3/b0;)Lu3/e0$a;

    .line 14
    :cond_4
    iget-object v3, p0, Le/a/b0/b/a/b;->c:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 15
    iget-object v4, v1, Lu3/e0$a;->c:Ljava/util/List;

    .line 16
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    :cond_5
    iget-object v3, p0, Le/a/b0/b/a/b;->d:Ljava/util/List;

    if-eqz v3, :cond_6

    .line 18
    iget-object v4, v1, Lu3/e0$a;->d:Ljava/util/List;

    .line 19
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    if-eqz v2, :cond_7

    .line 20
    iget-object v2, p0, Le/a/b0/b/a/b;->h:Ljava/util/concurrent/TimeUnit;

    if-eqz v2, :cond_7

    .line 21
    iget v3, p0, Le/a/b0/b/a/b;->g:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4, v2}, Lu3/e0$a;->b(JLjava/util/concurrent/TimeUnit;)Lu3/e0$a;

    .line 22
    :cond_7
    new-instance v2, Lu3/e0;

    invoke-direct {v2, v1}, Lu3/e0;-><init>(Lu3/e0$a;)V

    move-object v1, v2

    .line 23
    :cond_8
    invoke-virtual {v0, v1}, Lx3/b0$b;->d(Lu3/e0;)Lx3/b0$b;

    const-string v1, "builder.client(client)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Lx3/b0$b;->c()Lx3/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx3/b0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    const-string p1, "endpoint"

    .line 25
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(Lu3/e0;)Le/a/b0/b/a/b;
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/b0/b/a/b;->f:Lu3/e0;

    return-object p0
.end method

.method public final e(Lu3/b0;)Le/a/b0/b/a/b;
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b0/b/a/b;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/a/b0/b/a/b;->c:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/b0/b/a/b;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public final f(Ljava/lang/Class;)Le/a/b0/b/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/a/b0/b/a/b;"
        }
    .end annotation

    const-string v0, "api"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "api.simpleName"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Le/a/b0/b/a/b;->b:Ljava/lang/String;

    return-object p0
.end method
