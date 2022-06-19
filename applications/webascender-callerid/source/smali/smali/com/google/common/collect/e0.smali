.class Lcom/google/common/collect/e0;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/e0$o;,
        Lcom/google/common/collect/e0$b;,
        Lcom/google/common/collect/e0$m;,
        Lcom/google/common/collect/e0$g;,
        Lcom/google/common/collect/e0$v;,
        Lcom/google/common/collect/e0$l;,
        Lcom/google/common/collect/e0$f;,
        Lcom/google/common/collect/e0$d0;,
        Lcom/google/common/collect/e0$u;,
        Lcom/google/common/collect/e0$k;,
        Lcom/google/common/collect/e0$h;,
        Lcom/google/common/collect/e0$z;,
        Lcom/google/common/collect/e0$x;,
        Lcom/google/common/collect/e0$t;,
        Lcom/google/common/collect/e0$r;,
        Lcom/google/common/collect/e0$n;,
        Lcom/google/common/collect/e0$c0;,
        Lcom/google/common/collect/e0$e;,
        Lcom/google/common/collect/e0$b0;,
        Lcom/google/common/collect/e0$y;,
        Lcom/google/common/collect/e0$w;,
        Lcom/google/common/collect/e0$d;,
        Lcom/google/common/collect/e0$s;,
        Lcom/google/common/collect/e0$q;,
        Lcom/google/common/collect/e0$a0;,
        Lcom/google/common/collect/e0$c;,
        Lcom/google/common/collect/e0$i;,
        Lcom/google/common/collect/e0$j;,
        Lcom/google/common/collect/e0$p;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lcom/google/common/collect/e0$i<",
        "TK;TV;TE;>;S:",
        "Lcom/google/common/collect/e0$n<",
        "TK;TV;TE;TS;>;>",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final o:Lcom/google/common/collect/e0$b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e0$b0<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/google/common/collect/e0$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient f:I

.field final transient g:I

