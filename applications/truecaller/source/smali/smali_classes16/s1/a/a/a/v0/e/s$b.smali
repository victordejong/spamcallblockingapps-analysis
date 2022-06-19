.class public final Ls1/a/a/a/v0/e/s$b;
.super Ls1/a/a/a/v0/h/h$c;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$c<",
        "Ls1/a/a/a/v0/e/s;",
        "Ls1/a/a/a/v0/e/s$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Ls1/a/a/a/v0/e/s$c;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/q;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
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

    .line 2
    sget-object v0, Ls1/a/a/a/v0/e/s$c;->d:Ls1/a/a/a/v0/e/s$c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/s$b;->h:Ls1/a/a/a/v0/e/s$c;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/s$b;->i:Ljava/util/List;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/s$b;->j:Ljava/util/List;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/s$b;->i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/s$b;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/s$b;->i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/s$b;

    return-object p0
.end method

.method public build()Ls1/a/a/a/v0/h/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/s$b;->g()Ls1/a/a/a/v0/e/s;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/s;->isInitialized()Z

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
    new-instance v0, Ls1/a/a/a/v0/e/s$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/s$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/s$b;->g()Ls1/a/a/a/v0/e/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/s$b;->h(Ls1/a/a/a/v0/e/s;)Ls1/a/a/a/v0/e/s$b;

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
    new-instance v0, Ls1/a/a/a/v0/e/s$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/s$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/s$b;->g()Ls1/a/a/a/v0/e/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/s$b;->h(Ls1/a/a/a/v0/e/s;)Ls1/a/a/a/v0/e/s$b;

    return-object v0
.end method

.method public bridge synthetic e(Ls1/a/a/a/v0/h/h;)Ls1/a/a/a/v0/h/h$b;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/e/s;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/s$b;->h(Ls1/a/a/a/v0/e/s;)Ls1/a/a/a/v0/e/s$b;

    return-object p0
.end method

.method public g()Ls1/a/a/a/v0/e/s;
    .locals 5

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls1/a/a/a/v0/e/s;-><init>(Ls1/a/a/a/v0/h/h$c;Ls1/a/a/a/v0/e/a;)V

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v2, p0, Ls1/a/a/a/v0/e/s$b;->e:I

    .line 4
    iput v2, v0, Ls1/a/a/a/v0/e/s;->d:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget v2, p0, Ls1/a/a/a/v0/e/s$b;->f:I

    .line 6
    iput v2, v0, Ls1/a/a/a/v0/e/s;->e:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget-boolean v2, p0, Ls1/a/a/a/v0/e/s$b;->g:Z

    .line 8
    iput-boolean v2, v0, Ls1/a/a/a/v0/e/s;->f:Z

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 9
    :cond_3
    iget-object v2, p0, Ls1/a/a/a/v0/e/s$b;->h:Ls1/a/a/a/v0/e/s$c;

    .line 10
    iput-object v2, v0, Ls1/a/a/a/v0/e/s;->g:Ls1/a/a/a/v0/e/s$c;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 11
    iget-object v1, p0, Ls1/a/a/a/v0/e/s$b;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ls1/a/a/a/v0/e/s$b;->i:Ljava/util/List;

    .line 12
    iget v1, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    .line 13
    :cond_4
    iget-object v1, p0, Ls1/a/a/a/v0/e/s$b;->i:Ljava/util/List;

    .line 14
    iput-object v1, v0, Ls1/a/a/a/v0/e/s;->h:Ljava/util/List;

    .line 15
    iget v1, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 16
    iget-object v1, p0, Ls1/a/a/a/v0/e/s$b;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ls1/a/a/a/v0/e/s$b;->j:Ljava/util/List;

    .line 17
    iget v1, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    .line 18
    :cond_5
    iget-object v1, p0, Ls1/a/a/a/v0/e/s$b;->j:Ljava/util/List;

    .line 19
    iput-object v1, v0, Ls1/a/a/a/v0/e/s;->i:Ljava/util/List;

    .line 20
    iput v3, v0, Ls1/a/a/a/v0/e/s;->c:I

    return-object v0
.end method

