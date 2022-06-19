.class public final Ls1/a/a/a/v0/e/n$b;
.super Ls1/a/a/a/v0/h/h$c;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$c<",
        "Ls1/a/a/a/v0/e/n;",
        "Ls1/a/a/a/v0/e/n$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ls1/a/a/a/v0/e/q;

.field public i:I

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/s;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ls1/a/a/a/v0/e/q;

.field public l:I

.field public m:Ls1/a/a/a/v0/e/u;

.field public n:I

.field public o:I

.field public p:Ljava/util/List;
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
    .locals 2

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$c;-><init>()V

    const/16 v0, 0x206

    .line 2
    iput v0, p0, Ls1/a/a/a/v0/e/n$b;->e:I

    const/16 v0, 0x806

    .line 3
    iput v0, p0, Ls1/a/a/a/v0/e/n$b;->f:I

    .line 4
    sget-object v0, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    .line 5
    iput-object v0, p0, Ls1/a/a/a/v0/e/n$b;->h:Ls1/a/a/a/v0/e/q;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ls1/a/a/a/v0/e/n$b;->j:Ljava/util/List;

    .line 7
    iput-object v0, p0, Ls1/a/a/a/v0/e/n$b;->k:Ls1/a/a/a/v0/e/q;

    .line 8
    sget-object v0, Ls1/a/a/a/v0/e/u;->l:Ls1/a/a/a/v0/e/u;

    .line 9
    iput-object v0, p0, Ls1/a/a/a/v0/e/n$b;->m:Ls1/a/a/a/v0/e/u;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/n$b;->p:Ljava/util/List;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/n$b;->i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/n$b;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/n$b;->i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/n$b;

    return-object p0
.end method

.method public build()Ls1/a/a/a/v0/h/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/n$b;->g()Ls1/a/a/a/v0/e/n;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/n;->isInitialized()Z

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
    new-instance v0, Ls1/a/a/a/v0/e/n$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/n$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/n$b;->g()Ls1/a/a/a/v0/e/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/n$b;->h(Ls1/a/a/a/v0/e/n;)Ls1/a/a/a/v0/e/n$b;

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
    new-instance v0, Ls1/a/a/a/v0/e/n$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/n$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/n$b;->g()Ls1/a/a/a/v0/e/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/n$b;->h(Ls1/a/a/a/v0/e/n;)Ls1/a/a/a/v0/e/n$b;

    return-object v0
.end method

.method public bridge synthetic e(Ls1/a/a/a/v0/h/h;)Ls1/a/a/a/v0/h/h$b;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/e/n;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/n$b;->h(Ls1/a/a/a/v0/e/n;)Ls1/a/a/a/v0/e/n$b;

    return-object p0
.end method

