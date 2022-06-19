.class public final Ls1/a/a/a/v0/e/m$b;
.super Ls1/a/a/a/v0/h/h$c;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$c<",
        "Ls1/a/a/a/v0/e/m;",
        "Ls1/a/a/a/v0/e/m$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:Ls1/a/a/a/v0/e/p;

.field public f:Ls1/a/a/a/v0/e/o;

.field public g:Ls1/a/a/a/v0/e/l;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$c;-><init>()V

    .line 2
    sget-object v0, Ls1/a/a/a/v0/e/p;->e:Ls1/a/a/a/v0/e/p;

    .line 3
    iput-object v0, p0, Ls1/a/a/a/v0/e/m$b;->e:Ls1/a/a/a/v0/e/p;

    .line 4
    sget-object v0, Ls1/a/a/a/v0/e/o;->e:Ls1/a/a/a/v0/e/o;

    .line 5
    iput-object v0, p0, Ls1/a/a/a/v0/e/m$b;->f:Ls1/a/a/a/v0/e/o;

    .line 6
    sget-object v0, Ls1/a/a/a/v0/e/l;->k:Ls1/a/a/a/v0/e/l;

    .line 7
    iput-object v0, p0, Ls1/a/a/a/v0/e/m$b;->g:Ls1/a/a/a/v0/e/l;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/m$b;->h:Ljava/util/List;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/m$b;->i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/m$b;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/m$b;->i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/m$b;

    return-object p0
.end method

.method public build()Ls1/a/a/a/v0/h/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/m$b;->g()Ls1/a/a/a/v0/e/m;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/m;->isInitialized()Z

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
    new-instance v0, Ls1/a/a/a/v0/e/m$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/m$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/m$b;->g()Ls1/a/a/a/v0/e/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/m$b;->h(Ls1/a/a/a/v0/e/m;)Ls1/a/a/a/v0/e/m$b;

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
    new-instance v0, Ls1/a/a/a/v0/e/m$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/m$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/m$b;->g()Ls1/a/a/a/v0/e/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/m$b;->h(Ls1/a/a/a/v0/e/m;)Ls1/a/a/a/v0/e/m$b;

    return-object v0
.end method

.method public bridge synthetic e(Ls1/a/a/a/v0/h/h;)Ls1/a/a/a/v0/h/h$b;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/e/m;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/m$b;->h(Ls1/a/a/a/v0/e/m;)Ls1/a/a/a/v0/e/m$b;

    return-object p0
.end method

.method public g()Ls1/a/a/a/v0/e/m;
    .locals 5

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls1/a/a/a/v0/e/m;-><init>(Ls1/a/a/a/v0/h/h$c;Ls1/a/a/a/v0/e/a;)V

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/m$b;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Ls1/a/a/a/v0/e/m$b;->e:Ls1/a/a/a/v0/e/p;

    .line 4
    iput-object v2, v0, Ls1/a/a/a/v0/e/m;->d:Ls1/a/a/a/v0/e/p;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget-object v2, p0, Ls1/a/a/a/v0/e/m$b;->f:Ls1/a/a/a/v0/e/o;

    .line 6
    iput-object v2, v0, Ls1/a/a/a/v0/e/m;->e:Ls1/a/a/a/v0/e/o;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget-object v2, p0, Ls1/a/a/a/v0/e/m$b;->g:Ls1/a/a/a/v0/e/l;

    .line 8
    iput-object v2, v0, Ls1/a/a/a/v0/e/m;->f:Ls1/a/a/a/v0/e/l;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, Ls1/a/a/a/v0/e/m$b;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ls1/a/a/a/v0/e/m$b;->h:Ljava/util/List;

    .line 10
    iget v1, p0, Ls1/a/a/a/v0/e/m$b;->d:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Ls1/a/a/a/v0/e/m$b;->d:I

    .line 11
    :cond_3
    iget-object v1, p0, Ls1/a/a/a/v0/e/m$b;->h:Ljava/util/List;

    .line 12
    iput-object v1, v0, Ls1/a/a/a/v0/e/m;->g:Ljava/util/List;

    .line 13
    iput v3, v0, Ls1/a/a/a/v0/e/m;->c:I

    return-object v0
