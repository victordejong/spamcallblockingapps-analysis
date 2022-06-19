.class public final Ls1/a/a/a/v0/e/d$b;
.super Ls1/a/a/a/v0/h/h$c;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$c<",
        "Ls1/a/a/a/v0/e/d;",
        "Ls1/a/a/a/v0/e/d$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/u;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$c;-><init>()V

    const/4 v0, 0x6

    .line 2
    iput v0, p0, Ls1/a/a/a/v0/e/d$b;->e:I

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/d$b;->f:Ljava/util/List;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/d$b;->g:Ljava/util/List;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/d$b;->i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/d$b;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/d$b;->i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/d$b;

    return-object p0
.end method

.method public build()Ls1/a/a/a/v0/h/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/d$b;->g()Ls1/a/a/a/v0/e/d;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/d;->isInitialized()Z

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
    new-instance v0, Ls1/a/a/a/v0/e/d$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/d$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/d$b;->g()Ls1/a/a/a/v0/e/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/d$b;->h(Ls1/a/a/a/v0/e/d;)Ls1/a/a/a/v0/e/d$b;

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
    new-instance v0, Ls1/a/a/a/v0/e/d$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/d$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/d$b;->g()Ls1/a/a/a/v0/e/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/d$b;->h(Ls1/a/a/a/v0/e/d;)Ls1/a/a/a/v0/e/d$b;

    return-object v0
.end method

.method public bridge synthetic e(Ls1/a/a/a/v0/h/h;)Ls1/a/a/a/v0/h/h$b;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/e/d;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/d$b;->h(Ls1/a/a/a/v0/e/d;)Ls1/a/a/a/v0/e/d$b;

    return-object p0
.end method

.method public g()Ls1/a/a/a/v0/e/d;
    .locals 4

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls1/a/a/a/v0/e/d;-><init>(Ls1/a/a/a/v0/h/h$c;Ls1/a/a/a/v0/e/a;)V

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/d$b;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v2, p0, Ls1/a/a/a/v0/e/d$b;->e:I

    .line 4
    iput v2, v0, Ls1/a/a/a/v0/e/d;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Ls1/a/a/a/v0/e/d$b;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ls1/a/a/a/v0/e/d$b;->f:Ljava/util/List;

    .line 6
    iget v1, p0, Ls1/a/a/a/v0/e/d$b;->d:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Ls1/a/a/a/v0/e/d$b;->d:I

    .line 7
    :cond_1
    iget-object v1, p0, Ls1/a/a/a/v0/e/d$b;->f:Ljava/util/List;

    .line 8
    iput-object v1, v0, Ls1/a/a/a/v0/e/d;->e:Ljava/util/List;

    .line 9
    iget v1, p0, Ls1/a/a/a/v0/e/d$b;->d:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 10
    iget-object v1, p0, Ls1/a/a/a/v0/e/d$b;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ls1/a/a/a/v0/e/d$b;->g:Ljava/util/List;

    .line 11
    iget v1, p0, Ls1/a/a/a/v0/e/d$b;->d:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Ls1/a/a/a/v0/e/d$b;->d:I

    .line 12
    :cond_2
    iget-object v1, p0, Ls1/a/a/a/v0/e/d$b;->g:Ljava/util/List;

    .line 13
    iput-object v1, v0, Ls1/a/a/a/v0/e/d;->f:Ljava/util/List;

    .line 14
    iput v3, v0, Ls1/a/a/a/v0/e/d;->c:I

    return-object v0
.end method

.method public h(Ls1/a/a/a/v0/e/d;)Ls1/a/a/a/v0/e/d$b;
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/d;->i:Ls1/a/a/a/v0/e/d;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Ls1/a/a/a/v0/e/d;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget v0, p1, Ls1/a/a/a/v0/e/d;->d:I

    .line 4
    iget v2, p0, Ls1/a/a/a/v0/e/d$b;->d:I

    or-int/2addr v1, v2

    iput v1, p0, Ls1/a/a/a/v0/e/d$b;->d:I

    .line 5
    iput v0, p0, Ls1/a/a/a/v0/e/d$b;->e:I

    .line 6
    :cond_2
    iget-object v0, p1, Ls1/a/a/a/v0/e/d;->e:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 8
    iget-object v0, p0, Ls1/a/a/a/v0/e/d$b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p1, Ls1/a/a/a/v0/e/d;->e:Ljava/util/List;

    .line 10
    iput-object v0, p0, Ls1/a/a/a/v0/e/d$b;->f:Ljava/util/List;

    .line 11
    iget v0, p0, Ls1/a/a/a/v0/e/d$b;->d:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Ls1/a/a/a/v0/e/d$b;->d:I

    goto :goto_1

    .line 12
    :cond_3
    iget v0, p0, Ls1/a/a/a/v0/e/d$b;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_4

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ls1/a/a/a/v0/e/d$b;->f:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/d$b;->f:Ljava/util/List;

    .line 14
    iget v0, p0, Ls1/a/a/a/v0/e/d$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/d$b;->d:I

    .line 15
    :cond_4
    iget-object v0, p0, Ls1/a/a/a/v0/e/d$b;->f:Ljava/util/List;

    .line 16
    iget-object v1, p1, Ls1/a/a/a/v0/e/d;->e:Ljava/util/List;

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    :cond_5
    :goto_1
    iget-object v0, p1, Ls1/a/a/a/v0/e/d;->f:Ljava/util/List;

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 20
    iget-object v0, p0, Ls1/a/a/a/v0/e/d$b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    iget-object v0, p1, Ls1/a/a/a/v0/e/d;->f:Ljava/util/List;

    .line 22
    iput-object v0, p0, Ls1/a/a/a/v0/e/d$b;->g:Ljava/util/List;

    .line 23
    iget v0, p0, Ls1/a/a/a/v0/e/d$b;->d:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Ls1/a/a/a/v0/e/d$b;->d:I

    goto :goto_2

    .line 24
    :cond_6
    iget v0, p0, Ls1/a/a/a/v0/e/d$b;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_7

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ls1/a/a/a/v0/e/d$b;->g:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/d$b;->g:Ljava/util/List;

    .line 26
    iget v0, p0, Ls1/a/a/a/v0/e/d$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/d$b;->d:I

    .line 27
    :cond_7
    iget-object v0, p0, Ls1/a/a/a/v0/e/d$b;->g:Ljava/util/List;

    .line 28
    iget-object v1, p1, Ls1/a/a/a/v0/e/d;->f:Ljava/util/List;

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/h/h$c;->f(Ls1/a/a/a/v0/h/h$d;)V

    .line 31
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 32
    iget-object p1, p1, Ls1/a/a/a/v0/e/d;->b:Ls1/a/a/a/v0/h/c;

    .line 33
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/h/c;->b(Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/c;

    move-result-object p1

    .line 34
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    return-object p0
.end method

.method public i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/d$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ls1/a/a/a/v0/e/d;->j:Ls1/a/a/a/v0/h/r;

    invoke-interface {v1, p1, p2}, Ls1/a/a/a/v0/h/r;->a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/e/d;
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/d$b;->h(Ls1/a/a/a/v0/e/d;)Ls1/a/a/a/v0/e/d$b;

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
    check-cast p2, Ls1/a/a/a/v0/e/d;
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
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/e/d$b;->h(Ls1/a/a/a/v0/e/d;)Ls1/a/a/a/v0/e/d$b;

    :cond_1
    throw p1
.end method
