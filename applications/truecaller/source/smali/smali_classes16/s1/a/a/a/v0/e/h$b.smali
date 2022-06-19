.class public final Ls1/a/a/a/v0/e/h$b;
.super Ls1/a/a/a/v0/h/h$b;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$b<",
        "Ls1/a/a/a/v0/e/h;",
        "Ls1/a/a/a/v0/e/h$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Ls1/a/a/a/v0/e/h$c;

.field public f:Ls1/a/a/a/v0/e/q;

.field public g:I

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/h;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$b;-><init>()V

    .line 2
    sget-object v0, Ls1/a/a/a/v0/e/h$c;->b:Ls1/a/a/a/v0/e/h$c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/h$b;->e:Ls1/a/a/a/v0/e/h$c;

    .line 3
    sget-object v0, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    .line 4
    iput-object v0, p0, Ls1/a/a/a/v0/e/h$b;->f:Ls1/a/a/a/v0/e/q;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/h$b;->h:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/h$b;->i:Ljava/util/List;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/h$b;->h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/h$b;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/h$b;->h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/h$b;

    return-object p0
.end method

.method public build()Ls1/a/a/a/v0/h/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/h$b;->f()Ls1/a/a/a/v0/e/h;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/h;->isInitialized()Z

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
    new-instance v0, Ls1/a/a/a/v0/e/h$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/h$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/h$b;->f()Ls1/a/a/a/v0/e/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/h$b;->g(Ls1/a/a/a/v0/e/h;)Ls1/a/a/a/v0/e/h$b;

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
    new-instance v0, Ls1/a/a/a/v0/e/h$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/h$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/h$b;->f()Ls1/a/a/a/v0/e/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/h$b;->g(Ls1/a/a/a/v0/e/h;)Ls1/a/a/a/v0/e/h$b;

    return-object v0
.end method

.method public bridge synthetic e(Ls1/a/a/a/v0/h/h;)Ls1/a/a/a/v0/h/h$b;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/e/h;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/h$b;->g(Ls1/a/a/a/v0/e/h;)Ls1/a/a/a/v0/e/h$b;

    return-object p0
.end method

.method public f()Ls1/a/a/a/v0/e/h;
    .locals 5

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls1/a/a/a/v0/e/h;-><init>(Ls1/a/a/a/v0/h/h$b;Ls1/a/a/a/v0/e/a;)V

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v2, p0, Ls1/a/a/a/v0/e/h$b;->c:I

    .line 4
    iput v2, v0, Ls1/a/a/a/v0/e/h;->c:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget v2, p0, Ls1/a/a/a/v0/e/h$b;->d:I

    .line 6
    iput v2, v0, Ls1/a/a/a/v0/e/h;->d:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget-object v2, p0, Ls1/a/a/a/v0/e/h$b;->e:Ls1/a/a/a/v0/e/h$c;

    .line 8
    iput-object v2, v0, Ls1/a/a/a/v0/e/h;->e:Ls1/a/a/a/v0/e/h$c;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 9
    :cond_3
    iget-object v2, p0, Ls1/a/a/a/v0/e/h$b;->f:Ls1/a/a/a/v0/e/q;

    .line 10
    iput-object v2, v0, Ls1/a/a/a/v0/e/h;->f:Ls1/a/a/a/v0/e/q;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 11
    :cond_4
    iget v2, p0, Ls1/a/a/a/v0/e/h$b;->g:I

    .line 12
    iput v2, v0, Ls1/a/a/a/v0/e/h;->g:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 13
    iget-object v1, p0, Ls1/a/a/a/v0/e/h$b;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ls1/a/a/a/v0/e/h$b;->h:Ljava/util/List;

    .line 14
    iget v1, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    .line 15
    :cond_5
    iget-object v1, p0, Ls1/a/a/a/v0/e/h$b;->h:Ljava/util/List;

    .line 16
    iput-object v1, v0, Ls1/a/a/a/v0/e/h;->h:Ljava/util/List;

    .line 17
    iget v1, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    .line 18
    iget-object v1, p0, Ls1/a/a/a/v0/e/h$b;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ls1/a/a/a/v0/e/h$b;->i:Ljava/util/List;

    .line 19
    iget v1, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    .line 20
    :cond_6
    iget-object v1, p0, Ls1/a/a/a/v0/e/h$b;->i:Ljava/util/List;

    .line 21
    iput-object v1, v0, Ls1/a/a/a/v0/e/h;->i:Ljava/util/List;

    .line 22
    iput v3, v0, Ls1/a/a/a/v0/e/h;->b:I

    return-object v0
.end method

