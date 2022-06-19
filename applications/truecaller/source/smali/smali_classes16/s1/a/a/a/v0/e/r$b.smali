.class public final Ls1/a/a/a/v0/e/r$b;
.super Ls1/a/a/a/v0/h/h$c;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$c<",
        "Ls1/a/a/a/v0/e/r;",
        "Ls1/a/a/a/v0/e/r$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/s;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ls1/a/a/a/v0/e/q;

.field public i:I

.field public j:Ls1/a/a/a/v0/e/q;

.field public k:I

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/b;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
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
    iput v0, p0, Ls1/a/a/a/v0/e/r$b;->e:I

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/r$b;->g:Ljava/util/List;

    .line 4
    sget-object v0, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    .line 5
    iput-object v0, p0, Ls1/a/a/a/v0/e/r$b;->h:Ls1/a/a/a/v0/e/q;

    .line 6
    iput-object v0, p0, Ls1/a/a/a/v0/e/r$b;->j:Ls1/a/a/a/v0/e/q;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/r$b;->l:Ljava/util/List;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/r$b;->m:Ljava/util/List;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/r$b;->i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/r$b;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/r$b;->i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/r$b;

    return-object p0
.end method

.method public build()Ls1/a/a/a/v0/h/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/r$b;->g()Ls1/a/a/a/v0/e/r;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/r;->isInitialized()Z

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
    new-instance v0, Ls1/a/a/a/v0/e/r$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/r$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/r$b;->g()Ls1/a/a/a/v0/e/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/r$b;->h(Ls1/a/a/a/v0/e/r;)Ls1/a/a/a/v0/e/r$b;

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
    new-instance v0, Ls1/a/a/a/v0/e/r$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/r$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/r$b;->g()Ls1/a/a/a/v0/e/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/r$b;->h(Ls1/a/a/a/v0/e/r;)Ls1/a/a/a/v0/e/r$b;

    return-object v0
.end method

.method public bridge synthetic e(Ls1/a/a/a/v0/h/h;)Ls1/a/a/a/v0/h/h$b;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/e/r;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/r$b;->h(Ls1/a/a/a/v0/e/r;)Ls1/a/a/a/v0/e/r$b;

    return-object p0
.end method

.method public g()Ls1/a/a/a/v0/e/r;
    .locals 5

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls1/a/a/a/v0/e/r;-><init>(Ls1/a/a/a/v0/h/h$c;Ls1/a/a/a/v0/e/a;)V

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v2, p0, Ls1/a/a/a/v0/e/r$b;->e:I

    .line 4
    iput v2, v0, Ls1/a/a/a/v0/e/r;->d:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget v2, p0, Ls1/a/a/a/v0/e/r$b;->f:I

    .line 6
    iput v2, v0, Ls1/a/a/a/v0/e/r;->e:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 7
    iget-object v2, p0, Ls1/a/a/a/v0/e/r$b;->g:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ls1/a/a/a/v0/e/r$b;->g:Ljava/util/List;

    .line 8
    iget v2, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    .line 9
    :cond_2
    iget-object v2, p0, Ls1/a/a/a/v0/e/r$b;->g:Ljava/util/List;

    .line 10
    iput-object v2, v0, Ls1/a/a/a/v0/e/r;->f:Ljava/util/List;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x4

    .line 11
    :cond_3
    iget-object v2, p0, Ls1/a/a/a/v0/e/r$b;->h:Ls1/a/a/a/v0/e/q;

    .line 12
    iput-object v2, v0, Ls1/a/a/a/v0/e/r;->g:Ls1/a/a/a/v0/e/q;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    .line 13
    :cond_4
    iget v2, p0, Ls1/a/a/a/v0/e/r$b;->i:I

    .line 14
    iput v2, v0, Ls1/a/a/a/v0/e/r;->h:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x10

    .line 15
    :cond_5
    iget-object v2, p0, Ls1/a/a/a/v0/e/r$b;->j:Ls1/a/a/a/v0/e/q;

    .line 16
    iput-object v2, v0, Ls1/a/a/a/v0/e/r;->i:Ls1/a/a/a/v0/e/q;

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    or-int/lit8 v3, v3, 0x20

    .line 17
    :cond_6
    iget v1, p0, Ls1/a/a/a/v0/e/r$b;->k:I

    .line 18
    iput v1, v0, Ls1/a/a/a/v0/e/r;->j:I

    .line 19
    iget v1, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    .line 20
    iget-object v1, p0, Ls1/a/a/a/v0/e/r$b;->l:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ls1/a/a/a/v0/e/r$b;->l:Ljava/util/List;

    .line 21
    iget v1, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    .line 22
    :cond_7
    iget-object v1, p0, Ls1/a/a/a/v0/e/r$b;->l:Ljava/util/List;

    .line 23
    iput-object v1, v0, Ls1/a/a/a/v0/e/r;->k:Ljava/util/List;

    .line 24
    iget v1, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 25
    iget-object v1, p0, Ls1/a/a/a/v0/e/r$b;->m:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ls1/a/a/a/v0/e/r$b;->m:Ljava/util/List;

    .line 26
    iget v1, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    .line 27
    :cond_8
    iget-object v1, p0, Ls1/a/a/a/v0/e/r$b;->m:Ljava/util/List;

    .line 28
    iput-object v1, v0, Ls1/a/a/a/v0/e/r;->l:Ljava/util/List;

    .line 29
    iput v3, v0, Ls1/a/a/a/v0/e/r;->c:I

    return-object v0