.field final transient h:[Lcom/google/common/collect/e0$n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/e0$n<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field final i:I

.field final j:Lcom/google/common/base/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final transient k:Lcom/google/common/collect/e0$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e0$j<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field transient l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field transient m:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field transient n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/e0$a;

    invoke-direct {v0}, Lcom/google/common/collect/e0$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/e0;->o:Lcom/google/common/collect/e0$b0;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/d0;Lcom/google/common/collect/e0$j;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/d0;",
            "Lcom/google/common/collect/e0$j<",
            "TK;TV;TE;TS;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/common/collect/d0;->b()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/e0;->i:I

    .line 3
    invoke-virtual {p1}, Lcom/google/common/collect/d0;->d()Lcom/google/common/base/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/e0;->j:Lcom/google/common/base/e;

    .line 4
    iput-object p2, p0, Lcom/google/common/collect/e0;->k:Lcom/google/common/collect/e0$j;

    .line 5
    invoke-virtual {p1}, Lcom/google/common/collect/d0;->c()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6
    :goto_0
    iget v3, p0, Lcom/google/common/collect/e0;->i:I

    if-ge v1, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v2, v2, 0x20

    .line 7
    iput v2, p0, Lcom/google/common/collect/e0;->g:I

    add-int/lit8 v2, v1, -0x1

    .line 8
    iput v2, p0, Lcom/google/common/collect/e0;->f:I

    .line 9
    invoke-virtual {p0, v1}, Lcom/google/common/collect/e0;->g(I)[Lcom/google/common/collect/e0$n;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/e0;->h:[Lcom/google/common/collect/e0$n;

    .line 10
    div-int v2, p1, v1

    mul-int v1, v1, v2

    if-ge v1, p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    if-ge v0, v2, :cond_2

    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/google/common/collect/e0;->h:[Lcom/google/common/collect/e0$n;

    array-length v1, p1

    if-ge p2, v1, :cond_3

    const/4 v1, -0x1

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/e0;->c(II)Lcom/google/common/collect/e0$n;

    move-result-object v1

    aput-object v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/e0;->l(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static b(Lcom/google/common/collect/d0;)Lcom/google/common/collect/e0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/d0;",
            ")",
            "Lcom/google/common/collect/e0<",
            "TK;TV;+",
            "Lcom/google/common/collect/e0$i<",
            "TK;TV;*>;*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/d0;->e()Lcom/google/common/collect/e0$p;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/e0$p;->STRONG:Lcom/google/common/collect/e0$p;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/d0;->f()Lcom/google/common/collect/e0$p;

    move-result-object v0

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/google/common/collect/e0;

    invoke-static {}, Lcom/google/common/collect/e0$q$a;->h()Lcom/google/common/collect/e0$q$a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/e0;-><init>(Lcom/google/common/collect/d0;Lcom/google/common/collect/e0$j;)V

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/d0;->e()Lcom/google/common/collect/e0$p;

    move-result-object v0

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/d0;->f()Lcom/google/common/collect/e0$p;

    move-result-object v0

    sget-object v2, Lcom/google/common/collect/e0$p;->WEAK:Lcom/google/common/collect/e0$p;

    if-ne v0, v2, :cond_1

    .line 6
    new-instance v0, Lcom/google/common/collect/e0;

    invoke-static {}, Lcom/google/common/collect/e0$s$a;->h()Lcom/google/common/collect/e0$s$a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/e0;-><init>(Lcom/google/common/collect/d0;Lcom/google/common/collect/e0$j;)V

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/d0;->e()Lcom/google/common/collect/e0$p;

    move-result-object v0

    sget-object v2, Lcom/google/common/collect/e0$p;->WEAK:Lcom/google/common/collect/e0$p;

    if-ne v0, v2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/google/common/collect/d0;->f()Lcom/google/common/collect/e0$p;

    move-result-object v0

    if-ne v0, v1, :cond_2

    .line 9
    new-instance v0, Lcom/google/common/collect/e0;

    invoke-static {}, Lcom/google/common/collect/e0$w$a;->h()Lcom/google/common/collect/e0$w$a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/e0;-><init>(Lcom/google/common/collect/d0;Lcom/google/common/collect/e0$j;)V

    return-object v0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/d0;->e()Lcom/google/common/collect/e0$p;

    move-result-object v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/d0;->f()Lcom/google/common/collect/e0$p;

    move-result-object v0

    if-ne v0, v2, :cond_3

    .line 11
    new-instance v0, Lcom/google/common/collect/e0;

    invoke-static {}, Lcom/google/common/collect/e0$y$a;->h()Lcom/google/common/collect/e0$y$a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/e0;-><init>(Lcom/google/common/collect/d0;Lcom/google/common/collect/e0$j;)V

    return-object v0

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method static j(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method private static l(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/b0;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method

.method static m()Lcom/google/common/collect/e0$b0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E::",
            "Lcom/google/common/collect/e0$i<",
            "TK;TV;TE;>;>()",
            "Lcom/google/common/collect/e0$b0<",
            "TK;TV;TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/e0;->o:Lcom/google/common/collect/e0$b0;

    return-object v0
.end method


# virtual methods
.method c(II)Lcom/google/common/collect/e0$n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/e0$n<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0;->k:Lcom/google/common/collect/e0$j;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/common/collect/e0$j;->e(Lcom/google/common/collect/e0;II)Lcom/google/common/collect/e0$n;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0;->h:[Lcom/google/common/collect/e0$n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/google/common/collect/e0$n;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e0;->f(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/e0;->k(I)Lcom/google/common/collect/e0$n;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/e0$n;->c(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object/from16 v2, p0

    .line 1
    iget-object v3, v2, Lcom/google/common/collect/e0;->h:[Lcom/google/common/collect/e0$n;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x3

    if-ge v6, v7, :cond_6

    const-wide/16 v7, 0x0

    .line 2
    array-length v9, v3

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_4

    aget-object v11, v3, v10

    .line 3
    iget v12, v11, Lcom/google/common/collect/e0$n;->g:I

    .line 4
    iget-object v12, v11, Lcom/google/common/collect/e0$n;->j:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v13, 0x0

    .line 5
    :goto_2
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_3

    .line 6
    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/common/collect/e0$i;

    :goto_3
    if-eqz v14, :cond_2

    .line 7
    invoke-virtual {v11, v14}, Lcom/google/common/collect/e0$n;->l(Lcom/google/common/collect/e0$i;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/e0;->n()Lcom/google/common/base/e;

    move-result-object v1

    invoke-virtual {v1, v0, v15}, Lcom/google/common/base/e;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 9
    :cond_1
    invoke-interface {v14}, Lcom/google/common/collect/e0$i;->a()Lcom/google/common/collect/e0$i;

    move-result-object v14

    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x0

    goto :goto_2

    .line 10
    :cond_3
    iget v1, v11, Lcom/google/common/collect/e0$n;->h:I

    int-to-long v11, v1

    add-long/2addr v7, v11

    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    cmp-long v1, v7, v4

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    move-wide v4, v7

    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    :goto_4
    const/4 v0, 0x0

    return v0
.end method

.method e(Lcom/google/common/collect/e0$i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TV;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/collect/e0$i;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/e0$i;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0;->n:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/collect/e0$g;

    invoke-direct {v0, p0}, Lcom/google/common/collect/e0$g;-><init>(Lcom/google/common/collect/e0;)V

    iput-object v0, p0, Lcom/google/common/collect/e0;->n:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method f(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0;->j:Lcom/google/common/base/e;

    invoke-virtual {v0, p1}, Lcom/google/common/base/e;->e(Ljava/lang/Object;)I

    move-result p1

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/e0;->j(I)I

    move-result p1

    return p1
.end method

.method final g(I)[Lcom/google/common/collect/e0$n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/collect/e0$n<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    .line 1
    new-array p1, p1, [Lcom/google/common/collect/e0$n;

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e0;->f(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/e0;->k(I)Lcom/google/common/collect/e0$n;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/e0$n;->h(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h(Lcom/google/common/collect/e0$i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/collect/e0$i;->c()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/e0;->k(I)Lcom/google/common/collect/e0$n;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/e0$n;->u(Lcom/google/common/collect/e0$i;I)Z

    return-void
.end method

.method i(Lcom/google/common/collect/e0$b0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0$b0<",
            "TK;TV;TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/collect/e0$b0;->a()Lcom/google/common/collect/e0$i;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/common/collect/e0$i;->c()I

    move-result v1

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/common/collect/e0;->k(I)Lcom/google/common/collect/e0$n;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/e0$i;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/common/collect/e0$n;->v(Ljava/lang/Object;ILcom/google/common/collect/e0$b0;)Z

    return-void
.end method

.method public isEmpty()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0;->h:[Lcom/google/common/collect/e0$n;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    const/4 v4, 0x0

    .line 2
    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_1

    .line 3
    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/collect/e0$n;->g:I

    if-eqz v7, :cond_0

    return v3

    .line 4
    :cond_0
    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/collect/e0$n;->h:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    cmp-long v7, v5, v1

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    .line 5
    :goto_1
    array-length v8, v0

    if-ge v7, v8, :cond_3

    .line 6
    aget-object v8, v0, v7

    iget v8, v8, Lcom/google/common/collect/e0$n;->g:I

    if-eqz v8, :cond_2

    return v3

    .line 7
    :cond_2
    aget-object v8, v0, v7

    iget v8, v8, Lcom/google/common/collect/e0$n;->h:I

    int-to-long v8, v8

    sub-long/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    cmp-long v0, v5, v1

    if-nez v0, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3

    :cond_5
    return v4
.end method

.method k(I)Lcom/google/common/collect/e0$n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/e0$n<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0;->h:[Lcom/google/common/collect/e0$n;

    iget v1, p0, Lcom/google/common/collect/e0;->g:I

    ushr-int/2addr p1, v1

    iget v1, p0, Lcom/google/common/collect/e0;->f:I

    and-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0;->l:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/collect/e0$l;

    invoke-direct {v0, p0}, Lcom/google/common/collect/e0$l;-><init>(Lcom/google/common/collect/e0;)V

    iput-object v0, p0, Lcom/google/common/collect/e0;->l:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method n()Lcom/google/common/base/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0;->k:Lcom/google/common/collect/e0$j;

    invoke-interface {v0}, Lcom/google/common/collect/e0$j;->c()Lcom/google/common/collect/e0$p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/e0$p;->defaultEquivalence()Lcom/google/common/base/e;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e0;->f(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/collect/e0;->k(I)Lcom/google/common/collect/e0$n;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/e0$n;->t(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/e0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e0;->f(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/collect/e0;->k(I)Lcom/google/common/collect/e0$n;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/e0$n;->t(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e0;->f(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/e0;->k(I)Lcom/google/common/collect/e0$n;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/e0$n;->w(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e0;->f(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/collect/e0;->k(I)Lcom/google/common/collect/e0$n;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/e0$n;->x(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e0;->f(Ljava/lang/Object;)I

    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/common/collect/e0;->k(I)Lcom/google/common/collect/e0$n;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/e0$n;->z(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e0;->f(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/collect/e0;->k(I)Lcom/google/common/collect/e0$n;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/collect/e0$n;->A(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0;->h:[Lcom/google/common/collect/e0$n;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 3
    aget-object v4, v0, v3

    iget v4, v4, Lcom/google/common/collect/e0$n;->g:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1, v2}, Lg/f/b/b/a;->b(J)I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0;->m:Ljava/util/Collection;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/collect/e0$v;

    invoke-direct {v0, p0}, Lcom/google/common/collect/e0$v;-><init>(Lcom/google/common/collect/e0;)V

    iput-object v0, p0, Lcom/google/common/collect/e0;->m:Ljava/util/Collection;

    :goto_0
    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/common/collect/e0$o;

    iget-object v0, p0, Lcom/google/common/collect/e0;->k:Lcom/google/common/collect/e0$j;

    .line 2
    invoke-interface {v0}, Lcom/google/common/collect/e0$j;->b()Lcom/google/common/collect/e0$p;

    move-result-object v1

    iget-object v0, p0, Lcom/google/common/collect/e0;->k:Lcom/google/common/collect/e0$j;

    .line 3
    invoke-interface {v0}, Lcom/google/common/collect/e0$j;->c()Lcom/google/common/collect/e0$p;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/e0;->j:Lcom/google/common/base/e;

    iget-object v0, p0, Lcom/google/common/collect/e0;->k:Lcom/google/common/collect/e0$j;

    .line 4
    invoke-interface {v0}, Lcom/google/common/collect/e0$j;->c()Lcom/google/common/collect/e0$p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/e0$p;->defaultEquivalence()Lcom/google/common/base/e;

    move-result-object v4

    iget v5, p0, Lcom/google/common/collect/e0;->i:I

    move-object v0, v7

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/common/collect/e0$o;-><init>(Lcom/google/common/collect/e0$p;Lcom/google/common/collect/e0$p;Lcom/google/common/base/e;Lcom/google/common/base/e;ILjava/util/concurrent/ConcurrentMap;)V

    return-object v7
.end method
