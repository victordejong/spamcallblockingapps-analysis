.class public final Ls1/a/a/a/v0/e/q$c;
.super Ls1/a/a/a/v0/h/h$c;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$c<",
        "Ls1/a/a/a/v0/e/q;",
        "Ls1/a/a/a/v0/e/q$c;",
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
            "Ls1/a/a/a/v0/e/q$b;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:I

.field public h:Ls1/a/a/a/v0/e/q;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Ls1/a/a/a/v0/e/q;

.field public o:I

.field public p:Ls1/a/a/a/v0/e/q;

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$c;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/q$c;->e:Ljava/util/List;

    .line 3
    sget-object v0, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    .line 4
    iput-object v0, p0, Ls1/a/a/a/v0/e/q$c;->h:Ls1/a/a/a/v0/e/q;

    .line 5
    iput-object v0, p0, Ls1/a/a/a/v0/e/q$c;->n:Ls1/a/a/a/v0/e/q;

    .line 6
    iput-object v0, p0, Ls1/a/a/a/v0/e/q$c;->p:Ls1/a/a/a/v0/e/q;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/q$c;->i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/q$c;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/q$c;->i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/q$c;

    return-object p0
.end method

.method public build()Ls1/a/a/a/v0/h/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/q$c;->g()Ls1/a/a/a/v0/e/q;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/q;->isInitialized()Z

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
    new-instance v0, Ls1/a/a/a/v0/e/q$c;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/q$c;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/q$c;->g()Ls1/a/a/a/v0/e/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/q$c;->h(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q$c;

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
    new-instance v0, Ls1/a/a/a/v0/e/q$c;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/q$c;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/q$c;->g()Ls1/a/a/a/v0/e/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/q$c;->h(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q$c;

    return-object v0
.end method

.method public bridge synthetic e(Ls1/a/a/a/v0/h/h;)Ls1/a/a/a/v0/h/h$b;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/e/q;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/q$c;->h(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q$c;

    move-result-object p1

    return-object p1
.end method

.method public g()Ls1/a/a/a/v0/e/q;
    .locals 5

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls1/a/a/a/v0/e/q;-><init>(Ls1/a/a/a/v0/h/h$c;Ls1/a/a/a/v0/e/a;)V

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3
    iget-object v2, p0, Ls1/a/a/a/v0/e/q$c;->e:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ls1/a/a/a/v0/e/q$c;->e:Ljava/util/List;

    .line 4
    iget v2, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    .line 5
    :cond_0
    iget-object v2, p0, Ls1/a/a/a/v0/e/q$c;->e:Ljava/util/List;

    .line 6
    iput-object v2, v0, Ls1/a/a/a/v0/e/q;->d:Ljava/util/List;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 7
    :goto_0
    iget-boolean v2, p0, Ls1/a/a/a/v0/e/q$c;->f:Z

    .line 8
    iput-boolean v2, v0, Ls1/a/a/a/v0/e/q;->e:Z

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x2

    .line 9
    :cond_2
    iget v2, p0, Ls1/a/a/a/v0/e/q$c;->g:I

    .line 10
    iput v2, v0, Ls1/a/a/a/v0/e/q;->f:I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x4

    .line 11
    :cond_3
    iget-object v2, p0, Ls1/a/a/a/v0/e/q$c;->h:Ls1/a/a/a/v0/e/q;

    .line 12
    iput-object v2, v0, Ls1/a/a/a/v0/e/q;->g:Ls1/a/a/a/v0/e/q;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    .line 13
    :cond_4
    iget v2, p0, Ls1/a/a/a/v0/e/q$c;->i:I

    .line 14
    iput v2, v0, Ls1/a/a/a/v0/e/q;->h:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x10

    .line 15
    :cond_5
    iget v2, p0, Ls1/a/a/a/v0/e/q$c;->j:I

    .line 16
    iput v2, v0, Ls1/a/a/a/v0/e/q;->i:I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x20

    .line 17
    :cond_6
    iget v2, p0, Ls1/a/a/a/v0/e/q$c;->k:I

    .line 18
    iput v2, v0, Ls1/a/a/a/v0/e/q;->j:I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x40

    .line 19
    :cond_7
    iget v2, p0, Ls1/a/a/a/v0/e/q$c;->l:I

    .line 20
    iput v2, v0, Ls1/a/a/a/v0/e/q;->k:I

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x80

    .line 21
    :cond_8
    iget v2, p0, Ls1/a/a/a/v0/e/q$c;->m:I

    .line 22
    iput v2, v0, Ls1/a/a/a/v0/e/q;->l:I

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x100

    .line 23
    :cond_9
    iget-object v2, p0, Ls1/a/a/a/v0/e/q$c;->n:Ls1/a/a/a/v0/e/q;

    .line 24
    iput-object v2, v0, Ls1/a/a/a/v0/e/q;->m:Ls1/a/a/a/v0/e/q;

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_a

    or-int/lit16 v3, v3, 0x200

    .line 25
    :cond_a
    iget v2, p0, Ls1/a/a/a/v0/e/q$c;->o:I

    .line 26
    iput v2, v0, Ls1/a/a/a/v0/e/q;->n:I

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x400

    .line 27
    :cond_b
    iget-object v2, p0, Ls1/a/a/a/v0/e/q$c;->p:Ls1/a/a/a/v0/e/q;

    .line 28
    iput-object v2, v0, Ls1/a/a/a/v0/e/q;->o:Ls1/a/a/a/v0/e/q;

    and-int/lit16 v2, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_c

    or-int/lit16 v3, v3, 0x800

    .line 29
    :cond_c
    iget v2, p0, Ls1/a/a/a/v0/e/q$c;->q:I

    .line 30
    iput v2, v0, Ls1/a/a/a/v0/e/q;->p:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    or-int/lit16 v3, v3, 0x1000

    .line 31
    :cond_d
    iget v1, p0, Ls1/a/a/a/v0/e/q$c;->r:I

    .line 32
    iput v1, v0, Ls1/a/a/a/v0/e/q;->q:I

    .line 33
    iput v3, v0, Ls1/a/a/a/v0/e/q;->c:I

    return-object v0
.end method

.method public h(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q$c;
    .locals 7

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v1, p1, Ls1/a/a/a/v0/e/q;->d:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 4
    iget-object v1, p0, Ls1/a/a/a/v0/e/q$c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p1, Ls1/a/a/a/v0/e/q;->d:Ljava/util/List;

    .line 6
    iput-object v1, p0, Ls1/a/a/a/v0/e/q$c;->e:Ljava/util/List;

    .line 7
    iget v1, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    goto :goto_0

    .line 8
    :cond_1
    iget v1, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_2

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Ls1/a/a/a/v0/e/q$c;->e:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Ls1/a/a/a/v0/e/q$c;->e:Ljava/util/List;

    .line 10
    iget v1, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    or-int/2addr v1, v2

    iput v1, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    .line 11
    :cond_2
    iget-object v1, p0, Ls1/a/a/a/v0/e/q$c;->e:Ljava/util/List;

    .line 12
    iget-object v3, p1, Ls1/a/a/a/v0/e/q;->d:Ljava/util/List;

    .line 13
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_3
    :goto_0
    iget v1, p1, Ls1/a/a/a/v0/e/q;->c:I

    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    if-ne v3, v2, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    const/4 v5, 0x2

    if-eqz v3, :cond_5

    .line 15
    iget-boolean v3, p1, Ls1/a/a/a/v0/e/q;->e:Z

    .line 16
    iget v6, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    or-int/2addr v6, v5

    iput v6, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    .line 17
    iput-boolean v3, p0, Ls1/a/a/a/v0/e/q$c;->f:Z

    :cond_5
    and-int/2addr v1, v5

    if-ne v1, v5, :cond_6

    move v1, v2

    goto :goto_2

    :cond_6
    move v1, v4

    :goto_2
    if-eqz v1, :cond_7

    .line 18
    iget v1, p1, Ls1/a/a/a/v0/e/q;->f:I

    .line 19
    iget v3, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    .line 20
    iput v1, p0, Ls1/a/a/a/v0/e/q$c;->g:I

    .line 21
    :cond_7
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/q;->n()Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_9

    .line 22
    iget-object v1, p1, Ls1/a/a/a/v0/e/q;->g:Ls1/a/a/a/v0/e/q;

    .line 23
    iget v5, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_8

    iget-object v5, p0, Ls1/a/a/a/v0/e/q$c;->h:Ls1/a/a/a/v0/e/q;

    if-eq v5, v0, :cond_8

    .line 24
    invoke-static {v5, v1}, Le/d/c/a/a;->h0(Ls1/a/a/a/v0/e/q;Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q;

    move-result-object v1

    iput-object v1, p0, Ls1/a/a/a/v0/e/q$c;->h:Ls1/a/a/a/v0/e/q;

    goto :goto_3

    .line 25
    :cond_8
    iput-object v1, p0, Ls1/a/a/a/v0/e/q$c;->h:Ls1/a/a/a/v0/e/q;

    .line 26
    :goto_3
    iget v1, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    or-int/2addr v1, v3

    iput v1, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    .line 27
    :cond_9
    iget v1, p1, Ls1/a/a/a/v0/e/q;->c:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_a

    move v1, v2

    goto :goto_4

    :cond_a
    move v1, v4

    :goto_4
    if-eqz v1, :cond_b

    .line 28
    iget v1, p1, Ls1/a/a/a/v0/e/q;->h:I

    .line 29
    iget v3, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    .line 30
    iput v1, p0, Ls1/a/a/a/v0/e/q$c;->i:I

    .line 31
    :cond_b
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/q;->m()Z

    move-result v1

    const/16 v3, 0x20

    if-eqz v1, :cond_c

    .line 32
    iget v1, p1, Ls1/a/a/a/v0/e/q;->i:I

    .line 33
    iget v5, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    or-int/2addr v5, v3

    iput v5, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    .line 34
    iput v1, p0, Ls1/a/a/a/v0/e/q$c;->j:I

    .line 35
    :cond_c
    iget v1, p1, Ls1/a/a/a/v0/e/q;->c:I

    and-int/lit8 v5, v1, 0x20

    if-ne v5, v3, :cond_d

    move v3, v2

    goto :goto_5

    :cond_d
    move v3, v4

    :goto_5
    const/16 v5, 0x40

    if-eqz v3, :cond_e

    .line 36
    iget v3, p1, Ls1/a/a/a/v0/e/q;->j:I

    .line 37
    iget v6, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    or-int/2addr v6, v5

    iput v6, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    .line 38
    iput v3, p0, Ls1/a/a/a/v0/e/q$c;->k:I

    :cond_e
    and-int/2addr v1, v5

    if-ne v1, v5, :cond_f

    move v1, v2

    goto :goto_6

    :cond_f
    move v1, v4

    :goto_6
    if-eqz v1, :cond_10

    .line 39
    iget v1, p1, Ls1/a/a/a/v0/e/q;->k:I

    .line 40
    iget v3, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    .line 41
    iput v1, p0, Ls1/a/a/a/v0/e/q$c;->l:I

    .line 42
    :cond_10
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/q;->p()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 43
    iget v1, p1, Ls1/a/a/a/v0/e/q;->l:I

    .line 44
    iget v3, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    .line 45
    iput v1, p0, Ls1/a/a/a/v0/e/q$c;->m:I

    .line 46
    :cond_11
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/q;->o()Z

    move-result v1

    const/16 v3, 0x200

    if-eqz v1, :cond_13

    .line 47
    iget-object v1, p1, Ls1/a/a/a/v0/e/q;->m:Ls1/a/a/a/v0/e/q;

    .line 48
    iget v5, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_12

    iget-object v5, p0, Ls1/a/a/a/v0/e/q$c;->n:Ls1/a/a/a/v0/e/q;

    if-eq v5, v0, :cond_12

    .line 49
    invoke-static {v5, v1}, Le/d/c/a/a;->h0(Ls1/a/a/a/v0/e/q;Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q;

    move-result-object v1

    iput-object v1, p0, Ls1/a/a/a/v0/e/q$c;->n:Ls1/a/a/a/v0/e/q;

    goto :goto_7

    .line 50
    :cond_12
    iput-object v1, p0, Ls1/a/a/a/v0/e/q$c;->n:Ls1/a/a/a/v0/e/q;

    .line 51
    :goto_7
    iget v1, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    or-int/2addr v1, v3

    iput v1, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    .line 52
    :cond_13
    iget v1, p1, Ls1/a/a/a/v0/e/q;->c:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_14

    move v1, v2

    goto :goto_8

    :cond_14
    move v1, v4

    :goto_8
    if-eqz v1, :cond_15

    .line 53
    iget v1, p1, Ls1/a/a/a/v0/e/q;->n:I

    .line 54
    iget v3, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    .line 55
    iput v1, p0, Ls1/a/a/a/v0/e/q$c;->o:I

    .line 56
    :cond_15
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/q;->l()Z

    move-result v1

    const/16 v3, 0x800

    if-eqz v1, :cond_17

    .line 57
    iget-object v1, p1, Ls1/a/a/a/v0/e/q;->o:Ls1/a/a/a/v0/e/q;

    .line 58
    iget v5, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_16

    iget-object v5, p0, Ls1/a/a/a/v0/e/q$c;->p:Ls1/a/a/a/v0/e/q;

    if-eq v5, v0, :cond_16

    .line 59
    invoke-static {v5, v1}, Le/d/c/a/a;->h0(Ls1/a/a/a/v0/e/q;Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/q$c;->p:Ls1/a/a/a/v0/e/q;

    goto :goto_9

    .line 60
    :cond_16
    iput-object v1, p0, Ls1/a/a/a/v0/e/q$c;->p:Ls1/a/a/a/v0/e/q;

    .line 61
    :goto_9
    iget v0, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    or-int/2addr v0, v3

    iput v0, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    .line 62
    :cond_17
    iget v0, p1, Ls1/a/a/a/v0/e/q;->c:I

    and-int/lit16 v1, v0, 0x800

    if-ne v1, v3, :cond_18

    move v1, v2

    goto :goto_a

    :cond_18
    move v1, v4

    :goto_a
    const/16 v3, 0x1000

    if-eqz v1, :cond_19

    .line 63
    iget v1, p1, Ls1/a/a/a/v0/e/q;->p:I

    .line 64
    iget v5, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    or-int/2addr v5, v3

    iput v5, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    .line 65
    iput v1, p0, Ls1/a/a/a/v0/e/q$c;->q:I

    :cond_19
    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1a

    goto :goto_b

    :cond_1a
    move v2, v4

    :goto_b
    if-eqz v2, :cond_1b

    .line 66
    iget v0, p1, Ls1/a/a/a/v0/e/q;->q:I

    .line 67
    iget v1, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Ls1/a/a/a/v0/e/q$c;->d:I

    .line 68
    iput v0, p0, Ls1/a/a/a/v0/e/q$c;->r:I

    .line 69
    :cond_1b
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/h/h$c;->f(Ls1/a/a/a/v0/h/h$d;)V

    .line 70
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 71
    iget-object p1, p1, Ls1/a/a/a/v0/e/q;->b:Ls1/a/a/a/v0/h/c;

    .line 72
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/h/c;->b(Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/c;

    move-result-object p1

    .line 73
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    return-object p0
.end method

.method public i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/q$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ls1/a/a/a/v0/e/q;->u:Ls1/a/a/a/v0/h/r;

    invoke-interface {v1, p1, p2}, Ls1/a/a/a/v0/h/r;->a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/e/q;
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/q$c;->h(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q$c;

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
    check-cast p2, Ls1/a/a/a/v0/e/q;
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
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/e/q$c;->h(Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q$c;

    :cond_1
    throw p1
.end method
