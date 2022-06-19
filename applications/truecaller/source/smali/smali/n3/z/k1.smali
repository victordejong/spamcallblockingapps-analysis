.class public final Ln3/z/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/z/k1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/z/k2$b$b<",
            "TKey;TValue;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/z/k2$b$b<",
            "TKey;TValue;>;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:Lq3/a/w2/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/j<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lq3/a/w2/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/j<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ln3/z/t0;",
            "Ln3/z/i3;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ln3/z/s0;

.field public final l:Ln3/z/a2;


# direct methods
.method public constructor <init>(Ln3/z/a2;Ls1/z/c/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/z/k1;->l:Ln3/z/a2;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln3/z/k1;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Ln3/z/k1;->b:Ljava/util/List;

    const/4 p1, -0x1

    const/4 p2, 0x0

    const/4 v0, 0x6

    .line 4
    invoke-static {p1, p2, p2, v0}, Ls1/a/a/a/v0/f/d;->f(ILq3/a/w2/i;Ls1/z/b/l;I)Lq3/a/w2/j;

    move-result-object v1

    iput-object v1, p0, Ln3/z/k1;->h:Lq3/a/w2/j;

    .line 5
    invoke-static {p1, p2, p2, v0}, Ls1/a/a/a/v0/f/d;->f(ILq3/a/w2/i;Ls1/z/b/l;I)Lq3/a/w2/j;

    move-result-object p1

    iput-object p1, p0, Ln3/z/k1;->i:Lq3/a/w2/j;

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ln3/z/k1;->j:Ljava/util/Map;

    .line 7
    sget-object p1, Ln3/z/s0;->e:Ln3/z/s0;

    .line 8
    sget-object p1, Ln3/z/s0;->d:Ln3/z/s0;

    .line 9
    iput-object p1, p0, Ln3/z/k1;->k:Ln3/z/s0;

    return-void
.end method


# virtual methods
.method public final a(Ln3/z/i3$a;)Ln3/z/l2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/i3$a;",
            ")",
            "Ln3/z/l2<",
            "TKey;TValue;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/z/k1;->b:Ljava/util/List;

    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p0}, Ln3/z/k1;->e()I

    move-result v1

    .line 3
    iget v2, p0, Ln3/z/k1;->c:I

    neg-int v2, v2

    .line 4
    iget-object v3, p0, Ln3/z/k1;->b:Ljava/util/List;

    invoke-static {v3}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v3

    iget v4, p0, Ln3/z/k1;->c:I

    sub-int/2addr v3, v4

    .line 5
    iget v4, p1, Ln3/z/i3$a;->e:I

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    if-le v5, v3, :cond_0

    .line 6
    iget-object v6, p0, Ln3/z/k1;->l:Ln3/z/a2;

    iget v6, v6, Ln3/z/a2;->a:I

    goto :goto_1

    .line 7
    :cond_0
    iget-object v6, p0, Ln3/z/k1;->b:Ljava/util/List;

    iget v7, p0, Ln3/z/k1;->c:I

    add-int/2addr v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/z/k2$b$b;

    .line 8
    iget-object v6, v6, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    :goto_1
    add-int/2addr v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget v3, p1, Ln3/z/i3$a;->f:I

    add-int/2addr v1, v3

    .line 11
    iget p1, p1, Ln3/z/i3$a;->e:I

    if-ge p1, v2, :cond_2

    .line 12
    iget-object p1, p0, Ln3/z/k1;->l:Ln3/z/a2;

    iget p1, p1, Ln3/z/a2;->a:I

    sub-int/2addr v1, p1

    .line 13
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 14
    :goto_2
    iget-object v1, p0, Ln3/z/k1;->l:Ln3/z/a2;

    .line 15
    invoke-virtual {p0}, Ln3/z/k1;->e()I

    move-result v2

    .line 16
    new-instance v3, Ln3/z/l2;

    invoke-direct {v3, v0, p1, v1, v2}, Ln3/z/l2;-><init>(Ljava/util/List;Ljava/lang/Integer;Ln3/z/a2;I)V

    return-object v3
.end method

