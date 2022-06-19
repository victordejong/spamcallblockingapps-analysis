.class public final Ls1/a/a/a/v0/e/i$b;
.super Ls1/a/a/a/v0/h/h$c;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$c<",
        "Ls1/a/a/a/v0/e/i;",
        "Ls1/a/a/a/v0/e/i$b;",
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

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/u;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ls1/a/a/a/v0/e/t;

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ls1/a/a/a/v0/e/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$c;-><init>()V

    const/4 v0, 0x6

    .line 2
    iput v0, p0, Ls1/a/a/a/v0/e/i$b;->e:I

    .line 3
    iput v0, p0, Ls1/a/a/a/v0/e/i$b;->f:I

    .line 4
    sget-object v0, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    .line 5
    iput-object v0, p0, Ls1/a/a/a/v0/e/i$b;->h:Ls1/a/a/a/v0/e/q;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ls1/a/a/a/v0/e/i$b;->j:Ljava/util/List;

    .line 7
    iput-object v0, p0, Ls1/a/a/a/v0/e/i$b;->k:Ls1/a/a/a/v0/e/q;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/i$b;->m:Ljava/util/List;

    .line 9
    sget-object v0, Ls1/a/a/a/v0/e/t;->g:Ls1/a/a/a/v0/e/t;

    .line 10
    iput-object v0, p0, Ls1/a/a/a/v0/e/i$b;->n:Ls1/a/a/a/v0/e/t;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/i$b;->o:Ljava/util/List;

    .line 12
    sget-object v0, Ls1/a/a/a/v0/e/e;->e:Ls1/a/a/a/v0/e/e;

    .line 13
    iput-object v0, p0, Ls1/a/a/a/v0/e/i$b;->p:Ls1/a/a/a/v0/e/e;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/i$b;->i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/i$b;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/i$b;->i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/i$b;

    return-object p0
.end method

.method public build()Ls1/a/a/a/v0/h/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/i$b;->g()Ls1/a/a/a/v0/e/i;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/i;->isInitialized()Z

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
    new-instance v0, Ls1/a/a/a/v0/e/i$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/i$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/i$b;->g()Ls1/a/a/a/v0/e/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/i$b;->h(Ls1/a/a/a/v0/e/i;)Ls1/a/a/a/v0/e/i$b;

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
    new-instance v0, Ls1/a/a/a/v0/e/i$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/i$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/i$b;->g()Ls1/a/a/a/v0/e/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/i$b;->h(Ls1/a/a/a/v0/e/i;)Ls1/a/a/a/v0/e/i$b;

    return-object v0
.end method

.method public bridge synthetic e(Ls1/a/a/a/v0/h/h;)Ls1/a/a/a/v0/h/h$b;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/e/i;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/i$b;->h(Ls1/a/a/a/v0/e/i;)Ls1/a/a/a/v0/e/i$b;

    return-object p0
.end method

