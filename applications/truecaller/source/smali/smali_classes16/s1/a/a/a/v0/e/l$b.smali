.class public final Ls1/a/a/a/v0/e/l$b;
.super Ls1/a/a/a/v0/h/h$c;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$c<",
        "Ls1/a/a/a/v0/e/l;",
        "Ls1/a/a/a/v0/e/l$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/i;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/n;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/r;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ls1/a/a/a/v0/e/t;

.field public i:Ls1/a/a/a/v0/e/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$c;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/l$b;->e:Ljava/util/List;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/l$b;->f:Ljava/util/List;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/l$b;->g:Ljava/util/List;

    .line 5
    sget-object v0, Ls1/a/a/a/v0/e/t;->g:Ls1/a/a/a/v0/e/t;

    .line 6
    iput-object v0, p0, Ls1/a/a/a/v0/e/l$b;->h:Ls1/a/a/a/v0/e/t;

    .line 7
    sget-object v0, Ls1/a/a/a/v0/e/w;->e:Ls1/a/a/a/v0/e/w;

    .line 8
    iput-object v0, p0, Ls1/a/a/a/v0/e/l$b;->i:Ls1/a/a/a/v0/e/w;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/l$b;->i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/l$b;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/l$b;->i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/l$b;

    return-object p0
.end method

.method public build()Ls1/a/a/a/v0/h/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/l$b;->g()Ls1/a/a/a/v0/e/l;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/l;->isInitialized()Z

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
    new-instance v0, Ls1/a/a/a/v0/e/l$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/l$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/l$b;->g()Ls1/a/a/a/v0/e/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/l$b;->h(Ls1/a/a/a/v0/e/l;)Ls1/a/a/a/v0/e/l$b;

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
    new-instance v0, Ls1/a/a/a/v0/e/l$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/l$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/l$b;->g()Ls1/a/a/a/v0/e/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/l$b;->h(Ls1/a/a/a/v0/e/l;)Ls1/a/a/a/v0/e/l$b;

    return-object v0
.end method

.method public bridge synthetic e(Ls1/a/a/a/v0/h/h;)Ls1/a/a/a/v0/h/h$b;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/e/l;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/l$b;->h(Ls1/a/a/a/v0/e/l;)Ls1/a/a/a/v0/e/l$b;

    return-object p0
.end method

.method public g()Ls1/a/a/a/v0/e/l;
    .locals 5

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls1/a/a/a/v0/e/l;-><init>(Ls1/a/a/a/v0/h/h$c;Ls1/a/a/a/v0/e/a;)V

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3
    iget-object v2, p0, Ls1/a/a/a/v0/e/l$b;->e:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ls1/a/a/a/v0/e/l$b;->e:Ljava/util/List;

    .line 4
    iget v2, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    .line 5
    :cond_0
    iget-object v2, p0, Ls1/a/a/a/v0/e/l$b;->e:Ljava/util/List;

    .line 6
    iput-object v2, v0, Ls1/a/a/a/v0/e/l;->d:Ljava/util/List;

    .line 7
    iget v2, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    .line 8
    iget-object v2, p0, Ls1/a/a/a/v0/e/l$b;->f:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ls1/a/a/a/v0/e/l$b;->f:Ljava/util/List;

    .line 9
    iget v2, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    .line 10
    :cond_1
    iget-object v2, p0, Ls1/a/a/a/v0/e/l$b;->f:Ljava/util/List;

    .line 11
    iput-object v2, v0, Ls1/a/a/a/v0/e/l;->e:Ljava/util/List;

    .line 12
    iget v2, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    .line 13
    iget-object v2, p0, Ls1/a/a/a/v0/e/l$b;->g:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ls1/a/a/a/v0/e/l$b;->g:Ljava/util/List;

    .line 14
    iget v2, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    .line 15
    :cond_2
    iget-object v2, p0, Ls1/a/a/a/v0/e/l$b;->g:Ljava/util/List;

    .line 16
    iput-object v2, v0, Ls1/a/a/a/v0/e/l;->f:Ljava/util/List;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 17
    :goto_0
    iget-object v2, p0, Ls1/a/a/a/v0/e/l$b;->h:Ls1/a/a/a/v0/e/t;

    .line 18
    iput-object v2, v0, Ls1/a/a/a/v0/e/l;->g:Ls1/a/a/a/v0/e/t;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    or-int/lit8 v3, v3, 0x2

    .line 19
    :cond_4
    iget-object v1, p0, Ls1/a/a/a/v0/e/l$b;->i:Ls1/a/a/a/v0/e/w;

    .line 20
    iput-object v1, v0, Ls1/a/a/a/v0/e/l;->h:Ls1/a/a/a/v0/e/w;

    .line 21
    iput v3, v0, Ls1/a/a/a/v0/e/l;->c:I

    return-object v0