.method public final b(Ln3/z/c1$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/c1$a<",
            "TValue;>;)V"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ln3/z/c1$a;->c()I

    move-result v0

    iget-object v1, p0, Ln3/z/k1;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Ln3/z/k1;->j:Ljava/util/Map;

    .line 3
    iget-object v1, p1, Ln3/z/c1$a;->a:Ln3/z/t0;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Ln3/z/k1;->k:Ln3/z/s0;

    .line 6
    iget-object v1, p1, Ln3/z/c1$a;->a:Ln3/z/t0;

    .line 7
    sget-object v4, Ln3/z/r0$c;->c:Ln3/z/r0$c;

    invoke-virtual {v0, v1, v4}, Ln3/z/s0;->c(Ln3/z/t0;Ln3/z/r0;)Ln3/z/s0;

    move-result-object v0

    iput-object v0, p0, Ln3/z/k1;->k:Ln3/z/s0;

    .line 8
    iget-object v0, p1, Ln3/z/c1$a;->a:Ln3/z/t0;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v2, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 10
    invoke-virtual {p1}, Ln3/z/c1$a;->c()I

    move-result v0

    :goto_1
    if-ge v3, v0, :cond_1

    iget-object v1, p0, Ln3/z/k1;->a:Ljava/util/List;

    iget-object v4, p0, Ln3/z/k1;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 11
    :cond_1
    iget p1, p1, Ln3/z/c1$a;->d:I

    .line 12
    invoke-virtual {p0, p1}, Ln3/z/k1;->h(I)V

    .line 13
    iget p1, p0, Ln3/z/k1;->g:I

    add-int/2addr p1, v2

    iput p1, p0, Ln3/z/k1;->g:I

    .line 14
    iget-object v0, p0, Ln3/z/k1;->i:Lq3/a/w2/j;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    goto :goto_3

    .line 15
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot drop "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 16
    iget-object p1, p1, Ln3/z/c1$a;->a:Ln3/z/t0;

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_3
    invoke-virtual {p1}, Ln3/z/c1$a;->c()I

    move-result v0

    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_4

    iget-object v4, p0, Ln3/z/k1;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 19
    :cond_4
    iget v0, p0, Ln3/z/k1;->c:I

    invoke-virtual {p1}, Ln3/z/c1$a;->c()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Ln3/z/k1;->c:I

    .line 20
    iget p1, p1, Ln3/z/c1$a;->d:I

    .line 21
    invoke-virtual {p0, p1}, Ln3/z/k1;->i(I)V

    .line 22
    iget p1, p0, Ln3/z/k1;->f:I

    add-int/2addr p1, v2

    iput p1, p0, Ln3/z/k1;->f:I

    .line 23
    iget-object v0, p0, Ln3/z/k1;->h:Lq3/a/w2/j;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    :goto_3
    return-void

    :cond_5
    const-string v0, "invalid drop count. have "

    .line 24
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln3/z/k1;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " but wanted to drop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ln3/z/c1$a;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Ln3/z/t0;Ln3/z/i3;)Ln3/z/c1$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/t0;",
            "Ln3/z/i3;",
            ")",
            "Ln3/z/c1$a<",
            "TValue;>;"
        }
    .end annotation

    const-string v0, "loadType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hint"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ln3/z/k1;->l:Ln3/z/a2;

    iget v0, v0, Ln3/z/a2;->e:I

    const/4 v1, 0x0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/z/k1;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ln3/z/k1;->f()I

    move-result v0

    iget-object v2, p0, Ln3/z/k1;->l:Ln3/z/a2;

    iget v2, v2, Ln3/z/a2;->e:I

    if-gt v0, v2, :cond_2

    return-object v1

    .line 4
    :cond_2
    sget-object v0, Ln3/z/t0;->a:Ln3/z/t0;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    if-eqz v0, :cond_d

    move v0, v2

    move v4, v0

    .line 5
    :goto_1
    iget-object v5, p0, Ln3/z/k1;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    invoke-virtual {p0}, Ln3/z/k1;->f()I

    move-result v5

    sub-int/2addr v5, v4

    iget-object v6, p0, Ln3/z/k1;->l:Ln3/z/a2;

    iget v6, v6, Ln3/z/a2;->e:I

    if-le v5, v6, :cond_7

    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eq v5, v3, :cond_4

    .line 7
    iget-object v5, p0, Ln3/z/k1;->b:Ljava/util/List;

    invoke-static {v5}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v6

    sub-int/2addr v6, v0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/z/k2$b$b;

    .line 8
    iget-object v5, v5, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_2

    .line 10
    :cond_4
    iget-object v5, p0, Ln3/z/k1;->b:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/z/k2$b$b;

    .line 11
    iget-object v5, v5, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 12
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 13
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eq v6, v3, :cond_5

    .line 14
    iget v6, p2, Ln3/z/i3;->b:I

    goto :goto_3

    .line 15
    :cond_5
    iget v6, p2, Ln3/z/i3;->a:I

    :goto_3
    sub-int/2addr v6, v4

    sub-int/2addr v6, v5

    .line 16
    iget-object v7, p0, Ln3/z/k1;->l:Ln3/z/a2;

    iget v7, v7, Ln3/z/a2;->b:I

    if-ge v6, v7, :cond_6

    goto :goto_4

    :cond_6
    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    if-eqz v0, :cond_c

    .line 17
    new-instance v1, Ln3/z/c1$a;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eq p2, v3, :cond_8

    .line 19
    iget-object p2, p0, Ln3/z/k1;->b:Ljava/util/List;

    invoke-static {p2}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result p2

    iget v5, p0, Ln3/z/k1;->c:I

    sub-int/2addr p2, v5

    add-int/lit8 v5, v0, -0x1

    sub-int/2addr p2, v5

    goto :goto_5

    .line 20
    :cond_8
    iget p2, p0, Ln3/z/k1;->c:I

    neg-int p2, p2

    .line 21
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eq v5, v3, :cond_9

    .line 22
    iget-object v0, p0, Ln3/z/k1;->b:Ljava/util/List;

    invoke-static {v0}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v0

    iget v3, p0, Ln3/z/k1;->c:I

    goto :goto_6

    :cond_9
    sub-int/2addr v0, v3

    .line 23
    iget v3, p0, Ln3/z/k1;->c:I

    :goto_6
    sub-int/2addr v0, v3

    .line 24
    iget-object v3, p0, Ln3/z/k1;->l:Ln3/z/a2;

    iget-boolean v3, v3, Ln3/z/a2;->c:Z

    if-nez v3, :cond_a

    goto :goto_8

    .line 25
    :cond_a
    sget-object v2, Ln3/z/t0;->b:Ln3/z/t0;

    if-ne p1, v2, :cond_b

    invoke-virtual {p0}, Ln3/z/k1;->e()I

    move-result v2

    goto :goto_7

    .line 26
    :cond_b
    invoke-virtual {p0}, Ln3/z/k1;->d()I

    move-result v2

    :goto_7
    add-int/2addr v2, v4

    .line 27
    :goto_8
    invoke-direct {v1, p1, p2, v0, v2}, Ln3/z/c1$a;-><init>(Ln3/z/t0;III)V

    :cond_c
    return-object v1

    .line 28
    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Drop LoadType must be PREPEND or APPEND, but got "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/z/k1;->l:Ln3/z/a2;

    iget-boolean v0, v0, Ln3/z/a2;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ln3/z/k1;->e:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/z/k1;->l:Ln3/z/a2;

    iget-boolean v0, v0, Ln3/z/a2;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ln3/z/k1;->d:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()I
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/z/k1;->b:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Ln3/z/k2$b$b;

    .line 4
    iget-object v2, v2, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final g(ILn3/z/t0;Ln3/z/k2$b$b;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ln3/z/t0;",
            "Ln3/z/k2$b$b<",
            "TKey;TValue;>;)Z"
        }
    .end annotation

    const-string v0, "loadType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_a

    const/high16 v2, -0x80000000

    if-eq p2, v0, :cond_5

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object p2, p0, Ln3/z/k1;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v0

    if-eqz p2, :cond_4

    .line 3
    iget p2, p0, Ln3/z/k1;->g:I

    if-eq p1, p2, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object p1, p0, Ln3/z/k1;->a:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget p1, p3, Ln3/z/k2$b$b;->e:I

    if-ne p1, v2, :cond_3

    .line 6
    invoke-virtual {p0}, Ln3/z/k1;->d()I

    move-result p1

    .line 7
    iget-object p2, p3, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    move p1, v1

    .line 9
    :cond_3
    invoke-virtual {p0, p1}, Ln3/z/k1;->h(I)V

    .line 10
    iget-object p1, p0, Ln3/z/k1;->j:Ljava/util/Map;

    sget-object p2, Ln3/z/t0;->c:Ln3/z/t0;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "should\'ve received an init before append"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    iget-object p2, p0, Ln3/z/k1;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v0

    if-eqz p2, :cond_9

    .line 13
    iget p2, p0, Ln3/z/k1;->f:I

    if-eq p1, p2, :cond_6

    return v1

    .line 14
    :cond_6
    iget-object p1, p0, Ln3/z/k1;->a:Ljava/util/List;

    invoke-interface {p1, v1, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15
    iget p1, p0, Ln3/z/k1;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Ln3/z/k1;->c:I

    .line 16
    iget p1, p3, Ln3/z/k2$b$b;->d:I

    if-ne p1, v2, :cond_8

    .line 17
    invoke-virtual {p0}, Ln3/z/k1;->e()I

    move-result p1

    .line 18
    iget-object p2, p3, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 19
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_7

    goto :goto_1

    :cond_7
    move v1, p1

    :goto_1
    move p1, v1

    .line 20
    :cond_8
    invoke-virtual {p0, p1}, Ln3/z/k1;->i(I)V

    .line 21
    iget-object p1, p0, Ln3/z/k1;->j:Ljava/util/Map;

    sget-object p2, Ln3/z/t0;->b:Ln3/z/t0;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 22
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "should\'ve received an init before prepend"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_a
    iget-object p2, p0, Ln3/z/k1;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_d

    if-nez p1, :cond_b

    move p1, v0

    goto :goto_2

    :cond_b
    move p1, v1

    :goto_2
    if-eqz p1, :cond_c

    .line 24
    iget-object p1, p0, Ln3/z/k1;->a:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iput v1, p0, Ln3/z/k1;->c:I

    .line 26
    iget p1, p3, Ln3/z/k2$b$b;->e:I

    .line 27
    invoke-virtual {p0, p1}, Ln3/z/k1;->h(I)V

    .line 28
    iget p1, p3, Ln3/z/k2$b$b;->d:I

    .line 29
    invoke-virtual {p0, p1}, Ln3/z/k1;->i(I)V

    :goto_3
    return v0

    .line 30
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "init loadId must be the initial value, 0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot receive multiple init calls"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(I)V
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iput p1, p0, Ln3/z/k1;->e:I

    return-void
.end method

.method public final i(I)V
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iput p1, p0, Ln3/z/k1;->d:I

    return-void
.end method

.method public final j(Ln3/z/t0;Ln3/z/r0;)Z
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newState"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ln3/z/k1;->k:Ln3/z/s0;

    invoke-virtual {v0, p1}, Ln3/z/s0;->b(Ln3/z/t0;)Ln3/z/r0;

    move-result-object v0

    invoke-static {v0, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/z/k1;->k:Ln3/z/s0;

    invoke-virtual {v0, p1, p2}, Ln3/z/s0;->c(Ln3/z/t0;Ln3/z/r0;)Ln3/z/s0;

    move-result-object p1

    iput-object p1, p0, Ln3/z/k1;->k:Ln3/z/s0;

    const/4 p1, 0x1

    return p1
.end method

.method public final k(Ln3/z/k2$b$b;Ln3/z/t0;)Ln3/z/c1;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/k2$b$b<",
            "TKey;TValue;>;",
            "Ln3/z/t0;",
            ")",
            "Ln3/z/c1<",
            "TValue;>;"
        }
    .end annotation

    const-string v0, "$this$toPageEvent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Ln3/z/k1;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v4, p0, Ln3/z/k1;->c:I

    sub-int/2addr v0, v4

    sub-int/2addr v0, v3

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget v0, p0, Ln3/z/k1;->c:I

    rsub-int/lit8 v0, v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 4
    :goto_0
    new-instance v4, Ln3/z/g3;

    .line 5
    iget-object p1, p1, Ln3/z/k2$b$b;->a:Ljava/util/List;

    const-string v5, "data"

    .line 6
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v3, [I

    aput v0, v5, v1

    const/4 v1, 0x0

    .line 7
    invoke-direct {v4, v5, p1, v0, v1}, Ln3/z/g3;-><init>([ILjava/util/List;ILjava/util/List;)V

    .line 8
    invoke-static {v4}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_5

    if-eq p2, v3, :cond_4

    if-ne p2, v2, :cond_3

    .line 10
    sget-object p2, Ln3/z/c1$b;->g:Ln3/z/c1$b$a;

    .line 11
    invoke-virtual {p0}, Ln3/z/k1;->d()I

    move-result v0

    .line 12
    new-instance v7, Ln3/z/q;

    .line 13
    iget-object v5, p0, Ln3/z/k1;->k:Ln3/z/s0;

    .line 14
    iget-object v2, v5, Ln3/z/s0;->a:Ln3/z/r0;

    .line 15
    iget-object v3, v5, Ln3/z/s0;->b:Ln3/z/r0;

    .line 16
    iget-object v4, v5, Ln3/z/s0;->c:Ln3/z/r0;

    const/4 v6, 0x0

    move-object v1, v7

    .line 17
    invoke-direct/range {v1 .. v6}, Ln3/z/q;-><init>(Ln3/z/r0;Ln3/z/r0;Ln3/z/r0;Ln3/z/s0;Ln3/z/s0;)V

    .line 18
    invoke-virtual {p2, p1, v0, v7}, Ln3/z/c1$b$a;->a(Ljava/util/List;ILn3/z/q;)Ln3/z/c1$b;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 19
    :cond_4
    sget-object p2, Ln3/z/c1$b;->g:Ln3/z/c1$b$a;

    .line 20
    invoke-virtual {p0}, Ln3/z/k1;->e()I

    move-result v0

    .line 21
    new-instance v7, Ln3/z/q;

    .line 22
    iget-object v5, p0, Ln3/z/k1;->k:Ln3/z/s0;

    .line 23
    iget-object v2, v5, Ln3/z/s0;->a:Ln3/z/r0;

    .line 24
    iget-object v3, v5, Ln3/z/s0;->b:Ln3/z/r0;

    .line 25
    iget-object v4, v5, Ln3/z/s0;->c:Ln3/z/r0;

    const/4 v6, 0x0

    move-object v1, v7

    .line 26
    invoke-direct/range {v1 .. v6}, Ln3/z/q;-><init>(Ln3/z/r0;Ln3/z/r0;Ln3/z/r0;Ln3/z/s0;Ln3/z/s0;)V

    .line 27
    invoke-virtual {p2, p1, v0, v7}, Ln3/z/c1$b$a;->b(Ljava/util/List;ILn3/z/q;)Ln3/z/c1$b;

    move-result-object p1

    goto :goto_1

    .line 28
    :cond_5
    sget-object p2, Ln3/z/c1$b;->g:Ln3/z/c1$b$a;

    .line 29
    invoke-virtual {p0}, Ln3/z/k1;->e()I

    move-result v0

    .line 30
    invoke-virtual {p0}, Ln3/z/k1;->d()I

    move-result v1

    .line 31
    new-instance v8, Ln3/z/q;

    .line 32
    iget-object v6, p0, Ln3/z/k1;->k:Ln3/z/s0;

    .line 33
    iget-object v3, v6, Ln3/z/s0;->a:Ln3/z/r0;

    .line 34
    iget-object v4, v6, Ln3/z/s0;->b:Ln3/z/r0;

    .line 35
    iget-object v5, v6, Ln3/z/s0;->c:Ln3/z/r0;

    const/4 v7, 0x0

    move-object v2, v8

    .line 36
    invoke-direct/range {v2 .. v7}, Ln3/z/q;-><init>(Ln3/z/r0;Ln3/z/r0;Ln3/z/r0;Ln3/z/s0;Ln3/z/s0;)V

    .line 37
    invoke-virtual {p2, p1, v0, v1, v8}, Ln3/z/c1$b$a;->c(Ljava/util/List;IILn3/z/q;)Ln3/z/c1$b;

    move-result-object p1

    :goto_1
    return-object p1
.end method