.method public g()Ls1/a/a/a/v0/e/n;
    .locals 5

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls1/a/a/a/v0/e/n;-><init>(Ls1/a/a/a/v0/h/h$c;Ls1/a/a/a/v0/e/a;)V

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v2, p0, Ls1/a/a/a/v0/e/n$b;->e:I

    .line 4
    iput v2, v0, Ls1/a/a/a/v0/e/n;->d:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget v2, p0, Ls1/a/a/a/v0/e/n$b;->f:I

    .line 6
    iput v2, v0, Ls1/a/a/a/v0/e/n;->e:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget v2, p0, Ls1/a/a/a/v0/e/n$b;->g:I

    .line 8
    iput v2, v0, Ls1/a/a/a/v0/e/n;->f:I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 9
    :cond_3
    iget-object v2, p0, Ls1/a/a/a/v0/e/n$b;->h:Ls1/a/a/a/v0/e/q;

    .line 10
    iput-object v2, v0, Ls1/a/a/a/v0/e/n;->g:Ls1/a/a/a/v0/e/q;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 11
    :cond_4
    iget v2, p0, Ls1/a/a/a/v0/e/n$b;->i:I

    .line 12
    iput v2, v0, Ls1/a/a/a/v0/e/n;->h:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    .line 13
    iget-object v2, p0, Ls1/a/a/a/v0/e/n$b;->j:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ls1/a/a/a/v0/e/n$b;->j:Ljava/util/List;

    .line 14
    iget v2, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    .line 15
    :cond_5
    iget-object v2, p0, Ls1/a/a/a/v0/e/n$b;->j:Ljava/util/List;

    .line 16
    iput-object v2, v0, Ls1/a/a/a/v0/e/n;->i:Ljava/util/List;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x20

    .line 17
    :cond_6
    iget-object v2, p0, Ls1/a/a/a/v0/e/n$b;->k:Ls1/a/a/a/v0/e/q;

    .line 18
    iput-object v2, v0, Ls1/a/a/a/v0/e/n;->j:Ls1/a/a/a/v0/e/q;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x40

    .line 19
    :cond_7
    iget v2, p0, Ls1/a/a/a/v0/e/n$b;->l:I

    .line 20
    iput v2, v0, Ls1/a/a/a/v0/e/n;->k:I

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x80

    .line 21
    :cond_8
    iget-object v2, p0, Ls1/a/a/a/v0/e/n$b;->m:Ls1/a/a/a/v0/e/u;

    .line 22
    iput-object v2, v0, Ls1/a/a/a/v0/e/n;->l:Ls1/a/a/a/v0/e/u;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x100

    .line 23
    :cond_9
    iget v2, p0, Ls1/a/a/a/v0/e/n$b;->n:I

    .line 24
    iput v2, v0, Ls1/a/a/a/v0/e/n;->m:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    or-int/lit16 v3, v3, 0x200

    .line 25
    :cond_a
    iget v1, p0, Ls1/a/a/a/v0/e/n$b;->o:I

    .line 26
    iput v1, v0, Ls1/a/a/a/v0/e/n;->n:I

    .line 27
    iget v1, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    .line 28
    iget-object v1, p0, Ls1/a/a/a/v0/e/n$b;->p:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ls1/a/a/a/v0/e/n$b;->p:Ljava/util/List;

    .line 29
    iget v1, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    and-int/lit16 v1, v1, -0x801

    iput v1, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    .line 30
    :cond_b
    iget-object v1, p0, Ls1/a/a/a/v0/e/n$b;->p:Ljava/util/List;

    .line 31
    iput-object v1, v0, Ls1/a/a/a/v0/e/n;->o:Ljava/util/List;

    .line 32
    iput v3, v0, Ls1/a/a/a/v0/e/n;->c:I

    return-object v0
.end method