.end method

.method public h(Ls1/a/a/a/v0/e/l;)Ls1/a/a/a/v0/e/l$b;
    .locals 7

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/l;->k:Ls1/a/a/a/v0/e/l;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p1, Ls1/a/a/a/v0/e/l;->d:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Ls1/a/a/a/v0/e/l$b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Ls1/a/a/a/v0/e/l;->d:Ljava/util/List;

    .line 6
    iput-object v0, p0, Ls1/a/a/a/v0/e/l$b;->e:Ljava/util/List;

    .line 7
    iget v0, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ls1/a/a/a/v0/e/l$b;->e:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/l$b;->e:Ljava/util/List;

    .line 10
    iget v0, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    .line 11
    :cond_2
    iget-object v0, p0, Ls1/a/a/a/v0/e/l$b;->e:Ljava/util/List;

    .line 12
    iget-object v2, p1, Ls1/a/a/a/v0/e/l;->d:Ljava/util/List;

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_3
    :goto_0
    iget-object v0, p1, Ls1/a/a/a/v0/e/l;->e:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_6

    .line 16
    iget-object v0, p0, Ls1/a/a/a/v0/e/l$b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p1, Ls1/a/a/a/v0/e/l;->e:Ljava/util/List;

    .line 18
    iput-object v0, p0, Ls1/a/a/a/v0/e/l$b;->f:Ljava/util/List;

    .line 19
    iget v0, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    goto :goto_1

    .line 20
    :cond_4
    iget v0, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_5

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Ls1/a/a/a/v0/e/l$b;->f:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/l$b;->f:Ljava/util/List;

    .line 22
    iget v0, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    or-int/2addr v0, v2

    iput v0, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    .line 23
    :cond_5
    iget-object v0, p0, Ls1/a/a/a/v0/e/l$b;->f:Ljava/util/List;

    .line 24
    iget-object v3, p1, Ls1/a/a/a/v0/e/l;->e:Ljava/util/List;

    .line 25
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    :cond_6
    :goto_1
    iget-object v0, p1, Ls1/a/a/a/v0/e/l;->f:Ljava/util/List;

    .line 27
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 28
    iget-object v0, p0, Ls1/a/a/a/v0/e/l$b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    iget-object v0, p1, Ls1/a/a/a/v0/e/l;->f:Ljava/util/List;

    .line 30
    iput-object v0, p0, Ls1/a/a/a/v0/e/l$b;->g:Ljava/util/List;

    .line 31
    iget v0, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    goto :goto_2

    .line 32
    :cond_7
    iget v0, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_8

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Ls1/a/a/a/v0/e/l$b;->g:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/l$b;->g:Ljava/util/List;

    .line 34
    iget v0, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    or-int/2addr v0, v3

    iput v0, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    .line 35
    :cond_8
    iget-object v0, p0, Ls1/a/a/a/v0/e/l$b;->g:Ljava/util/List;

    .line 36
    iget-object v3, p1, Ls1/a/a/a/v0/e/l;->f:Ljava/util/List;

    .line 37
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    :cond_9
    :goto_2
    iget v0, p1, Ls1/a/a/a/v0/e/l;->c:I

    and-int/2addr v0, v1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_a

    move v0, v1

    goto :goto_3

    :cond_a
    move v0, v3

    :goto_3
    if-eqz v0, :cond_c

    .line 39
    iget-object v0, p1, Ls1/a/a/a/v0/e/l;->g:Ls1/a/a/a/v0/e/t;

    .line 40
    iget v4, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    const/16 v5, 0x8

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_b

    iget-object v4, p0, Ls1/a/a/a/v0/e/l$b;->h:Ls1/a/a/a/v0/e/t;

    .line 41
    sget-object v6, Ls1/a/a/a/v0/e/t;->g:Ls1/a/a/a/v0/e/t;

    if-eq v4, v6, :cond_b

    .line 42
    invoke-static {v4}, Ls1/a/a/a/v0/e/t;->d(Ls1/a/a/a/v0/e/t;)Ls1/a/a/a/v0/e/t$b;

    move-result-object v4

    invoke-virtual {v4, v0}, Ls1/a/a/a/v0/e/t$b;->g(Ls1/a/a/a/v0/e/t;)Ls1/a/a/a/v0/e/t$b;

    invoke-virtual {v4}, Ls1/a/a/a/v0/e/t$b;->f()Ls1/a/a/a/v0/e/t;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/l$b;->h:Ls1/a/a/a/v0/e/t;

    goto :goto_4

    .line 43
    :cond_b
    iput-object v0, p0, Ls1/a/a/a/v0/e/l$b;->h:Ls1/a/a/a/v0/e/t;

    .line 44
    :goto_4
    iget v0, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    or-int/2addr v0, v5

    iput v0, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    .line 45
    :cond_c
    iget v0, p1, Ls1/a/a/a/v0/e/l;->c:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_d

    goto :goto_5

    :cond_d
    move v1, v3

    :goto_5
    if-eqz v1, :cond_f

    .line 46
    iget-object v0, p1, Ls1/a/a/a/v0/e/l;->h:Ls1/a/a/a/v0/e/w;

    .line 47
    iget v1, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Ls1/a/a/a/v0/e/l$b;->i:Ls1/a/a/a/v0/e/w;

    .line 48
    sget-object v3, Ls1/a/a/a/v0/e/w;->e:Ls1/a/a/a/v0/e/w;

    if-eq v1, v3, :cond_e

    .line 49
    invoke-static {v1}, Ls1/a/a/a/v0/e/w;->d(Ls1/a/a/a/v0/e/w;)Ls1/a/a/a/v0/e/w$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Ls1/a/a/a/v0/e/w$b;->g(Ls1/a/a/a/v0/e/w;)Ls1/a/a/a/v0/e/w$b;

    invoke-virtual {v1}, Ls1/a/a/a/v0/e/w$b;->f()Ls1/a/a/a/v0/e/w;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/l$b;->i:Ls1/a/a/a/v0/e/w;

    goto :goto_6

    .line 50
    :cond_e
    iput-object v0, p0, Ls1/a/a/a/v0/e/l$b;->i:Ls1/a/a/a/v0/e/w;

    .line 51
    :goto_6
    iget v0, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    or-int/2addr v0, v2

    iput v0, p0, Ls1/a/a/a/v0/e/l$b;->d:I

    .line 52
    :cond_f
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/h/h$c;->f(Ls1/a/a/a/v0/h/h$d;)V

    .line 53
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 54
    iget-object p1, p1, Ls1/a/a/a/v0/e/l;->b:Ls1/a/a/a/v0/h/c;

    .line 55
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/h/c;->b(Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/c;

    move-result-object p1

    .line 56
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    return-object p0
.end method

.method public i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/l$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ls1/a/a/a/v0/e/l;->l:Ls1/a/a/a/v0/h/r;

    invoke-interface {v1, p1, p2}, Ls1/a/a/a/v0/h/r;->a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/e/l;
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/l$b;->h(Ls1/a/a/a/v0/e/l;)Ls1/a/a/a/v0/e/l$b;

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
    check-cast p2, Ls1/a/a/a/v0/e/l;
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
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/e/l$b;->h(Ls1/a/a/a/v0/e/l;)Ls1/a/a/a/v0/e/l$b;

    :cond_1
    throw p1
.end method