.method public g()Ls1/a/a/a/v0/e/i;
    .locals 5

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls1/a/a/a/v0/e/i;-><init>(Ls1/a/a/a/v0/h/h$c;Ls1/a/a/a/v0/e/a;)V

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v2, p0, Ls1/a/a/a/v0/e/i$b;->e:I

    .line 4
    iput v2, v0, Ls1/a/a/a/v0/e/i;->d:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget v2, p0, Ls1/a/a/a/v0/e/i$b;->f:I

    .line 6
    iput v2, v0, Ls1/a/a/a/v0/e/i;->e:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget v2, p0, Ls1/a/a/a/v0/e/i$b;->g:I

    .line 8
    iput v2, v0, Ls1/a/a/a/v0/e/i;->f:I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 9
    :cond_3
    iget-object v2, p0, Ls1/a/a/a/v0/e/i$b;->h:Ls1/a/a/a/v0/e/q;

    .line 10
    iput-object v2, v0, Ls1/a/a/a/v0/e/i;->g:Ls1/a/a/a/v0/e/q;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 11
    :cond_4
    iget v2, p0, Ls1/a/a/a/v0/e/i$b;->i:I

    .line 12
    iput v2, v0, Ls1/a/a/a/v0/e/i;->h:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    .line 13
    iget-object v2, p0, Ls1/a/a/a/v0/e/i$b;->j:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ls1/a/a/a/v0/e/i$b;->j:Ljava/util/List;

    .line 14
    iget v2, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    .line 15
    :cond_5
    iget-object v2, p0, Ls1/a/a/a/v0/e/i$b;->j:Ljava/util/List;

    .line 16
    iput-object v2, v0, Ls1/a/a/a/v0/e/i;->i:Ljava/util/List;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x20

    .line 17
    :cond_6
    iget-object v2, p0, Ls1/a/a/a/v0/e/i$b;->k:Ls1/a/a/a/v0/e/q;

    .line 18
    iput-object v2, v0, Ls1/a/a/a/v0/e/i;->j:Ls1/a/a/a/v0/e/q;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x40

    .line 19
    :cond_7
    iget v2, p0, Ls1/a/a/a/v0/e/i$b;->l:I

    .line 20
    iput v2, v0, Ls1/a/a/a/v0/e/i;->k:I

    .line 21
    iget v2, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    const/16 v4, 0x100

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    .line 22
    iget-object v2, p0, Ls1/a/a/a/v0/e/i$b;->m:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ls1/a/a/a/v0/e/i$b;->m:Ljava/util/List;

    .line 23
    iget v2, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    .line 24
    :cond_8
    iget-object v2, p0, Ls1/a/a/a/v0/e/i$b;->m:Ljava/util/List;

    .line 25
    iput-object v2, v0, Ls1/a/a/a/v0/e/i;->l:Ljava/util/List;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x80

    .line 26
    :cond_9
    iget-object v2, p0, Ls1/a/a/a/v0/e/i$b;->n:Ls1/a/a/a/v0/e/t;

    .line 27
    iput-object v2, v0, Ls1/a/a/a/v0/e/i;->m:Ls1/a/a/a/v0/e/t;

    .line 28
    iget v2, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    const/16 v4, 0x400

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_a

    .line 29
    iget-object v2, p0, Ls1/a/a/a/v0/e/i$b;->o:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ls1/a/a/a/v0/e/i$b;->o:Ljava/util/List;

    .line 30
    iget v2, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    .line 31
    :cond_a
    iget-object v2, p0, Ls1/a/a/a/v0/e/i$b;->o:Ljava/util/List;

    .line 32
    iput-object v2, v0, Ls1/a/a/a/v0/e/i;->n:Ljava/util/List;

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    or-int/lit16 v3, v3, 0x100

    .line 33
    :cond_b
    iget-object v1, p0, Ls1/a/a/a/v0/e/i$b;->p:Ls1/a/a/a/v0/e/e;

    .line 34
    iput-object v1, v0, Ls1/a/a/a/v0/e/i;->o:Ls1/a/a/a/v0/e/e;

    .line 35
    iput v3, v0, Ls1/a/a/a/v0/e/i;->c:I

    return-object v0
.end method

