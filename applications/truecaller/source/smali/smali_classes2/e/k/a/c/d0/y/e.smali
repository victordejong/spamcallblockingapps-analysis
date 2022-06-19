.class public Le/k/a/c/d0/y/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:[Ljava/lang/String;


# instance fields
.field public final a:Le/k/a/c/c;

.field public final b:Z

.field public final c:Z

.field public final d:[Le/k/a/c/g0/n;

.field public e:I

.field public f:Z

.field public g:[Le/k/a/c/d0/u;

.field public h:[Le/k/a/c/d0/u;

.field public i:[Le/k/a/c/d0/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "default"

    const-string v1, "from-String"

    const-string v2, "from-int"

    const-string v3, "from-long"

    const-string v4, "from-big-integer"

    const-string v5, "from-double"

    const-string v6, "from-big-decimal"

    const-string v7, "from-boolean"

    const-string v8, "delegate"

    const-string v9, "property-based"

    const-string v10, "array-delegate"

    .line 1
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/k/a/c/d0/y/e;->j:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/c;Le/k/a/c/c0/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c;",
            "Le/k/a/c/c0/k<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [Le/k/a/c/g0/n;

    .line 2
    iput-object v0, p0, Le/k/a/c/d0/y/e;->d:[Le/k/a/c/g0/n;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Le/k/a/c/d0/y/e;->e:I

    .line 4
    iput-boolean v0, p0, Le/k/a/c/d0/y/e;->f:Z

    .line 5
    iput-object p1, p0, Le/k/a/c/d0/y/e;->a:Le/k/a/c/c;

    .line 6
    invoke-virtual {p2}, Le/k/a/c/c0/k;->b()Z

    move-result p1

    iput-boolean p1, p0, Le/k/a/c/d0/y/e;->b:Z

    .line 7
    sget-object p1, Le/k/a/c/p;->q:Le/k/a/c/p;

    .line 8
    invoke-virtual {p2, p1}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result p1

    iput-boolean p1, p0, Le/k/a/c/d0/y/e;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Le/k/a/c/g;Le/k/a/c/g0/n;[Le/k/a/c/d0/u;)Le/k/a/c/i;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/c/d0/y/e;->f:Z

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 2
    array-length v1, p3

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3
    aget-object v3, p3, v2

    if-nez v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    :goto_1
    iget-object p3, p1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 5
    invoke-virtual {p2, v0}, Le/k/a/c/g0/n;->r(I)Le/k/a/c/i;

    move-result-object v1

    .line 6
    invoke-virtual {p3}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 7
    invoke-virtual {p2, v0}, Le/k/a/c/g0/n;->p(I)Le/k/a/c/g0/m;

    move-result-object p2

    .line 8
    invoke-virtual {v2, p2}, Le/k/a/c/b;->j(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1, p2, v0}, Le/k/a/c/g;->p(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/j;

    move-result-object p1

    .line 10
    invoke-virtual {v1, p1}, Le/k/a/c/i;->R(Ljava/lang/Object;)Le/k/a/c/i;

    move-result-object v1

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {v2, p3, p2, v1}, Le/k/a/c/b;->q0(Le/k/a/c/c0/k;Le/k/a/c/g0/b;Le/k/a/c/i;)Le/k/a/c/i;

    move-result-object v1

    :cond_4
    :goto_2
    return-object v1

    :cond_5
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Le/k/a/c/g0/n;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Le/k/a/c/g0/i;->g()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Le/k/a/c/n0/g;->w(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/k/a/c/g0/b;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "valueOf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(IZLe/k/a/c/g0/n;Le/k/a/c/g0/n;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Le/k/a/c/d0/y/e;->j:[Ljava/lang/String;

    aget-object p1, v2, p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    if-eqz p2, :cond_0

    const-string p1, "explicitly marked"

    goto :goto_0

    :cond_0
    const-string p1, "implicitly discovered"

    :goto_0
    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    aput-object p4, v1, p1

    const-string p1, "Conflicting %s creators: already had %s creator %s, encountered another: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Le/k/a/c/g0/n;Z[Le/k/a/c/d0/u;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p4}, Le/k/a/c/g0/n;->r(I)Le/k/a/c/i;

    move-result-object p4

    invoke-virtual {p4}, Le/k/a/c/i;->x()Z

    move-result p4

    if-eqz p4, :cond_0

    const/16 p4, 0xa

    .line 2
    invoke-virtual {p0, p1, p4, p2}, Le/k/a/c/d0/y/e;->h(Le/k/a/c/g0/n;IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iput-object p3, p0, Le/k/a/c/d0/y/e;->h:[Le/k/a/c/d0/u;

    goto :goto_0

    :cond_0
    const/16 p4, 0x8

    .line 4
    invoke-virtual {p0, p1, p4, p2}, Le/k/a/c/d0/y/e;->h(Le/k/a/c/g0/n;IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iput-object p3, p0, Le/k/a/c/d0/y/e;->g:[Le/k/a/c/d0/u;

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Le/k/a/c/g0/n;Z[Le/k/a/c/d0/u;)V
    .locals 5

    const/16 v0, 0x9

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Le/k/a/c/d0/y/e;->h(Le/k/a/c/g0/n;IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    array-length p1, p3

    const/4 p2, 0x1

    if-le p1, p2, :cond_2

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 4
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 5
    aget-object v3, p3, v2

    .line 6
    iget-object v3, v3, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 7
    iget-object v3, v3, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, p3, v2

    invoke-virtual {v4}, Le/k/a/c/d0/u;->o()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v3, p3, v1

    aput-object v4, p3, p2

    const/4 p2, 0x2

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p2

    const/4 p2, 0x3

    iget-object v0, p0, Le/k/a/c/d0/y/e;->a:Le/k/a/c/c;

    .line 12
    iget-object v0, v0, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 13
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 14
    invoke-static {v0}, Le/k/a/c/n0/g;->E(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p2

    const-string p2, "Duplicate creator property \"%s\" (index %s vs %d) for type %s "

    .line 15
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    iput-object p3, p0, Le/k/a/c/d0/y/e;->i:[Le/k/a/c/d0/u;

    :cond_3
    return-void
.end method

.method public f(Le/k/a/c/g;)Le/k/a/c/d0/w;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/e;->d:[Le/k/a/c/g0/n;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget-object v2, p0, Le/k/a/c/d0/y/e;->g:[Le/k/a/c/d0/u;

    invoke-virtual {p0, p1, v0, v2}, Le/k/a/c/d0/y/e;->a(Le/k/a/c/g;Le/k/a/c/g0/n;[Le/k/a/c/d0/u;)Le/k/a/c/i;

    move-result-object v0

    .line 2
    iget-object v2, p0, Le/k/a/c/d0/y/e;->d:[Le/k/a/c/g0/n;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    iget-object v4, p0, Le/k/a/c/d0/y/e;->h:[Le/k/a/c/d0/u;

    invoke-virtual {p0, p1, v2, v4}, Le/k/a/c/d0/y/e;->a(Le/k/a/c/g;Le/k/a/c/g0/n;[Le/k/a/c/d0/u;)Le/k/a/c/i;

    move-result-object p1

    .line 3
    iget-object v2, p0, Le/k/a/c/d0/y/e;->a:Le/k/a/c/c;

    .line 4
    iget-object v2, v2, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 5
    new-instance v4, Le/k/a/c/d0/z/f0;

    invoke-direct {v4, v2}, Le/k/a/c/d0/z/f0;-><init>(Le/k/a/c/i;)V

    .line 6
    iget-object v2, p0, Le/k/a/c/d0/y/e;->d:[Le/k/a/c/g0/n;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    aget-object v1, v2, v1

    iget-object v6, p0, Le/k/a/c/d0/y/e;->g:[Le/k/a/c/d0/u;

    const/16 v7, 0x9

    aget-object v7, v2, v7

    iget-object v8, p0, Le/k/a/c/d0/y/e;->i:[Le/k/a/c/d0/u;

    .line 7
    iput-object v5, v4, Le/k/a/c/d0/z/f0;->c:Le/k/a/c/g0/n;

    .line 8
    iput-object v1, v4, Le/k/a/c/d0/z/f0;->g:Le/k/a/c/g0/n;

    .line 9
    iput-object v0, v4, Le/k/a/c/d0/z/f0;->f:Le/k/a/c/i;

    .line 10
    iput-object v6, v4, Le/k/a/c/d0/z/f0;->h:[Le/k/a/c/d0/u;

    .line 11
    iput-object v7, v4, Le/k/a/c/d0/z/f0;->d:Le/k/a/c/g0/n;

    .line 12
    iput-object v8, v4, Le/k/a/c/d0/z/f0;->e:[Le/k/a/c/d0/u;

    .line 13
    aget-object v0, v2, v3

    iget-object v1, p0, Le/k/a/c/d0/y/e;->h:[Le/k/a/c/d0/u;

    .line 14
    iput-object v0, v4, Le/k/a/c/d0/z/f0;->j:Le/k/a/c/g0/n;

    .line 15
    iput-object p1, v4, Le/k/a/c/d0/z/f0;->i:Le/k/a/c/i;

    .line 16
    iput-object v1, v4, Le/k/a/c/d0/z/f0;->k:[Le/k/a/c/d0/u;

    const/4 p1, 0x1

    .line 17
    aget-object p1, v2, p1

    .line 18
    iput-object p1, v4, Le/k/a/c/d0/z/f0;->l:Le/k/a/c/g0/n;

    const/4 p1, 0x2

    .line 19
    aget-object p1, v2, p1

    .line 20
    iput-object p1, v4, Le/k/a/c/d0/z/f0;->m:Le/k/a/c/g0/n;

    const/4 p1, 0x3

    .line 21
    aget-object p1, v2, p1

    .line 22
    iput-object p1, v4, Le/k/a/c/d0/z/f0;->n:Le/k/a/c/g0/n;

    const/4 p1, 0x4

    .line 23
    aget-object p1, v2, p1

    .line 24
    iput-object p1, v4, Le/k/a/c/d0/z/f0;->o:Le/k/a/c/g0/n;

    const/4 p1, 0x5

    .line 25
    aget-object p1, v2, p1

    .line 26
    iput-object p1, v4, Le/k/a/c/d0/z/f0;->p:Le/k/a/c/g0/n;

    const/4 p1, 0x6

    .line 27
    aget-object p1, v2, p1

    .line 28
    iput-object p1, v4, Le/k/a/c/d0/z/f0;->q:Le/k/a/c/g0/n;

    const/4 p1, 0x7

    .line 29
    aget-object p1, v2, p1

    .line 30
    iput-object p1, v4, Le/k/a/c/d0/z/f0;->r:Le/k/a/c/g0/n;

    return-object v4
.end method

.method public g(Le/k/a/c/g0/n;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/e;->d:[Le/k/a/c/g0/n;

    .line 2
    iget-boolean v1, p0, Le/k/a/c/d0/y/e;->b:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Le/k/a/c/g0/b;->b()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Member;

    iget-boolean v2, p0, Le/k/a/c/d0/y/e;->c:Z

    invoke-static {v1, v2}, Le/k/a/c/n0/g;->e(Ljava/lang/reflect/Member;Z)V

    :cond_0
    const/4 v1, 0x0

    .line 4
    aput-object p1, v0, v1

    return-void
.end method

.method public h(Le/k/a/c/g0/n;IZ)Z
    .locals 8

    const/4 v0, 0x1

    shl-int v1, v0, p2

    .line 1
    iput-boolean v0, p0, Le/k/a/c/d0/y/e;->f:Z

    .line 2
    iget-object v2, p0, Le/k/a/c/d0/y/e;->d:[Le/k/a/c/g0/n;

    aget-object v2, v2, p2

    if-eqz v2, :cond_8

    .line 3
    iget v3, p0, Le/k/a/c/d0/y/e;->e:I

    and-int/2addr v3, v1

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    if-nez p3, :cond_0

    return v4

    :cond_0
    move v3, v0

    goto :goto_0

    :cond_1
    xor-int/lit8 v3, p3, 0x1

    :goto_0
    if-eqz v3, :cond_8

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v3, v5, :cond_8

    .line 5
    invoke-virtual {v2, v4}, Le/k/a/c/g0/n;->s(I)Ljava/lang/Class;

    move-result-object v3

    .line 6
    invoke-virtual {p1, v4}, Le/k/a/c/g0/n;->s(I)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    if-ne v3, v5, :cond_4

    .line 7
    invoke-virtual {p0, p1}, Le/k/a/c/d0/y/e;->b(Le/k/a/c/g0/n;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v4

    .line 8
    :cond_2
    invoke-virtual {p0, v2}, Le/k/a/c/d0/y/e;->b(Le/k/a/c/g0/n;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p0, p2, p3, v2, p1}, Le/k/a/c/d0/y/e;->c(IZLe/k/a/c/g0/n;Le/k/a/c/g0/n;)V

    throw v6

    .line 10
    :cond_4
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_5

    return v4

    .line 11
    :cond_5
    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    .line 12
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eq v7, v5, :cond_7

    .line 13
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_8

    return v4

    .line 14
    :cond_7
    invoke-virtual {p0, p2, p3, v2, p1}, Le/k/a/c/d0/y/e;->c(IZLe/k/a/c/g0/n;Le/k/a/c/g0/n;)V

    throw v6

    :cond_8
    :goto_1
    if-eqz p3, :cond_9

    .line 15
    iget p3, p0, Le/k/a/c/d0/y/e;->e:I

    or-int/2addr p3, v1

    iput p3, p0, Le/k/a/c/d0/y/e;->e:I

    .line 16
    :cond_9
    iget-object p3, p0, Le/k/a/c/d0/y/e;->d:[Le/k/a/c/g0/n;

    if-eqz p1, :cond_a

    .line 17
    iget-boolean v1, p0, Le/k/a/c/d0/y/e;->b:Z

    if-eqz v1, :cond_a

    .line 18
    invoke-virtual {p1}, Le/k/a/c/g0/b;->b()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Member;

    iget-boolean v2, p0, Le/k/a/c/d0/y/e;->c:Z

    invoke-static {v1, v2}, Le/k/a/c/n0/g;->e(Ljava/lang/reflect/Member;Z)V

    .line 19
    :cond_a
    aput-object p1, p3, p2

    return v0
.end method