.end method

.method public h(Ls1/a/a/a/v0/e/r;)Ls1/a/a/a/v0/e/r$b;
    .locals 6

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/r;->o:Ls1/a/a/a/v0/e/r;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Ls1/a/a/a/v0/e/r;->c:I

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
    iget v1, p1, Ls1/a/a/a/v0/e/r;->d:I

    .line 4
    iget v4, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    or-int/2addr v4, v3

    iput v4, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    .line 5
    iput v1, p0, Ls1/a/a/a/v0/e/r$b;->e:I

    :cond_2
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    .line 6
    iget v0, p1, Ls1/a/a/a/v0/e/r;->e:I

    .line 7
    iget v4, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    or-int/2addr v1, v4

    iput v1, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    .line 8
    iput v0, p0, Ls1/a/a/a/v0/e/r$b;->f:I

    .line 9
    :cond_4
    iget-object v0, p1, Ls1/a/a/a/v0/e/r;->f:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 11
    iget-object v0, p0, Ls1/a/a/a/v0/e/r$b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p1, Ls1/a/a/a/v0/e/r;->f:Ljava/util/List;

    .line 13
    iput-object v0, p0, Ls1/a/a/a/v0/e/r$b;->g:Ljava/util/List;

    .line 14
    iget v0, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    goto :goto_2

    .line 15
    :cond_5
    iget v0, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_6

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Ls1/a/a/a/v0/e/r$b;->g:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/r$b;->g:Ljava/util/List;

    .line 17
    iget v0, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    .line 18
    :cond_6
    iget-object v0, p0, Ls1/a/a/a/v0/e/r$b;->g:Ljava/util/List;

    .line 19
    iget-object v1, p1, Ls1/a/a/a/v0/e/r;->f:Ljava/util/List;

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    :cond_7
    :goto_2
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/r;->m()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_9

    .line 22
    iget-object v0, p1, Ls1/a/a/a/v0/e/r;->g:Ls1/a/a/a/v0/e/q;

    .line 23
    iget v4, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_8

    iget-object v4, p0, Ls1/a/a/a/v0/e/r$b;->h:Ls1/a/a/a/v0/e/q;

    .line 24
    sget-object v5, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    if-eq v4, v5, :cond_8

    .line 25
    invoke-static {v4, v0}, Le/d/c/a/a;->h0(Ls1/a/a/a/v0/e/q;Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/r$b;->h:Ls1/a/a/a/v0/e/q;

    goto :goto_3

    .line 26
    :cond_8
    iput-object v0, p0, Ls1/a/a/a/v0/e/r$b;->h:Ls1/a/a/a/v0/e/q;

    .line 27
    :goto_3
    iget v0, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    .line 28
    :cond_9
    iget v0, p1, Ls1/a/a/a/v0/e/r;->c:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    move v0, v3

    goto :goto_4

    :cond_a
    move v0, v2

    :goto_4
    if-eqz v0, :cond_b

    .line 29
    iget v0, p1, Ls1/a/a/a/v0/e/r;->h:I

    .line 30
    iget v1, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    .line 31
    iput v0, p0, Ls1/a/a/a/v0/e/r$b;->i:I

    .line 32
    :cond_b
    invoke-virtual {p1}, Ls1/a/a/a/v0/e/r;->l()Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_d

    .line 33
    iget-object v0, p1, Ls1/a/a/a/v0/e/r;->i:Ls1/a/a/a/v0/e/q;

    .line 34
    iget v4, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_c

    iget-object v4, p0, Ls1/a/a/a/v0/e/r$b;->j:Ls1/a/a/a/v0/e/q;

    .line 35
    sget-object v5, Ls1/a/a/a/v0/e/q;->t:Ls1/a/a/a/v0/e/q;

    if-eq v4, v5, :cond_c

    .line 36
    invoke-static {v4, v0}, Le/d/c/a/a;->h0(Ls1/a/a/a/v0/e/q;Ls1/a/a/a/v0/e/q;)Ls1/a/a/a/v0/e/q;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/r$b;->j:Ls1/a/a/a/v0/e/q;

    goto :goto_5

    .line 37
    :cond_c
    iput-object v0, p0, Ls1/a/a/a/v0/e/r$b;->j:Ls1/a/a/a/v0/e/q;

    .line 38
    :goto_5
    iget v0, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    .line 39
    :cond_d
    iget v0, p1, Ls1/a/a/a/v0/e/r;->c:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    move v2, v3

    :cond_e
    if-eqz v2, :cond_f

    .line 40
    iget v0, p1, Ls1/a/a/a/v0/e/r;->j:I

    .line 41
    iget v1, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    .line 42
    iput v0, p0, Ls1/a/a/a/v0/e/r$b;->k:I

    .line 43
    :cond_f
    iget-object v0, p1, Ls1/a/a/a/v0/e/r;->k:Ljava/util/List;

    .line 44
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 45
    iget-object v0, p0, Ls1/a/a/a/v0/e/r$b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 46
    iget-object v0, p1, Ls1/a/a/a/v0/e/r;->k:Ljava/util/List;

    .line 47
    iput-object v0, p0, Ls1/a/a/a/v0/e/r$b;->l:Ljava/util/List;

    .line 48
    iget v0, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    goto :goto_6

    .line 49
    :cond_10
    iget v0, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_11

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ls1/a/a/a/v0/e/r$b;->l:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/r$b;->l:Ljava/util/List;

    .line 51
    iget v0, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    .line 52
    :cond_11
    iget-object v0, p0, Ls1/a/a/a/v0/e/r$b;->l:Ljava/util/List;

    .line 53
    iget-object v1, p1, Ls1/a/a/a/v0/e/r;->k:Ljava/util/List;

    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    :cond_12
    :goto_6
    iget-object v0, p1, Ls1/a/a/a/v0/e/r;->l:Ljava/util/List;

    .line 56
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 57
    iget-object v0, p0, Ls1/a/a/a/v0/e/r$b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 58
    iget-object v0, p1, Ls1/a/a/a/v0/e/r;->l:Ljava/util/List;

    .line 59
    iput-object v0, p0, Ls1/a/a/a/v0/e/r$b;->m:Ljava/util/List;

    .line 60
    iget v0, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    goto :goto_7

    .line 61
    :cond_13
    iget v0, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_14

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ls1/a/a/a/v0/e/r$b;->m:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/r$b;->m:Ljava/util/List;

    .line 63
    iget v0, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Ls1/a/a/a/v0/e/r$b;->d:I

    .line 64
    :cond_14
    iget-object v0, p0, Ls1/a/a/a/v0/e/r$b;->m:Ljava/util/List;

    .line 65
    iget-object v1, p1, Ls1/a/a/a/v0/e/r;->l:Ljava/util/List;

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    :cond_15
    :goto_7
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/h/h$c;->f(Ls1/a/a/a/v0/h/h$d;)V

    .line 68
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 69
    iget-object p1, p1, Ls1/a/a/a/v0/e/r;->b:Ls1/a/a/a/v0/h/c;

    .line 70
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/h/c;->b(Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/c;

    move-result-object p1

    .line 71
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    return-object p0
.end method

.method public i(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/r$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ls1/a/a/a/v0/e/r;->p:Ls1/a/a/a/v0/h/r;

    invoke-interface {v1, p1, p2}, Ls1/a/a/a/v0/h/r;->a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/e/r;
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/r$b;->h(Ls1/a/a/a/v0/e/r;)Ls1/a/a/a/v0/e/r$b;

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
    check-cast p2, Ls1/a/a/a/v0/e/r;
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
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/e/r$b;->h(Ls1/a/a/a/v0/e/r;)Ls1/a/a/a/v0/e/r$b;

    :cond_1
    throw p1
.end method
