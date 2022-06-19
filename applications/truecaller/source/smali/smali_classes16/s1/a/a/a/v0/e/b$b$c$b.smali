.class public final Ls1/a/a/a/v0/e/b$b$c$b;
.super Ls1/a/a/a/v0/h/h$b;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/b$b$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/h$b<",
        "Ls1/a/a/a/v0/e/b$b$c;",
        "Ls1/a/a/a/v0/e/b$b$c$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ls1/a/a/a/v0/e/b$b$c$c;

.field public d:J

.field public e:F

.field public f:D

.field public g:I

.field public h:I

.field public i:I

.field public j:Ls1/a/a/a/v0/e/b;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/b$b$c;",
            ">;"
        }
    .end annotation
.end field

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/h$b;-><init>()V

    .line 2
    sget-object v0, Ls1/a/a/a/v0/e/b$b$c$c;->b:Ls1/a/a/a/v0/e/b$b$c$c;

    iput-object v0, p0, Ls1/a/a/a/v0/e/b$b$c$b;->c:Ls1/a/a/a/v0/e/b$b$c$c;

    .line 3
    sget-object v0, Ls1/a/a/a/v0/e/b;->g:Ls1/a/a/a/v0/e/b;

    .line 4
    iput-object v0, p0, Ls1/a/a/a/v0/e/b$b$c$b;->j:Ls1/a/a/a/v0/e/b;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/b$b$c$b;->k:Ljava/util/List;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/b$b$c$b;->h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/b$b$c$b;

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
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/e/b$b$c$b;->h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/b$b$c$b;

    return-object p0
.end method

.method public build()Ls1/a/a/a/v0/h/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/b$b$c$b;->f()Ls1/a/a/a/v0/e/b$b$c;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/e/b$b$c;->isInitialized()Z

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
    new-instance v0, Ls1/a/a/a/v0/e/b$b$c$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/b$b$c$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/b$b$c$b;->f()Ls1/a/a/a/v0/e/b$b$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/b$b$c$b;->g(Ls1/a/a/a/v0/e/b$b$c;)Ls1/a/a/a/v0/e/b$b$c$b;

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
    new-instance v0, Ls1/a/a/a/v0/e/b$b$c$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/e/b$b$c$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/e/b$b$c$b;->f()Ls1/a/a/a/v0/e/b$b$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/e/b$b$c$b;->g(Ls1/a/a/a/v0/e/b$b$c;)Ls1/a/a/a/v0/e/b$b$c$b;

    return-object v0
.end method

.method public bridge synthetic e(Ls1/a/a/a/v0/h/h;)Ls1/a/a/a/v0/h/h$b;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/e/b$b$c;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/b$b$c$b;->g(Ls1/a/a/a/v0/e/b$b$c;)Ls1/a/a/a/v0/e/b$b$c$b;

    return-object p0
.end method

.method public f()Ls1/a/a/a/v0/e/b$b$c;
    .locals 6

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/b$b$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls1/a/a/a/v0/e/b$b$c;-><init>(Ls1/a/a/a/v0/h/h$b;Ls1/a/a/a/v0/e/a;)V

    .line 2
    iget v1, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Ls1/a/a/a/v0/e/b$b$c$b;->c:Ls1/a/a/a/v0/e/b$b$c$c;

    .line 4
    iput-object v2, v0, Ls1/a/a/a/v0/e/b$b$c;->c:Ls1/a/a/a/v0/e/b$b$c$c;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5
    :cond_1
    iget-wide v4, p0, Ls1/a/a/a/v0/e/b$b$c$b;->d:J

    .line 6
    iput-wide v4, v0, Ls1/a/a/a/v0/e/b$b$c;->d:J

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget v2, p0, Ls1/a/a/a/v0/e/b$b$c$b;->e:F

    .line 8
    iput v2, v0, Ls1/a/a/a/v0/e/b$b$c;->e:F

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 9
    :cond_3
    iget-wide v4, p0, Ls1/a/a/a/v0/e/b$b$c$b;->f:D

    .line 10
    iput-wide v4, v0, Ls1/a/a/a/v0/e/b$b$c;->f:D

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 11
    :cond_4
    iget v2, p0, Ls1/a/a/a/v0/e/b$b$c$b;->g:I

    .line 12
    iput v2, v0, Ls1/a/a/a/v0/e/b$b$c;->g:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 13
    :cond_5
    iget v2, p0, Ls1/a/a/a/v0/e/b$b$c$b;->h:I

    .line 14
    iput v2, v0, Ls1/a/a/a/v0/e/b$b$c;->h:I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 15
    :cond_6
    iget v2, p0, Ls1/a/a/a/v0/e/b$b$c$b;->i:I

    .line 16
    iput v2, v0, Ls1/a/a/a/v0/e/b$b$c;->i:I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 17
    :cond_7
    iget-object v2, p0, Ls1/a/a/a/v0/e/b$b$c$b;->j:Ls1/a/a/a/v0/e/b;

    .line 18
    iput-object v2, v0, Ls1/a/a/a/v0/e/b$b$c;->j:Ls1/a/a/a/v0/e/b;

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    .line 19
    iget-object v2, p0, Ls1/a/a/a/v0/e/b$b$c$b;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ls1/a/a/a/v0/e/b$b$c$b;->k:Ljava/util/List;

    .line 20
    iget v2, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    .line 21
    :cond_8
    iget-object v2, p0, Ls1/a/a/a/v0/e/b$b$c$b;->k:Ljava/util/List;

    .line 22
    iput-object v2, v0, Ls1/a/a/a/v0/e/b$b$c;->k:Ljava/util/List;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x100

    .line 23
    :cond_9
    iget v2, p0, Ls1/a/a/a/v0/e/b$b$c$b;->l:I

    .line 24
    iput v2, v0, Ls1/a/a/a/v0/e/b$b$c;->l:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    or-int/lit16 v3, v3, 0x200

    .line 25
    :cond_a
    iget v1, p0, Ls1/a/a/a/v0/e/b$b$c$b;->m:I

    .line 26
    iput v1, v0, Ls1/a/a/a/v0/e/b$b$c;->m:I

    .line 27
    iput v3, v0, Ls1/a/a/a/v0/e/b$b$c;->b:I

    return-object v0
