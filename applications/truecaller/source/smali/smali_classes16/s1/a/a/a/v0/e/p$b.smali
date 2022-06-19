.class public final Ls1/a/a/a/v0/e/p$b;
.super Ls1/a/a/a/v0/h/h$b;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$b<",
        "Ls1/a/a/a/v0/e/p;",
        "Ls1/a/a/a/v0/e/p$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ls1/a/a/a/v0/h/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$b;-><init>()V

    .line 2
    sget-object v0, Ls1/a/a/a/v0/h/m;->b:Ls1/a/a/a/v0/h/n;

    iput-object v0, p0, Ls1/a/a/a/v0/e/p$b;->c:Ls1/a/a/a/v0/h/n;

    return-void
.end method


# virtual methods
.method public bridge synthetic I(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/p$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/p$b;->h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/p$b;

    return-object p0
.end method

.method public bridge synthetic b(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/h/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/p$b;->h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/p$b;

    return-object p0
.end method

.method public build()Ls1/a/a/a/v0/h/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/p$b;->f()Ls1/a/a/a/v0/e/p;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/p;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ls1/a/a/a/v0/h/v;

    invoke-direct {v0}, Ls1/a/a/a/v0/h/v;-><init>()V

    .line 4
    throw v0
.end method

.method public c()Ls1/a/a/a/v0/h/h$b;
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/p$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/p$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/p$b;->f()Ls1/a/a/a/v0/e/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/p$b;->g(Ls1/a/a/a/v0/e/p;)Ls1/a/a/a/v0/e/p$b;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/p$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/p$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/p$b;->f()Ls1/a/a/a/v0/e/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/p$b;->g(Ls1/a/a/a/v0/e/p;)Ls1/a/a/a/v0/e/p$b;

    return-object v0
.end method

.method public bridge synthetic e(Ls1/a/a/a/v0/h/h;)Ls1/a/a/a/v0/h/h$b;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/e/p;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/p$b;->g(Ls1/a/a/a/v0/e/p;)Ls1/a/a/a/v0/e/p$b;

    return-object p0
.end method

.method public f()Ls1/a/a/a/v0/e/p;
    .locals 3

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls1/a/a/a/v0/e/p;-><init>(Ls1/a/a/a/v0/h/h$b;Ls1/a/a/a/v0/e/a;)V

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/p$b;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/e/p$b;->c:Ls1/a/a/a/v0/h/n;

    invoke-interface {v1}, Ls1/a/a/a/v0/h/n;->getUnmodifiableView()Ls1/a/a/a/v0/h/n;

    move-result-object v1

    iput-object v1, p0, Ls1/a/a/a/v0/e/p$b;->c:Ls1/a/a/a/v0/h/n;

    .line 4
    iget v1, p0, Ls1/a/a/a/v0/e/p$b;->b:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Ls1/a/a/a/v0/e/p$b;->b:I

    .line 5
    :cond_0
    iget-object v1, p0, Ls1/a/a/a/v0/e/p$b;->c:Ls1/a/a/a/v0/h/n;

    .line 6
    iput-object v1, v0, Ls1/a/a/a/v0/e/p;->b:Ls1/a/a/a/v0/h/n;

    return-object v0
.end method

.method public g(Ls1/a/a/a/v0/e/p;)Ls1/a/a/a/v0/e/p$b;
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/p;->e:Ls1/a/a/a/v0/e/p;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p1, Ls1/a/a/a/v0/e/p;->b:Ls1/a/a/a/v0/h/n;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Ls1/a/a/a/v0/e/p$b;->c:Ls1/a/a/a/v0/h/n;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Ls1/a/a/a/v0/e/p;->b:Ls1/a/a/a/v0/h/n;

    .line 6
    iput-object v0, p0, Ls1/a/a/a/v0/e/p$b;->c:Ls1/a/a/a/v0/h/n;

    .line 7
    iget v0, p0, Ls1/a/a/a/v0/e/p$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Ls1/a/a/a/v0/e/p$b;->b:I

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Ls1/a/a/a/v0/e/p$b;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 9
    new-instance v0, Ls1/a/a/a/v0/h/m;

    iget-object v2, p0, Ls1/a/a/a/v0/e/p$b;->c:Ls1/a/a/a/v0/h/n;

    invoke-direct {v0, v2}, Ls1/a/a/a/v0/h/m;-><init>(Ls1/a/a/a/v0/h/n;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/p$b;->c:Ls1/a/a/a/v0/h/n;

    .line 10
    iget v0, p0, Ls1/a/a/a/v0/e/p$b;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/p$b;->b:I

    .line 11
    :cond_2
    iget-object v0, p0, Ls1/a/a/a/v0/e/p$b;->c:Ls1/a/a/a/v0/h/n;

    .line 12
    iget-object v1, p1, Ls1/a/a/a/v0/e/p;->b:Ls1/a/a/a/v0/h/n;

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_3
    :goto_0
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 15
    iget-object p1, p1, Ls1/a/a/a/v0/e/p;->a:Ls1/a/a/a/v0/h/c;

    .line 16
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/h/c;->b(Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/c;

    move-result-object p1

    .line 17
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    return-object p0
.end method

.method public h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/p$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ls1/a/a/a/v0/e/p;->f:Ls1/a/a/a/v0/h/r;

    invoke-interface {v1, p1, p2}, Ls1/a/a/a/v0/h/r;->a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/e/p;
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/p$b;->g(Ls1/a/a/a/v0/e/p;)Ls1/a/a/a/v0/e/p$b;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    :try_start_1
    iget-object p2, p1, Ls1/a/a/a/v0/h/j;->a:Ls1/a/a/a/v0/h/p;

    .line 4
    check-cast p2, Ls1/a/a/a/v0/e/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/e/p$b;->g(Ls1/a/a/a/v0/e/p;)Ls1/a/a/a/v0/e/p$b;

    :cond_1
    throw p1
.end method