.method public g(Ls1/a/a/a/v0/e/h;)Ls1/a/a/a/v0/e/h$b;
    .locals 6

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/h;->l:Ls1/a/a/a/v0/e/h;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Ls1/a/a/a/v0/e/h;->b:I

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
    iget v1, p1, Ls1/a/a/a/v0/e/h;->c:I

    .line 4
    iget v4, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    or-int/2addr v4, v3

    iput v4, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    .line 5
    iput v1, p0, Ls1/a/a/a/v0/e/h$b;->c:I

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
    iget v1, p1, Ls1/a/a/a/v0/e/h;->d:I

    .line 7
    iget v5, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    .line 8
    iput v1, p0, Ls1/a/a/a/v0/e/h$b;->d:I

    :cond_4
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    if-eqz v0, :cond_6

    .line 9
    iget-object v0, p1, Ls1/a/a/a/v0/e/h;->e:Ls1/a/a/a/v0/e/h$c;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget v4, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    or-int/2addr v1, v4

    iput v1, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    .line 12
    iput-object v0, p0, Ls1/a/a/a/v0/e/h$b;->e:Ls1/a/a/a/v0/e/h$c;

    .line 13
    :cond_6
    iget v0, p1, Ls1/a/a/a/v0/e/h;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    move v0, v3

    goto :goto_3

    :cond_7
    move v0, v2

    :goto_3
    if-eqz v0, :cond_9

    .line 14
    iget-object v0, p1, Ls1/a/a/a/v0/e/h;->f:Ls1/a/a/a/v0/e/q;

    .line 15
    iget v4, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_8

    iget-object v4, p0, Ls1/a/a/a/v0/e/h$b;->f:Ls1/a/a/a/v0/e/q;

    .line 16
    sget-object v5, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    if-eq v4, v5, :cond_8

    .line 17
    invoke-static {v4, v0}, Le/d/c/a/a;->h0(Ls1/a/a/a/v0/e/q;Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/h$b;->f:Ls1/a/a/a/v0/e/q;

    goto :goto_4

    .line 18
    :cond_8
    iput-object v0, p0, Ls1/a/a/a/v0/e/h$b;->f:Ls1/a/a/a/v0/e/q;

    .line 19
    :goto_4
    iget v0, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    .line 20
    :cond_9
    iget v0, p1, Ls1/a/a/a/v0/e/h;->b:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    move v2, v3

    :cond_a
    if-eqz v2, :cond_b

    .line 21
    iget v0, p1, Ls1/a/a/a/v0/e/h;->g:I

    .line 22
    iget v2, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    .line 23
    iput v0, p0, Ls1/a/a/a/v0/e/h$b;->g:I

    .line 24
    :cond_b
    iget-object v0, p1, Ls1/a/a/a/v0/e/h;->h:Ljava/util/List;

    .line 25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 26
    iget-object v0, p0, Ls1/a/a/a/v0/e/h$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 27
    iget-object v0, p1, Ls1/a/a/a/v0/e/h;->h:Ljava/util/List;

    .line 28
    iput-object v0, p0, Ls1/a/a/a/v0/e/h$b;->h:Ljava/util/List;

    .line 29
    iget v0, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    goto :goto_5

    .line 30
    :cond_c
    iget v0, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_d

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ls1/a/a/a/v0/e/h$b;->h:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/h$b;->h:Ljava/util/List;

    .line 32
    iget v0, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    .line 33
    :cond_d
    iget-object v0, p0, Ls1/a/a/a/v0/e/h$b;->h:Ljava/util/List;

    .line 34
    iget-object v1, p1, Ls1/a/a/a/v0/e/h;->h:Ljava/util/List;

    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    :cond_e
    :goto_5
    iget-object v0, p1, Ls1/a/a/a/v0/e/h;->i:Ljava/util/List;

    .line 37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 38
    iget-object v0, p0, Ls1/a/a/a/v0/e/h$b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 39
    iget-object v0, p1, Ls1/a/a/a/v0/e/h;->i:Ljava/util/List;

    .line 40
    iput-object v0, p0, Ls1/a/a/a/v0/e/h$b;->i:Ljava/util/List;

    .line 41
    iget v0, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    goto :goto_6

    .line 42
    :cond_f
    iget v0, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_10

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ls1/a/a/a/v0/e/h$b;->i:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/h$b;->i:Ljava/util/List;

    .line 44
    iget v0, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/h$b;->b:I

    .line 45
    :cond_10
    iget-object v0, p0, Ls1/a/a/a/v0/e/h$b;->i:Ljava/util/List;

    .line 46
    iget-object v1, p1, Ls1/a/a/a/v0/e/h;->i:Ljava/util/List;

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    :cond_11
    :goto_6
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 49
    iget-object p1, p1, Ls1/a/a/a/v0/e/h;->a:Ls1/a/a/a/v0/h/c;

    .line 50
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/h/c;->b(Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/c;

    move-result-object p1

    .line 51
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    return-object p0
.end method

.method public h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/h$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ls1/a/a/a/v0/e/h;->m:Ls1/a/a/a/v0/h/r;

    invoke-interface {v1, p1, p2}, Ls1/a/a/a/v0/h/r;->a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/e/h;
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/h$b;->g(Ls1/a/a/a/v0/e/h;)Ls1/a/a/a/v0/e/h$b;

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
    check-cast p2, Ls1/a/a/a/v0/e/h;
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
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/e/h$b;->g(Ls1/a/a/a/v0/e/h;)Ls1/a/a/a/v0/e/h$b;

    :cond_1
    throw p1
.end method