.end method

.method public h(Ls1/a/a/a/v0/e/m;)Ls1/a/a/a/v0/e/m$b;
    .locals 6

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/m;->j:Ls1/a/a/a/v0/e/m;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Ls1/a/a/a/v0/e/m;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p1, Ls1/a/a/a/v0/e/m;->d:Ls1/a/a/a/v0/e/p;

    .line 4
    iget v3, p0, Ls1/a/a/a/v0/e/m$b;->d:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Ls1/a/a/a/v0/e/m$b;->e:Ls1/a/a/a/v0/e/p;

    .line 5
    sget-object v4, Ls1/a/a/a/v0/e/p;->e:Ls1/a/a/a/v0/e/p;

    if-eq v3, v4, :cond_2

    .line 6
    new-instance v4, Ls1/a/a/a/v0/e/p$b;

    invoke-direct {v4}, Ls1/a/a/a/v0/e/p$b;-><init>()V

    .line 7
    invoke-virtual {v4, v3}, Ls1/a/a/a/v0/e/p$b;->g(Ls1/a/a/a/v0/e/p;)Ls1/a/a/a/v0/e/p$b;

    .line 8
    invoke-virtual {v4, v0}, Ls1/a/a/a/v0/e/p$b;->g(Ls1/a/a/a/v0/e/p;)Ls1/a/a/a/v0/e/p$b;

    invoke-virtual {v4}, Ls1/a/a/a/v0/e/p$b;->f()Ls1/a/a/a/v0/e/p;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/m$b;->e:Ls1/a/a/a/v0/e/p;

    goto :goto_1

    .line 9
    :cond_2
    iput-object v0, p0, Ls1/a/a/a/v0/e/m$b;->e:Ls1/a/a/a/v0/e/p;

    .line 10
    :goto_1
    iget v0, p0, Ls1/a/a/a/v0/e/m$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/m$b;->d:I

    .line 11
    :cond_3
    iget v0, p1, Ls1/a/a/a/v0/e/m;->c:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    if-eqz v0, :cond_6

    .line 12
    iget-object v0, p1, Ls1/a/a/a/v0/e/m;->e:Ls1/a/a/a/v0/e/o;

    .line 13
    iget v4, p0, Ls1/a/a/a/v0/e/m$b;->d:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_5

    iget-object v4, p0, Ls1/a/a/a/v0/e/m$b;->f:Ls1/a/a/a/v0/e/o;

    .line 14
    sget-object v5, Ls1/a/a/a/v0/e/o;->e:Ls1/a/a/a/v0/e/o;

    if-eq v4, v5, :cond_5

    .line 15
    new-instance v5, Ls1/a/a/a/v0/e/o$b;

    invoke-direct {v5}, Ls1/a/a/a/v0/e/o$b;-><init>()V

    .line 16
    invoke-virtual {v5, v4}, Ls1/a/a/a/v0/e/o$b;->g(Ls1/a/a/a/v0/e/o;)Ls1/a/a/a/v0/e/o$b;

    .line 17
    invoke-virtual {v5, v0}, Ls1/a/a/a/v0/e/o$b;->g(Ls1/a/a/a/v0/e/o;)Ls1/a/a/a/v0/e/o$b;

    invoke-virtual {v5}, Ls1/a/a/a/v0/e/o$b;->f()Ls1/a/a/a/v0/e/o;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/m$b;->f:Ls1/a/a/a/v0/e/o;

    goto :goto_3

    .line 18
    :cond_5
    iput-object v0, p0, Ls1/a/a/a/v0/e/m$b;->f:Ls1/a/a/a/v0/e/o;

    .line 19
    :goto_3
    iget v0, p0, Ls1/a/a/a/v0/e/m$b;->d:I

    or-int/2addr v0, v3

    iput v0, p0, Ls1/a/a/a/v0/e/m$b;->d:I

    .line 20
    :cond_6
    iget v0, p1, Ls1/a/a/a/v0/e/m;->c:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    if-eqz v1, :cond_9

    .line 21
    iget-object v0, p1, Ls1/a/a/a/v0/e/m;->f:Ls1/a/a/a/v0/e/l;

    .line 22
    iget v1, p0, Ls1/a/a/a/v0/e/m$b;->d:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Ls1/a/a/a/v0/e/m$b;->g:Ls1/a/a/a/v0/e/l;

    .line 23
    sget-object v2, Ls1/a/a/a/v0/e/l;->k:Ls1/a/a/a/v0/e/l;

    if-eq v1, v2, :cond_8

    .line 24
    new-instance v2, Ls1/a/a/a/v0/e/l$b;

    invoke-direct {v2}, Ls1/a/a/a/v0/e/l$b;-><init>()V

    .line 25
    invoke-virtual {v2, v1}, Ls1/a/a/a/v0/e/l$b;->h(Ls1/a/a/a/v0/e/l;)Ls1/a/a/a/v0/e/l$b;

    .line 26
    invoke-virtual {v2, v0}, Ls1/a/a/a/v0/e/l$b;->h(Ls1/a/a/a/v0/e/l;)Ls1/a/a/a/v0/e/l$b;

    invoke-virtual {v2}, Ls1/a/a/a/v0/e/l$b;->g()Ls1/a/a/a/v0/e/l;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/m$b;->g:Ls1/a/a/a/v0/e/l;

    goto :goto_5

    .line 27
    :cond_8
    iput-object v0, p0, Ls1/a/a/a/v0/e/m$b;->g:Ls1/a/a/a/v0/e/l;

    .line 28
    :goto_5
    iget v0, p0, Ls1/a/a/a/v0/e/m$b;->d:I

    or-int/2addr v0, v3

    iput v0, p0, Ls1/a/a/a/v0/e/m$b;->d:I

    .line 29
    :cond_9
    iget-object v0, p1, Ls1/a/a/a/v0/e/m;->g:Ljava/util/List;

    .line 30
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 31
    iget-object v0, p0, Ls1/a/a/a/v0/e/m$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    iget-object v0, p1, Ls1/a/a/a/v0/e/m;->g:Ljava/util/List;

    .line 33
    iput-object v0, p0, Ls1/a/a/a/v0/e/m$b;->h:Ljava/util/List;

    .line 34
    iget v0, p0, Ls1/a/a/a/v0/e/m$b;->d:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Ls1/a/a/a/v0/e/m$b;->d:I

    goto :goto_6

    .line 35
    :cond_a
    iget v0, p0, Ls1/a/a/a/v0/e/m$b;->d:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_b

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ls1/a/a/a/v0/e/m$b;->h:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/m$b;->h:Ljava/util/List;

    .line 37
    iget v0, p0, Ls1/a/a/a/v0/e/m$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/m$b;->d:I

    .line 38
    :cond_b
    iget-object v0, p0, Ls1/a/a/a/v0/e/m$b;->h:Ljava/util/List;

    .line 39
    iget-object v1, p1, Ls1/a/a/a/v0/e/m;->g:Ljava/util/List;

    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    :cond_c
    :goto_6
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/h/h$c;->f(Ls1/a/a/a/v0/h/h$d;)V

    .line 42
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 43
    iget-object p1, p1, Ls1/a/a/a/v0/e/m;->b:Ls1/a/a/a/v0/h/c;

    .line 44
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/h/c;->b(Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/c;

    move-result-object p1

    .line 45
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    return-object p0
.end method

.method public i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/m$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ls1/a/a/a/v0/e/m;->k:Ls1/a/a/a/v0/h/r;

    invoke-interface {v1, p1, p2}, Ls1/a/a/a/v0/h/r;->a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/e/m;
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/m$b;->h(Ls1/a/a/a/v0/e/m;)Ls1/a/a/a/v0/e/m$b;

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
    check-cast p2, Ls1/a/a/a/v0/e/m;
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
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/e/m$b;->h(Ls1/a/a/a/v0/e/m;)Ls1/a/a/a/v0/e/m$b;

    :cond_1
    throw p1
.end method