.method public h(Ls1/a/a/a/v0/e/i;)Ls1/a/a/a/v0/e/i$b;
    .locals 7

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/i;->r:Ls1/a/a/a/v0/e/i;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Ls1/a/a/a/v0/e/i;->c:I

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
    iget v1, p1, Ls1/a/a/a/v0/e/i;->d:I

    .line 4
    iget v4, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    or-int/2addr v4, v3

    iput v4, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    .line 5
    iput v1, p0, Ls1/a/a/a/v0/e/i$b;->e:I

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
    iget v1, p1, Ls1/a/a/a/v0/e/i;->e:I

    .line 7
    iget v5, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    or-int/2addr v4, v5

    iput v4, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    .line 8
    iput v1, p0, Ls1/a/a/a/v0/e/i$b;->f:I

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
    iget v0, p1, Ls1/a/a/a/v0/e/i;->f:I

    .line 10
    iget v4, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    or-int/2addr v1, v4

    iput v1, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    .line 11
    iput v0, p0, Ls1/a/a/a/v0/e/i$b;->g:I

    .line 12
    :cond_6
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/i;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13
    iget-object v0, p1, Ls1/a/a/a/v0/e/i;->g:Ls1/a/a/a/v0/e/q;

    .line 14
    iget v1, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Ls1/a/a/a/v0/e/i$b;->h:Ls1/a/a/a/v0/e/q;

    .line 15
    sget-object v5, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    if-eq v1, v5, :cond_7

    .line 16
    invoke-static {v1, v0}, Le/d/c/a/a;->h0(Ls1/a/a/a/v0/e/q;Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/i$b;->h:Ls1/a/a/a/v0/e/q;

    goto :goto_3

    .line 17
    :cond_7
    iput-object v0, p0, Ls1/a/a/a/v0/e/i$b;->h:Ls1/a/a/a/v0/e/q;

    .line 18
    :goto_3
    iget v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    or-int/2addr v0, v4

    iput v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    .line 19
    :cond_8
    iget v0, p1, Ls1/a/a/a/v0/e/i;->c:I

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
    iget v0, p1, Ls1/a/a/a/v0/e/i;->h:I

    .line 21
    iget v4, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    or-int/2addr v1, v4

    iput v1, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    .line 22
    iput v0, p0, Ls1/a/a/a/v0/e/i$b;->i:I

    .line 23
    :cond_a
    iget-object v0, p1, Ls1/a/a/a/v0/e/i;->i:Ljava/util/List;

    .line 24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 25
    iget-object v0, p0, Ls1/a/a/a/v0/e/i$b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26
    iget-object v0, p1, Ls1/a/a/a/v0/e/i;->i:Ljava/util/List;

    .line 27
    iput-object v0, p0, Ls1/a/a/a/v0/e/i$b;->j:Ljava/util/List;

    .line 28
    iget v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    goto :goto_5

    .line 29
    :cond_b
    iget v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_c

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Ls1/a/a/a/v0/e/i$b;->j:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/i$b;->j:Ljava/util/List;

    .line 31
    iget v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    .line 32
    :cond_c
    iget-object v0, p0, Ls1/a/a/a/v0/e/i$b;->j:Ljava/util/List;

    .line 33
    iget-object v1, p1, Ls1/a/a/a/v0/e/i;->i:Ljava/util/List;

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    :cond_d
    :goto_5
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/i;->l()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 36
    iget-object v0, p1, Ls1/a/a/a/v0/e/i;->j:Ls1/a/a/a/v0/e/q;

    .line 37
    iget v1, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    const/16 v4, 0x40

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_e

    iget-object v1, p0, Ls1/a/a/a/v0/e/i$b;->k:Ls1/a/a/a/v0/e/q;

    .line 38
    sget-object v5, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    if-eq v1, v5, :cond_e

    .line 39
    invoke-static {v1, v0}, Le/d/c/a/a;->h0(Ls1/a/a/a/v0/e/q;Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/i$b;->k:Ls1/a/a/a/v0/e/q;

    goto :goto_6

    .line 40
    :cond_e
    iput-object v0, p0, Ls1/a/a/a/v0/e/i$b;->k:Ls1/a/a/a/v0/e/q;

    .line 41
    :goto_6
    iget v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    or-int/2addr v0, v4

    iput v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    .line 42
    :cond_f
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/i;->m()Z

    move-result v0

    const/16 v1, 0x80

    if-eqz v0, :cond_10

    .line 43
    iget v0, p1, Ls1/a/a/a/v0/e/i;->k:I

    .line 44
    iget v4, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    or-int/2addr v4, v1

    iput v4, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    .line 45
    iput v0, p0, Ls1/a/a/a/v0/e/i$b;->l:I

    .line 46
    :cond_10
    iget-object v0, p1, Ls1/a/a/a/v0/e/i;->l:Ljava/util/List;

    .line 47
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v4, 0x100

    if-nez v0, :cond_13

    .line 48
    iget-object v0, p0, Ls1/a/a/a/v0/e/i$b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 49
    iget-object v0, p1, Ls1/a/a/a/v0/e/i;->l:Ljava/util/List;

    .line 50
    iput-object v0, p0, Ls1/a/a/a/v0/e/i$b;->m:Ljava/util/List;

    .line 51
    iget v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    goto :goto_7

    .line 52
    :cond_11
    iget v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_12

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Ls1/a/a/a/v0/e/i$b;->m:Ljava/util/List;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/i$b;->m:Ljava/util/List;

    .line 54
    iget v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    or-int/2addr v0, v4

    iput v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    .line 55
    :cond_12
    iget-object v0, p0, Ls1/a/a/a/v0/e/i$b;->m:Ljava/util/List;

    .line 56
    iget-object v5, p1, Ls1/a/a/a/v0/e/i;->l:Ljava/util/List;

    .line 57
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    :cond_13
    :goto_7
    iget v0, p1, Ls1/a/a/a/v0/e/i;->c:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_14

    move v0, v3

    goto :goto_8

    :cond_14
    move v0, v2

    :goto_8
    if-eqz v0, :cond_16

    .line 59
    iget-object v0, p1, Ls1/a/a/a/v0/e/i;->m:Ls1/a/a/a/v0/e/t;

    .line 60
    iget v1, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    const/16 v5, 0x200

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_15

    iget-object v1, p0, Ls1/a/a/a/v0/e/i$b;->n:Ls1/a/a/a/v0/e/t;

    .line 61
    sget-object v6, Ls1/a/a/a/v0/e/t;->g:Ls1/a/a/a/v0/e/t;

    if-eq v1, v6, :cond_15

    .line 62
    invoke-static {v1}, Ls1/a/a/a/v0/e/t;->d(Ls1/a/a/a/v0/e/t;)Ls1/a/a/a/v0/e/t$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Ls1/a/a/a/v0/e/t$b;->g(Ls1/a/a/a/v0/e/t;)Ls1/a/a/a/v0/e/t$b;

    invoke-virtual {v1}, Ls1/a/a/a/v0/e/t$b;->f()Ls1/a/a/a/v0/e/t;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/i$b;->n:Ls1/a/a/a/v0/e/t;

    goto :goto_9

    .line 63
    :cond_15
    iput-object v0, p0, Ls1/a/a/a/v0/e/i$b;->n:Ls1/a/a/a/v0/e/t;

    .line 64
    :goto_9
    iget v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    or-int/2addr v0, v5

    iput v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    .line 65
    :cond_16
    iget-object v0, p1, Ls1/a/a/a/v0/e/i;->n:Ljava/util/List;

    .line 66
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 67
    iget-object v0, p0, Ls1/a/a/a/v0/e/i$b;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 68
    iget-object v0, p1, Ls1/a/a/a/v0/e/i;->n:Ljava/util/List;

    .line 69
    iput-object v0, p0, Ls1/a/a/a/v0/e/i$b;->o:Ljava/util/List;

    .line 70
    iget v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    goto :goto_a

    .line 71
    :cond_17
    iget v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_18

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Ls1/a/a/a/v0/e/i$b;->o:Ljava/util/List;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/i$b;->o:Ljava/util/List;

    .line 73
    iget v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    .line 74
    :cond_18
    iget-object v0, p0, Ls1/a/a/a/v0/e/i$b;->o:Ljava/util/List;

    .line 75
    iget-object v1, p1, Ls1/a/a/a/v0/e/i;->n:Ljava/util/List;

    .line 76
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    :cond_19
    :goto_a
    iget v0, p1, Ls1/a/a/a/v0/e/i;->c:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_1a

    move v2, v3

    :cond_1a
    if-eqz v2, :cond_1c

    .line 78
    iget-object v0, p1, Ls1/a/a/a/v0/e/i;->o:Ls1/a/a/a/v0/e/e;

    .line 79
    iget v1, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Ls1/a/a/a/v0/e/i$b;->p:Ls1/a/a/a/v0/e/e;

    .line 80
    sget-object v3, Ls1/a/a/a/v0/e/e;->e:Ls1/a/a/a/v0/e/e;

    if-eq v1, v3, :cond_1b

    .line 81
    new-instance v3, Ls1/a/a/a/v0/e/e$b;

    invoke-direct {v3}, Ls1/a/a/a/v0/e/e$b;-><init>()V

    .line 82
    invoke-virtual {v3, v1}, Ls1/a/a/a/v0/e/e$b;->g(Ls1/a/a/a/v0/e/e;)Ls1/a/a/a/v0/e/e$b;

    .line 83
    invoke-virtual {v3, v0}, Ls1/a/a/a/v0/e/e$b;->g(Ls1/a/a/a/v0/e/e;)Ls1/a/a/a/v0/e/e$b;

    invoke-virtual {v3}, Ls1/a/a/a/v0/e/e$b;->f()Ls1/a/a/a/v0/e/e;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/i$b;->p:Ls1/a/a/a/v0/e/e;

    goto :goto_b

    .line 84
    :cond_1b
    iput-object v0, p0, Ls1/a/a/a/v0/e/i$b;->p:Ls1/a/a/a/v0/e/e;

    .line 85
    :goto_b
    iget v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    or-int/2addr v0, v2

    iput v0, p0, Ls1/a/a/a/v0/e/i$b;->d:I

    .line 86
    :cond_1c
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/h/h$c;->f(Ls1/a/a/a/v0/h/h$d;)V

    .line 87
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 88
    iget-object p1, p1, Ls1/a/a/a/v0/e/i;->b:Ls1/a/a/a/v0/h/c;

    .line 89
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/h/c;->b(Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/c;

    move-result-object p1

    .line 90
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    return-object p0
.end method

.method public i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/i$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ls1/a/a/a/v0/e/i;->s:Ls1/a/a/a/v0/h/r;

    invoke-interface {v1, p1, p2}, Ls1/a/a/a/v0/h/r;->a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/e/i;
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/i$b;->h(Ls1/a/a/a/v0/e/i;)Ls1/a/a/a/v0/e/i$b;

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
    check-cast p2, Ls1/a/a/a/v0/e/i;
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
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/e/i$b;->h(Ls1/a/a/a/v0/e/i;)Ls1/a/a/a/v0/e/i$b;

    :cond_1
    throw p1
.end method