.method public h(Ls1/a/a/a/v0/e/s;)Ls1/a/a/a/v0/e/s$b;
    .locals 6

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/s;->m:Ls1/a/a/a/v0/e/s;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Ls1/a/a/a/v0/e/s;->c:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    iget v1, p1, Ls1/a/a/a/v0/e/s;->d:I

    .line 4
    iget v4, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    or-int/2addr v4, v3

    iput v4, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    .line 5
    iput v1, p0, Ls1/a/a/a/v0/e/s$b;->e:I

    :cond_2
    and-int/lit8 v1, v0, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 6
    iget v1, p1, Ls1/a/a/a/v0/e/s;->e:I

    .line 7
    iget v5, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    or-int/2addr v4, v5

    iput v4, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    .line 8
    iput v1, p0, Ls1/a/a/a/v0/e/s$b;->f:I

    :cond_4
    and-int/lit8 v1, v0, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    if-eqz v1, :cond_6

    .line 9
    iget-boolean v1, p1, Ls1/a/a/a/v0/e/s;->f:Z

    .line 10
    iget v5, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    or-int/2addr v4, v5

    iput v4, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    .line 11
    iput-boolean v1, p0, Ls1/a/a/a/v0/e/s$b;->g:Z

    :cond_6
    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    move v2, v3

    :cond_7
    if-eqz v2, :cond_8

    .line 12
    iget-object v0, p1, Ls1/a/a/a/v0/e/s;->g:Ls1/a/a/a/v0/e/s$c;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget v2, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    or-int/2addr v1, v2

    iput v1, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    .line 15
    iput-object v0, p0, Ls1/a/a/a/v0/e/s$b;->h:Ls1/a/a/a/v0/e/s$c;

    .line 16
    :cond_8
    iget-object v0, p1, Ls1/a/a/a/v0/e/s;->h:Ljava/util/List;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 18
    iget-object v0, p0, Ls1/a/a/a/v0/e/s$b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 19
    iget-object v0, p1, Ls1/a/a/a/v0/e/s;->h:Ljava/util/List;

    .line 20
    iput-object v0, p0, Ls1/a/a/a/v0/e/s$b;->i:Ljava/util/List;

    .line 21
    iget v0, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    goto :goto_3

    .line 22
    :cond_9
    iget v0, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_a

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ls1/a/a/a/v0/e/s$b;->i:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/s$b;->i:Ljava/util/List;

    .line 24
    iget v0, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    .line 25
    :cond_a
    iget-object v0, p0, Ls1/a/a/a/v0/e/s$b;->i:Ljava/util/List;

    .line 26
    iget-object v1, p1, Ls1/a/a/a/v0/e/s;->h:Ljava/util/List;

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :cond_b
    :goto_3
    iget-object v0, p1, Ls1/a/a/a/v0/e/s;->i:Ljava/util/List;

    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 30
    iget-object v0, p0, Ls1/a/a/a/v0/e/s$b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 31
    iget-object v0, p1, Ls1/a/a/a/v0/e/s;->i:Ljava/util/List;

    .line 32
    iput-object v0, p0, Ls1/a/a/a/v0/e/s$b;->j:Ljava/util/List;

    .line 33
    iget v0, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    goto :goto_4

    .line 34
    :cond_c
    iget v0, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_d

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ls1/a/a/a/v0/e/s$b;->j:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/s$b;->j:Ljava/util/List;

    .line 36
    iget v0, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/s$b;->d:I

    .line 37
    :cond_d
    iget-object v0, p0, Ls1/a/a/a/v0/e/s$b;->j:Ljava/util/List;

    .line 38
    iget-object v1, p1, Ls1/a/a/a/v0/e/s;->i:Ljava/util/List;

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    :cond_e
    :goto_4
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/h/h$c;->f(Ls1/a/a/a/v0/h/h$d;)V

    .line 41
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 42
    iget-object p1, p1, Ls1/a/a/a/v0/e/s;->b:Ls1/a/a/a/v0/h/c;

    .line 43
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/h/c;->b(Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/c;

    move-result-object p1

    .line 44
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    return-object p0
.end method

.method public i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/s$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ls1/a/a/a/v0/e/s;->n:Ls1/a/a/a/v0/h/r;

    invoke-interface {v1, p1, p2}, Ls1/a/a/a/v0/h/r;->a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/e/s;
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/s$b;->h(Ls1/a/a/a/v0/e/s;)Ls1/a/a/a/v0/e/s$b;

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
    check-cast p2, Ls1/a/a/a/v0/e/s;
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
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/e/s$b;->h(Ls1/a/a/a/v0/e/s;)Ls1/a/a/a/v0/e/s$b;

    :cond_1
    throw p1
.end method