.end method

.method public g(Ls1/a/a/a/v0/e/b$b$c;)Ls1/a/a/a/v0/e/b$b$c$b;
    .locals 7

    .line 1
    sget-object v0, Ls1/a/a/a/v0/e/b$b$c;->p:Ls1/a/a/a/v0/e/b$b$c;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget v0, p1, Ls1/a/a/a/v0/e/b$b$c;->b:I

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
    iget-object v0, p1, Ls1/a/a/a/v0/e/b$b$c;->c:Ls1/a/a/a/v0/e/b$b$c$c;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v3, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    or-int/2addr v3, v1

    iput v3, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    .line 6
    iput-object v0, p0, Ls1/a/a/a/v0/e/b$b$c$b;->c:Ls1/a/a/a/v0/e/b$b$c$c;

    .line 7
    :cond_2
    iget v0, p1, Ls1/a/a/a/v0/e/b$b$c;->b:I

    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    .line 8
    iget-wide v5, p1, Ls1/a/a/a/v0/e/b$b$c;->d:J

    .line 9
    iget v3, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    or-int/2addr v3, v4

    iput v3, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    .line 10
    iput-wide v5, p0, Ls1/a/a/a/v0/e/b$b$c$b;->d:J

    :cond_4
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    if-eqz v3, :cond_6

    .line 11
    iget v3, p1, Ls1/a/a/a/v0/e/b$b$c;->e:F

    .line 12
    iget v5, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    .line 13
    iput v3, p0, Ls1/a/a/a/v0/e/b$b$c$b;->e:F

    :cond_6
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7

    move v3, v1

    goto :goto_3

    :cond_7
    move v3, v2

    :goto_3
    if-eqz v3, :cond_8

    .line 14
    iget-wide v5, p1, Ls1/a/a/a/v0/e/b$b$c;->f:D

    .line 15
    iget v3, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    or-int/2addr v3, v4

    iput v3, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    .line 16
    iput-wide v5, p0, Ls1/a/a/a/v0/e/b$b$c$b;->f:D

    :cond_8
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_9

    move v3, v1

    goto :goto_4

    :cond_9
    move v3, v2

    :goto_4
    if-eqz v3, :cond_a

    .line 17
    iget v3, p1, Ls1/a/a/a/v0/e/b$b$c;->g:I

    .line 18
    iget v5, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    .line 19
    iput v3, p0, Ls1/a/a/a/v0/e/b$b$c$b;->g:I

    :cond_a
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_b

    move v3, v1

    goto :goto_5

    :cond_b
    move v3, v2

    :goto_5
    if-eqz v3, :cond_c

    .line 20
    iget v3, p1, Ls1/a/a/a/v0/e/b$b$c;->h:I

    .line 21
    iget v5, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    .line 22
    iput v3, p0, Ls1/a/a/a/v0/e/b$b$c$b;->h:I

    :cond_c
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_d

    move v3, v1

    goto :goto_6

    :cond_d
    move v3, v2

    :goto_6
    if-eqz v3, :cond_e

    .line 23
    iget v3, p1, Ls1/a/a/a/v0/e/b$b$c;->i:I

    .line 24
    iget v5, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    .line 25
    iput v3, p0, Ls1/a/a/a/v0/e/b$b$c$b;->i:I

    :cond_e
    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_f

    move v0, v1

    goto :goto_7

    :cond_f
    move v0, v2

    :goto_7
    if-eqz v0, :cond_11

    .line 26
    iget-object v0, p1, Ls1/a/a/a/v0/e/b$b$c;->j:Ls1/a/a/a/v0/e/b;

    .line 27
    iget v4, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_10

    iget-object v4, p0, Ls1/a/a/a/v0/e/b$b$c$b;->j:Ls1/a/a/a/v0/e/b;

    .line 28
    sget-object v5, Ls1/a/a/a/v0/e/b;->g:Ls1/a/a/a/v0/e/b;

    if-eq v4, v5, :cond_10

    .line 29
    new-instance v5, Ls1/a/a/a/v0/e/b$c;

    invoke-direct {v5}, Ls1/a/a/a/v0/e/b$c;-><init>()V

    .line 30
    invoke-virtual {v5, v4}, Ls1/a/a/a/v0/e/b$c;->g(Ls1/a/a/a/v0/e/b;)Ls1/a/a/a/v0/e/b$c;

    .line 31
    invoke-virtual {v5, v0}, Ls1/a/a/a/v0/e/b$c;->g(Ls1/a/a/a/v0/e/b;)Ls1/a/a/a/v0/e/b$c;

    invoke-virtual {v5}, Ls1/a/a/a/v0/e/b$c;->f()Ls1/a/a/a/v0/e/b;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/e/b$b$c$b;->j:Ls1/a/a/a/v0/e/b;

    goto :goto_8

    .line 32
    :cond_10
    iput-object v0, p0, Ls1/a/a/a/v0/e/b$b$c$b;->j:Ls1/a/a/a/v0/e/b;

    .line 33
    :goto_8
    iget v0, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    or-int/2addr v0, v3

    iput v0, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    .line 34
    :cond_11
    iget-object v0, p1, Ls1/a/a/a/v0/e/b$b$c;->k:Ljava/util/List;

    .line 35
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v3, 0x100

    if-nez v0, :cond_14

    .line 36
    iget-object v0, p0, Ls1/a/a/a/v0/e/b$b$c$b;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 37
    iget-object v0, p1, Ls1/a/a/a/v0/e/b$b$c;->k:Ljava/util/List;

    .line 38
    iput-object v0, p0, Ls1/a/a/a/v0/e/b$b$c$b;->k:Ljava/util/List;

    .line 39
    iget v0, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    goto :goto_9

    .line 40
    :cond_12
    iget v0, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_13

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Ls1/a/a/a/v0/e/b$b$c$b;->k:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls1/a/a/a/v0/e/b$b$c$b;->k:Ljava/util/List;

    .line 42
    iget v0, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    or-int/2addr v0, v3

    iput v0, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    .line 43
    :cond_13
    iget-object v0, p0, Ls1/a/a/a/v0/e/b$b$c$b;->k:Ljava/util/List;

    .line 44
    iget-object v4, p1, Ls1/a/a/a/v0/e/b$b$c;->k:Ljava/util/List;

    .line 45
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    :cond_14
    :goto_9
    iget v0, p1, Ls1/a/a/a/v0/e/b$b$c;->b:I

    and-int/lit16 v4, v0, 0x100

    if-ne v4, v3, :cond_15

    move v3, v1

    goto :goto_a

    :cond_15
    move v3, v2

    :goto_a
    const/16 v4, 0x200

    if-eqz v3, :cond_16

    .line 47
    iget v3, p1, Ls1/a/a/a/v0/e/b$b$c;->l:I

    .line 48
    iget v5, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    or-int/2addr v5, v4

    iput v5, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    .line 49
    iput v3, p0, Ls1/a/a/a/v0/e/b$b$c$b;->l:I

    :cond_16
    and-int/2addr v0, v4

    if-ne v0, v4, :cond_17

    goto :goto_b

    :cond_17
    move v1, v2

    :goto_b
    if-eqz v1, :cond_18

    .line 50
    iget v0, p1, Ls1/a/a/a/v0/e/b$b$c;->m:I

    .line 51
    iget v1, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Ls1/a/a/a/v0/e/b$b$c$b;->b:I

    .line 52
    iput v0, p0, Ls1/a/a/a/v0/e/b$b$c$b;->m:I

    .line 53
    :cond_18
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    .line 54
    iget-object p1, p1, Ls1/a/a/a/v0/e/b$b$c;->a:Ls1/a/a/a/v0/h/c;

    .line 55
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/h/c;->b(Ls1/a/a/a/v0/h/c;)Ls1/a/a/a/v0/h/c;

    move-result-object p1

    .line 56
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$b;->a:Ls1/a/a/a/v0/h/c;

    return-object p0
.end method

.method public h(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ls1/a/a/a/v0/e/b$b$c$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ls1/a/a/a/v0/e/b$b$c;->q:Ls1/a/a/a/v0/h/r;

    invoke-interface {v1, p1, p2}, Ls1/a/a/a/v0/h/r;->a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/e/b$b$c;
    :try_end_0
    .catch Ls1/a/a/a/v0/h/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/e/b$b$c$b;->g(Ls1/a/a/a/v0/e/b$b$c;)Ls1/a/a/a/v0/e/b$b$c$b;

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
    check-cast p2, Ls1/a/a/a/v0/e/b$b$c;
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
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/e/b$b$c$b;->g(Ls1/a/a/a/v0/e/b$b$c;)Ls1/a/a/a/v0/e/b$b$c$b;

    :cond_1
    throw p1
.end method
