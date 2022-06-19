.class public final Ls1/a/a/a/v0/e/f$b;
.super Ls1/a/a/a/v0/h/h$b;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$b<",
        "Ls1/a/a/a/v0/e/f;",
        "Ls1/a/a/a/v0/e/f$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ls1/a/a/a/v0/e/f$c;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/h;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ls1/a/a/a/v0/e/h;

.field public f:Ls1/a/a/a/v0/e/f$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$b;-><init>()V

    .line 2
    sget-object v0, Ls1/a/a/a/v0/e/f$c;->b:Ls1/a/a/a/v0/e/f$c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/f$b;->c:Ls1/a/a/a/v0/e/f$c;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/f$b;->d:Ljava/util/List;

    .line 4
    sget-object v0, Ls1/a/a/a/v0/e/h;->l:Ls1/a/a/a/v0/e/h;

    .line 5
    iput-object v0, p0, Ls1/a/a/a/v0/e/f$b;->e:Ls1/a/a/a/v0/e/h;

    .line 6
    sget-object v0, Ls1/a/a/a/v0/e/f$d;->b:Ls1/a/a/a/v0/e/f$d;

    iput-object v0, p0, Ls1/a/a/a/v0/e/f$b;->f:Ls1/a/a/a/v0/e/f$d;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/f$b;->h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/f$b;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/f$b;->h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/f$b;

    return-object p0
.end method

.method public build()Ls1/a/a/a/v0/h/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/f$b;->f()Ls1/a/a/a/v0/e/f;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/f;->isInitialized()Z

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
    new-instance v0, Ls1/a/a/a/v0/e/f$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/f$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/f$b;->f()Ls1/a/a/a/v0/e/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/f$b;->g(Ls1/a/a/a/v0/e/f;)Ls1/a/a/a/v0/e/f$b;

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
    new-instance v0, Ls1/a/a/a/v0/e/f$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/f$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/f$b;->f()Ls1/a/a/a/v0/e/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/f$b;->g(Ls1/a/a/a/v0/e/f;)Ls1/a/a/a/v0/e/f$b;

    return-object v0
.end method

.method public bridge synthetic e(Ls1/a/a/a/v0/h/h;)Ls1/a/a/a/v0/h/h$b;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/e/f;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/f$b;->g(Ls1/a/a/a/v0/e/f;)Ls1/a/a/a/v0/e/f$b;

    return-object p0
.end method

.method public f()Ls1/a/a/a/v0/e/f;
    .locals 5

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls1/a/a/a/v0/e/f;-><init>(Ls1/a/a/a/v0/h/h$b;Ls1/a/a/a/v0/e/a;)V

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/f$b;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Ls1/a/a/a/v0/e/f$b;->c:Ls1/a/a/a/v0/e/f$c;

    .line 4
    iput-object v2, v0, Ls1/a/a/a/v0/e/f;->c:Ls1/a/a/a/v0/e/f$c;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 5
    iget-object v2, p0, Ls1/a/a/a/v0/e/f$b;->d:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ls1/a/a/a/v0/e/f$b;->d:Ljava/util/List;

    .line 6
    iget v2, p0, Ls1/a/a/a/v0/e/f$b;->b:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Ls1/a/a/a/v0/e/f$b;->b:I

    .line 7
    :cond_1
    iget-object v2, p0, Ls1/a/a/a/v0/e/f$b;->d:Ljava/util/List;

    .line 8
    iput-object v2, v0, Ls1/a/a/a/v0/e/f;->d:Ljava/util/List;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x2

    .line 9
    :cond_2
    iget-object v2, p0, Ls1/a/a/a/v0/e/f$b;->e:Ls1/a/a/a/v0/e/h;

    .line 10
    iput-object v2, v0, Ls1/a/a/a/v0/e/f;->e:Ls1/a/a/a/v0/e/h;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x4

    .line 11
    :cond_3
    iget-object v1, p0, Ls1/a/a/a/v0/e/f$b;->f:Ls1/a/a/a/v0/e/f$d;

    .line 12
    iput-object v1, v0, Ls1/a/a/a/v0/e/f;->f:Ls1/a/a/a/v0/e/f$d;

    .line 13
    iput v3, v0, Ls1/a/a/a/v0/e/f;->b:I

    return-object v0
.end method