.method public h(Ls1/a/a/a/v0/e/n;)Ls1/a/a/a/v0/e/n$b;
    .locals 6

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/n;->r:Ls1/a/a/a/v0/e/n;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Ls1/a/a/a/v0/e/n;->c:I

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
    iget v1, p1, Ls1/a/a/a/v0/e/n;->d:I

    .line 4
    iget v4, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    or-int/2addr v4, v3

    iput v4, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    .line 5
    iput v1, p0, Ls1/a/a/a/v0/e/n$b;->e:I

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
    iget v1, p1, Ls1/a/a/a/v0/e/n;->e:I

    .line 7
    iget v5, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    or-int/2addr v4, v5

    iput v4, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    .line 8
    iput v1, p0, Ls1/a/a/a/v0/e/n$b;->f:I

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
    iget v0, p1, Ls1/a/a/a/v0/e/n;->f:I

    .line 10
    iget v4, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    or-int/2addr v1, v4

    iput v1, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    .line 11
    iput v0, p0, Ls1/a/a/a/v0/e/n$b;->g:I

    .line 12
    :cond_6
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/n;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13
    iget-object v0, p1, Ls1/a/a/a/v0/e/n;->g:Ls1/a/a/a/v0/e/q;

    .line 14
    iget v1, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Ls1/a/a/a/v0/e/n$b;->h:Ls1/a/a/a/v0/e/q;

    .line 15
    sget-object v5, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    if-eq v1, v5, :cond_7

    .line 16
    invoke-static {v1, v0}, Le/d/c/a/a;->h0(Ls1/a/a/a/v0/e/q;Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/n$b;->h:Ls1/a/a/a/v0/e/q;

    goto :goto_3

    .line 17
    :cond_7
    iput-object v0, p0, Ls1/a/a/a/v0/e/n$b;->h:Ls1/a/a/a/v0/e/q;

    .line 18
    :goto_3
    iget v0, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    or-int/2addr v0, v4

    iput v0, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    .line 19
    :cond_8
    iget v0, p1, Ls1/a/a/a/v0/e/n;->c:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    move v0, v3

    goto :goto_4

    :cond_9
    move v0, v2

    :goto_4
    if-eqz v0, :cond_a

    .line 20
    iget v0, p1, Ls1/a/a/a/v0/e/n;->h:I

    .line 21
    iget v4, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    or-int/2addr v1, v4

    iput v1, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    .line 22
    iput v0, p0, Ls1/a/a/a/v0/e/n$b;->i:I

    .line 23
    :cond_a
    iget-object v0, p1, Ls1/a/a/a/v0/e/n;->i:Ljava/util/List;

    .line 24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 25
    iget-object v0, p0, Ls1/a/a/a/v0/e/n$b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26
    iget-object v0, p1, Ls1/a/a/a/v0/e/n;->i:Ljava/util/List;

    .line 27
    iput-object v0, p0, Ls1/a/a/a/v0/e/n$b;->j:Ljava/util/List;

    .line 28
    iget v0, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    goto :goto_5

    .line 29
    :cond_b
    iget v0, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_c

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Ls1/a/a/a/v0/e/n$b;->j:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/n$b;->j:Ljava/util/List;

    .line 31
    iget v0, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    .line 32
    :cond_c
    iget-object v0, p0, Ls1/a/a/a/v0/e/n$b;->j:Ljava/util/List;

    .line 33
    iget-object v1, p1, Ls1/a/a/a/v0/e/n;->i:Ljava/util/List;

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    :cond_d
    :goto_5
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/n;->l()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 36
    iget-object v0, p1, Ls1/a/a/a/v0/e/n;->j:Ls1/a/a/a/v0/e/q;

    .line 37
    iget v1, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    const/16 v4, 0x40

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_e

    iget-object v1, p0, Ls1/a/a/a/v0/e/n$b;->k:Ls1/a/a/a/v0/e/q;

    .line 38
    sget-object v5, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    if-eq v1, v5, :cond_e

    .line 39
    invoke-static {v1, v0}, Le/d/c/a/a;->h0(Ls1/a/a/a/v0/e/q;Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/n$b;->k:Ls1/a/a/a/v0/e/q;

    goto :goto_6

    .line 40
    :cond_e
    iput-object v0, p0, Ls1/a/a/a/v0/e/n$b;->k:Ls1/a/a/a/v0/e/q;

    .line 41
    :goto_6
    iget v0, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    or-int/2addr v0, v4

    iput v0, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    .line 42
    :cond_f
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/n;->m()Z

    move-result v0

    const/16 v1, 0x80

    if-eqz v0, :cond_10

    .line 43
    iget v0, p1, Ls1/a/a/a/v0/e/n;->k:I

    .line 44
    iget v4, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    or-int/2addr v4, v1

    iput v4, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    .line 45
    iput v0, p0, Ls1/a/a/a/v0/e/n$b;->l:I

    .line 46
    :cond_10
    iget v0, p1, Ls1/a/a/a/v0/e/n;->c:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_11

    move v0, v3

    goto :goto_7

    :cond_11
    move v0, v2

    :goto_7
    const/16 v1, 0x100

    if-eqz v0, :cond_13

    .line 47
    iget-object v0, p1, Ls1/a/a/a/v0/e/n;->l:Ls1/a/a/a/v0/e/u;

    .line 48
    iget v4, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_12

    iget-object v4, p0, Ls1/a/a/a/v0/e/n$b;->m:Ls1/a/a/a/v0/e/u;

    .line 49
    sget-object v5, Ls1/a/a/a/v0/e/u;->l:Ls1/a/a/a/v0/e/u;

    if-eq v4, v5, :cond_12

    .line 50
    new-instance v5, Ls1/a/a/a/v0/e/u$b;

    invoke-direct {v5}, Ls1/a/a/a/v0/e/u$b;-><init>()V

    .line 51
    invoke-virtual {v5, v4}, Ls1/a/a/a/v0/e/u$b;->h(Ls1/a/a/a/v0/e/u;)Ls1/a/a/a/v0/e/u$b;

    .line 52
    invoke-virtual {v5, v0}, Ls1/a/a/a/v0/e/u$b;->h(Ls1/a/a/a/v0/e/u;)Ls1/a/a/a/v0/e/u$b;

    invoke-virtual {v5}, Ls1/a/a/a/v0/e/u$b;->g()Ls1/a/a/a/v0/e/u;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/n$b;->m:Ls1/a/a/a/v0/e/u;

    goto :goto_8

    .line 53
    :cond_12
    iput-object v0, p0, Ls1/a/a/a/v0/e/n$b;->m:Ls1/a/a/a/v0/e/u;

    .line 54
    :goto_8
    iget v0, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    .line 55
    :cond_13
    iget v0, p1, Ls1/a/a/a/v0/e/n;->c:I

    and-int/lit16 v4, v0, 0x100

    if-ne v4, v1, :cond_14

    move v1, v3

    goto :goto_9

    :cond_14
    move v1, v2

    :goto_9
    const/16 v4, 0x200

    if-eqz v1, :cond_15

    .line 56
    iget v1, p1, Ls1/a/a/a/v0/e/n;->m:I

    .line 57
    iget v5, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    or-int/2addr v5, v4

    iput v5, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    .line 58
    iput v1, p0, Ls1/a/a/a/v0/e/n$b;->n:I

    :cond_15
    and-int/2addr v0, v4

    if-ne v0, v4, :cond_16

    move v2, v3

    :cond_16
    if-eqz v2, :cond_17

    .line 59
    iget v0, p1, Ls1/a/a/a/v0/e/n;->n:I

    .line 60
    iget v1, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    .line 61
    iput v0, p0, Ls1/a/a/a/v0/e/n$b;->o:I

    .line 62
    :cond_17
    iget-object v0, p1, Ls1/a/a/a/v0/e/n;->o:Ljava/util/List;

    .line 63
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 64
    iget-object v0, p0, Ls1/a/a/a/v0/e/n$b;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 65
    iget-object v0, p1, Ls1/a/a/a/v0/e/n;->o:Ljava/util/List;

    .line 66
    iput-object v0, p0, Ls1/a/a/a/v0/e/n$b;->p:Ljava/util/List;

    .line 67
    iget v0, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    goto :goto_a

    .line 68
    :cond_18
    iget v0, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_19

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ls1/a/a/a/v0/e/n$b;->p:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/n$b;->p:Ljava/util/List;

    .line 70
    iget v0, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/n$b;->d:I

    .line 71
    :cond_19
    iget-object v0, p0, Ls1/a/a/a/v0/e/n$b;->p:Ljava/util/List;

    .line 72
    iget-object v1, p1, Ls1/a/a/a/v0/e/n;->o:Ljava/util/List;

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    :cond_1a
    :goto_a
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/h/h$c;->f(Ls1/a/a/a/v0/h/h$d;)V

    .line 75
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 76
    iget-object p1, p1, Ls1/a/a/a/v0/e/n;->b:Ls1/a/a/a/v0/h/c;

    .line 77
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/h/c;->b(Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/c;

    move-result-object p1

    .line 78
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    return-object p0
.end method

.method public i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/n$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ls1/a/a/a/v0/e/n;->s:Ls1/a/a/a/v0/h/r;

    invoke-interface {v1, p1, p2}, Ls1/a/a/a/v0/h/r;->a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/e/n;
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/n$b;->h(Ls1/a/a/a/v0/e/n;)Ls1/a/a/a/v0/e/n$b;

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
    check-cast p2, Ls1/a/a/a/v0/e/n;
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
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/e/n$b;->h(Ls1/a/a/a/v0/e/n;)Ls1/a/a/a/v0/e/n$b;

    :cond_1
    throw p1
.end method