.method public g(Ls1/a/a/a/v0/e/f;)Ls1/a/a/a/v0/e/f$b;
    .locals 6

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/f;->i:Ls1/a/a/a/v0/e/f;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Ls1/a/a/a/v0/e/f;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p1, Ls1/a/a/a/v0/e/f;->c:Ls1/a/a/a/v0/e/f$c;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v3, p0, Ls1/a/a/a/v0/e/f$b;->b:I

    or-int/2addr v3, v1

    iput v3, p0, Ls1/a/a/a/v0/e/f$b;->b:I

    .line 6
    iput-object v0, p0, Ls1/a/a/a/v0/e/f$b;->c:Ls1/a/a/a/v0/e/f$c;

    .line 7
    :cond_2
    iget-object v0, p1, Ls1/a/a/a/v0/e/f;->d:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_5

    .line 9
    iget-object v0, p0, Ls1/a/a/a/v0/e/f$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p1, Ls1/a/a/a/v0/e/f;->d:Ljava/util/List;

    .line 11
    iput-object v0, p0, Ls1/a/a/a/v0/e/f$b;->d:Ljava/util/List;

    .line 12
    iget v0, p0, Ls1/a/a/a/v0/e/f$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Ls1/a/a/a/v0/e/f$b;->b:I

    goto :goto_1

    .line 13
    :cond_3
    iget v0, p0, Ls1/a/a/a/v0/e/f$b;->b:I

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Ls1/a/a/a/v0/e/f$b;->d:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/f$b;->d:Ljava/util/List;

    .line 15
    iget v0, p0, Ls1/a/a/a/v0/e/f$b;->b:I

    or-int/2addr v0, v3

    iput v0, p0, Ls1/a/a/a/v0/e/f$b;->b:I

    .line 16
    :cond_4
    iget-object v0, p0, Ls1/a/a/a/v0/e/f$b;->d:Ljava/util/List;

    .line 17
    iget-object v4, p1, Ls1/a/a/a/v0/e/f;->d:Ljava/util/List;

    .line 18
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    :cond_5
    :goto_1
    iget v0, p1, Ls1/a/a/a/v0/e/f;->b:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_6

    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v2

    :goto_2
    const/4 v3, 0x4

    if-eqz v0, :cond_8

    .line 20
    iget-object v0, p1, Ls1/a/a/a/v0/e/f;->e:Ls1/a/a/a/v0/e/h;

    .line 21
    iget v4, p0, Ls1/a/a/a/v0/e/f$b;->b:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_7

    iget-object v4, p0, Ls1/a/a/a/v0/e/f$b;->e:Ls1/a/a/a/v0/e/h;

    .line 22
    sget-object v5, Ls1/a/a/a/v0/e/h;->l:Ls1/a/a/a/v0/e/h;

    if-eq v4, v5, :cond_7

    .line 23
    new-instance v5, Ls1/a/a/a/v0/e/h$b;

    invoke-direct {v5}, Ls1/a/a/a/v0/e/h$b;-><init>()V

    .line 24
    invoke-virtual {v5, v4}, Ls1/a/a/a/v0/e/h$b;->g(Ls1/a/a/a/v0/e/h;)Ls1/a/a/a/v0/e/h$b;

    .line 25
    invoke-virtual {v5, v0}, Ls1/a/a/a/v0/e/h$b;->g(Ls1/a/a/a/v0/e/h;)Ls1/a/a/a/v0/e/h$b;

    invoke-virtual {v5}, Ls1/a/a/a/v0/e/h$b;->f()Ls1/a/a/a/v0/e/h;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/f$b;->e:Ls1/a/a/a/v0/e/h;

    goto :goto_3

    .line 26
    :cond_7
    iput-object v0, p0, Ls1/a/a/a/v0/e/f$b;->e:Ls1/a/a/a/v0/e/h;

    .line 27
    :goto_3
    iget v0, p0, Ls1/a/a/a/v0/e/f$b;->b:I

    or-int/2addr v0, v3

    iput v0, p0, Ls1/a/a/a/v0/e/f$b;->b:I

    .line 28
    :cond_8
    iget v0, p1, Ls1/a/a/a/v0/e/f;->b:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_9

    goto :goto_4

    :cond_9
    move v1, v2

    :goto_4
    if-eqz v1, :cond_a

    .line 29
    iget-object v0, p1, Ls1/a/a/a/v0/e/f;->f:Ls1/a/a/a/v0/e/f$d;

    .line 30
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget v1, p0, Ls1/a/a/a/v0/e/f$b;->b:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Ls1/a/a/a/v0/e/f$b;->b:I

    .line 32
    iput-object v0, p0, Ls1/a/a/a/v0/e/f$b;->f:Ls1/a/a/a/v0/e/f$d;

    .line 33
    :cond_a
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 34
    iget-object p1, p1, Ls1/a/a/a/v0/e/f;->a:Ls1/a/a/a/v0/h/c;

    .line 35
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/h/c;->b(Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/c;

    move-result-object p1

    .line 36
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    return-object p0
.end method

.method public h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/f$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ls1/a/a/a/v0/e/f;->j:Ls1/a/a/a/v0/h/r;

    invoke-interface {v1, p1, p2}, Ls1/a/a/a/v0/h/r;->a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/e/f;
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/f$b;->g(Ls1/a/a/a/v0/e/f;)Ls1/a/a/a/v0/e/f$b;

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
    check-cast p2, Ls1/a/a/a/v0/e/f;
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
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/e/f$b;->g(Ls1/a/a/a/v0/e/f;)Ls1/a/a/a/v0/e/f$b;

    :cond_1
    throw p1
.end method
